# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "exercicio_2: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(exercicio_2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_exercicio_2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exercicio_2" "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(exercicio_2
  "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercicio_2
)

### Generating Module File
_generate_module_cpp(exercicio_2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercicio_2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(exercicio_2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(exercicio_2_generate_messages exercicio_2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(exercicio_2_generate_messages_cpp _exercicio_2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercicio_2_gencpp)
add_dependencies(exercicio_2_gencpp exercicio_2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercicio_2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(exercicio_2
  "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercicio_2
)

### Generating Module File
_generate_module_eus(exercicio_2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercicio_2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(exercicio_2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(exercicio_2_generate_messages exercicio_2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(exercicio_2_generate_messages_eus _exercicio_2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercicio_2_geneus)
add_dependencies(exercicio_2_geneus exercicio_2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercicio_2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(exercicio_2
  "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercicio_2
)

### Generating Module File
_generate_module_lisp(exercicio_2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercicio_2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(exercicio_2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(exercicio_2_generate_messages exercicio_2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(exercicio_2_generate_messages_lisp _exercicio_2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercicio_2_genlisp)
add_dependencies(exercicio_2_genlisp exercicio_2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercicio_2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(exercicio_2
  "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercicio_2
)

### Generating Module File
_generate_module_nodejs(exercicio_2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercicio_2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(exercicio_2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(exercicio_2_generate_messages exercicio_2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(exercicio_2_generate_messages_nodejs _exercicio_2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercicio_2_gennodejs)
add_dependencies(exercicio_2_gennodejs exercicio_2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercicio_2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(exercicio_2
  "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercicio_2
)

### Generating Module File
_generate_module_py(exercicio_2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercicio_2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(exercicio_2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(exercicio_2_generate_messages exercicio_2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(exercicio_2_generate_messages_py _exercicio_2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercicio_2_genpy)
add_dependencies(exercicio_2_genpy exercicio_2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercicio_2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercicio_2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercicio_2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(exercicio_2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercicio_2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercicio_2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(exercicio_2_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercicio_2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercicio_2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(exercicio_2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercicio_2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercicio_2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(exercicio_2_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercicio_2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercicio_2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercicio_2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(exercicio_2_generate_messages_py std_msgs_generate_messages_py)
endif()
