# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "christiauto_robaldo: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ichristiauto_robaldo:/home/robot/catkin_ws/src/christiauto_robaldo/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(christiauto_robaldo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg" NAME_WE)
add_custom_target(_christiauto_robaldo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "christiauto_robaldo" "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg" ""
)

get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg" NAME_WE)
add_custom_target(_christiauto_robaldo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "christiauto_robaldo" "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg" NAME_WE)
add_custom_target(_christiauto_robaldo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "christiauto_robaldo" "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_cpp(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_cpp(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/christiauto_robaldo
)

### Generating Services

### Generating Module File
_generate_module_cpp(christiauto_robaldo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/christiauto_robaldo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(christiauto_robaldo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(christiauto_robaldo_generate_messages christiauto_robaldo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_cpp _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_cpp _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_cpp _christiauto_robaldo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(christiauto_robaldo_gencpp)
add_dependencies(christiauto_robaldo_gencpp christiauto_robaldo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS christiauto_robaldo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_eus(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_eus(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/christiauto_robaldo
)

### Generating Services

### Generating Module File
_generate_module_eus(christiauto_robaldo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/christiauto_robaldo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(christiauto_robaldo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(christiauto_robaldo_generate_messages christiauto_robaldo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_eus _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_eus _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_eus _christiauto_robaldo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(christiauto_robaldo_geneus)
add_dependencies(christiauto_robaldo_geneus christiauto_robaldo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS christiauto_robaldo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_lisp(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_lisp(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/christiauto_robaldo
)

### Generating Services

### Generating Module File
_generate_module_lisp(christiauto_robaldo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/christiauto_robaldo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(christiauto_robaldo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(christiauto_robaldo_generate_messages christiauto_robaldo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_lisp _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_lisp _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_lisp _christiauto_robaldo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(christiauto_robaldo_genlisp)
add_dependencies(christiauto_robaldo_genlisp christiauto_robaldo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS christiauto_robaldo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_nodejs(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_nodejs(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/christiauto_robaldo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(christiauto_robaldo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/christiauto_robaldo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(christiauto_robaldo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(christiauto_robaldo_generate_messages christiauto_robaldo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_nodejs _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_nodejs _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_nodejs _christiauto_robaldo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(christiauto_robaldo_gennodejs)
add_dependencies(christiauto_robaldo_gennodejs christiauto_robaldo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS christiauto_robaldo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_py(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/christiauto_robaldo
)
_generate_msg_py(christiauto_robaldo
  "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/christiauto_robaldo
)

### Generating Services

### Generating Module File
_generate_module_py(christiauto_robaldo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/christiauto_robaldo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(christiauto_robaldo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(christiauto_robaldo_generate_messages christiauto_robaldo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/BallState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_py _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/PIDInfo.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_py _christiauto_robaldo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/christiauto_robaldo/msg/RobotState.msg" NAME_WE)
add_dependencies(christiauto_robaldo_generate_messages_py _christiauto_robaldo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(christiauto_robaldo_genpy)
add_dependencies(christiauto_robaldo_genpy christiauto_robaldo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS christiauto_robaldo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/christiauto_robaldo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/christiauto_robaldo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(christiauto_robaldo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(christiauto_robaldo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/christiauto_robaldo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/christiauto_robaldo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(christiauto_robaldo_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(christiauto_robaldo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/christiauto_robaldo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/christiauto_robaldo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(christiauto_robaldo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(christiauto_robaldo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/christiauto_robaldo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/christiauto_robaldo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(christiauto_robaldo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(christiauto_robaldo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/christiauto_robaldo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/christiauto_robaldo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/christiauto_robaldo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(christiauto_robaldo_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(christiauto_robaldo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
