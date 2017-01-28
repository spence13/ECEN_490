
robot_radius = 4

#This function will calculate the slope of 'me' to the 
#ball and determine if any of the opponents are on that path
def need_planned_path(_me, _ball, _opp1, _opp2):
	slope = (_me.y - _ball.y) / (_me.x - _ball.x)
	opp1_intersect = abs(slope) * _opp1.x
	opp2_intersect = abs(slope) * _opp2.x
	obstacle = None

	print slope
	print opp1_intersect
	print opp2_intersect

	#Check to see if the intersection point is anywhere between the diameter of the opponent
	if (_opp1.y <= opp1_intersect+robot_radius) and (_opp1.y >= opp1_intersect-robot_radius):
		obstacle = _opp1
	elif (_opp2.y <= opp2_intersect+robot_radius) and (_opp2.y >= opp2_intersect-robot_radius):
		obstacle = _opp2
	else:
		return False

	print obstacle.name

	if (slope != 0) and ((abs(_ball.x) - abs(_me.x)) > (abs(obstacle.x) - abs(_me.x))):
		return True

	if (slope == 0) and ((abs(_ball.x) - abs(_me.x)) > (abs(obstacle.x) - abs(_me.x))):
		return True

	return False


class msg():
	def __init__(self, name, x, y, theta):
		self.name = name
		self.x = x
		self.y = y
		self.theta = theta


if __name__ == '__main__':
	_me   = msg("me", 1,4,0)
	_ball = msg("ball", 4.5,4,0)
	_opp1 = msg("opp1", 2.2,4.1,0)
	_opp2 = msg("opp2", 5,2,0)

	if need_planned_path(_me, _ball, _opp1, _opp2):
		print "path"
	else:
		print "no path"