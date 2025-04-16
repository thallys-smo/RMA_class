# Here you can config commands when the container is inicialized

#!/bin/bash

set -e
source /opt/ros/noetic/setup.bash
# source /opt/ros/noetic/setup.zsh
# echo "Provided arguments: $@"
exec $@