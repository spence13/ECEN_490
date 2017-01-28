#!/usr/bin/env python

import time

import roslib;
import rospy
from geometry_msgs.msg import Pose2D
from std_msgs.msg import Bool
from christiauto_robaldo.msg import BallState

import numpy as np

from estimators import BallEstimator

_ball = BallEstimator()

_estimator_rate = 100

# (x, y) measured from camera
_measured = (None, None)

_last_time = time.time()

_goal_pub = None
_team_side = None

from soccerref.msg import GameState
_game_state = GameState

_estimator_on = True
_predictor_on = True

_predict_forward_seconds = (1/6.0)

def _handle_game_state(msg):
    global _game_state
    _game_state = msg

def _handle_vision_ball_position(msg):
    flip = -1 if (_team_side !='home') ^ bool(_game_state.second_half) else 1

    global _measured, _last_time
    _measured = (flip*msg.x, flip*msg.y)

    # Timestamp this msg so the ball updater knows
    # how much time elapsed since last measurement
    _last_time = time.time()

    # Was there a goal?
    if abs(msg.x) > 1.79 and (abs(msg.y) < .305):
        msg = Bool()
        msg.data = True
        _goal_pub.publish(msg)

def main():
    rospy.init_node('ball_estimator', anonymous=False)


    global _team_side
    param_name = rospy.search_param('team_side')
    _team_side = rospy.get_param(param_name, 'home')

    # Sub/Pub
    rospy.Subscriber('vision_position', Pose2D, _handle_vision_ball_position)
    rospy.Subscriber('/game_state', GameState, _handle_game_state)
    pub = rospy.Publisher('ball_state', BallState, queue_size=10)
    global _goal_pub
    _goal_pub = rospy.Publisher('goal', Bool, queue_size=10)

    global _measured

    rate = rospy.Rate(_estimator_rate)
    while not rospy.is_shutdown():

        xhat = xhat_future = _measured[0] if _measured[0] is not None else 0
        yhat = yhat_future = _measured[1] if _measured[1] is not None else 0

        if _estimator_on:
            Ts = (time.time() - _last_time)
            (xhat, yhat) = _ball.update(Ts, _measured)

        if _predictor_on:
            (xhat_future, yhat_future) = _ball.predict(_predict_forward_seconds)

        # Grab the estimated velocities of the ball
        (vx, vy) = _ball.get_velocities()

        # Construct ball_state message, BallState
        msg = BallState()
        msg.vision_x = _measured[0] if _measured[0] is not None else 0
        msg.vision_y = _measured[1] if _measured[1] is not None else 0
        msg.xhat = xhat
        msg.yhat = yhat
        msg.vx = vx
        msg.vy = vy
        msg.xhat_future = xhat_future
        msg.yhat_future = yhat_future
        msg.predict_forward_seconds = _predict_forward_seconds if _predictor_on else 0
        msg.correction = _measured[0] is not None and _measured[1] is not None
        pub.publish(msg)

        # Set measured to None so the ball updater 
        # knows to predict instead of correcting
        if _estimator_on or _predictor_on:
        	_measured = (None, None)


        rate.sleep()

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    main()