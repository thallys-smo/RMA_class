# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ROS/ros_ws/src/exercicio_2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ROS/ros_ws/build/exercicio_2

# Utility rule file for exercicio_2_generate_messages_py.

# Include the progress variables for this target.
include CMakeFiles/exercicio_2_generate_messages_py.dir/progress.make

CMakeFiles/exercicio_2_generate_messages_py: /home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv/_AddTwoInts.py
CMakeFiles/exercicio_2_generate_messages_py: /home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv/__init__.py


/home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv/_AddTwoInts.py: /opt/ros/noetic/lib/genpy/gensrv_py.py
/home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv/_AddTwoInts.py: /home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ROS/ros_ws/build/exercicio_2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python code from SRV exercicio_2/AddTwoInts"
	catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/genpy/cmake/../../../lib/genpy/gensrv_py.py /home/ROS/ros_ws/src/exercicio_2/srv/AddTwoInts.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p exercicio_2 -o /home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv

/home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv/__init__.py: /opt/ros/noetic/lib/genpy/genmsg_py.py
/home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv/__init__.py: /home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv/_AddTwoInts.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ROS/ros_ws/build/exercicio_2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python srv __init__.py for exercicio_2"
	catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv --initpy

exercicio_2_generate_messages_py: CMakeFiles/exercicio_2_generate_messages_py
exercicio_2_generate_messages_py: /home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv/_AddTwoInts.py
exercicio_2_generate_messages_py: /home/ROS/ros_ws/devel/.private/exercicio_2/lib/python3/dist-packages/exercicio_2/srv/__init__.py
exercicio_2_generate_messages_py: CMakeFiles/exercicio_2_generate_messages_py.dir/build.make

.PHONY : exercicio_2_generate_messages_py

# Rule to build all files generated by this target.
CMakeFiles/exercicio_2_generate_messages_py.dir/build: exercicio_2_generate_messages_py

.PHONY : CMakeFiles/exercicio_2_generate_messages_py.dir/build

CMakeFiles/exercicio_2_generate_messages_py.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exercicio_2_generate_messages_py.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exercicio_2_generate_messages_py.dir/clean

CMakeFiles/exercicio_2_generate_messages_py.dir/depend:
	cd /home/ROS/ros_ws/build/exercicio_2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ROS/ros_ws/src/exercicio_2 /home/ROS/ros_ws/src/exercicio_2 /home/ROS/ros_ws/build/exercicio_2 /home/ROS/ros_ws/build/exercicio_2 /home/ROS/ros_ws/build/exercicio_2/CMakeFiles/exercicio_2_generate_messages_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exercicio_2_generate_messages_py.dir/depend

