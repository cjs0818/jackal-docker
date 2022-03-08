#!/bin/bash

# Copyright 2016 The Cartographer Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -o errexit

#source "/opt/ros/${ROS_DISTRO}/setup.bash"
#source "/opt/cartographer_ros/setup.bash"

#chmod +x /opt/ros/${ROS_DISTRO}/setup.bash
#chmod +x /opt/cartographer_ros/setup.bash

echo "#---------------------------------" >> ~/.bashrc
echo ". /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
#echo ". /opt/cartographer_ros/setup.bash" >> ~/.bashrc
echo ". ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
#echo "export TURTLEBOT3_MODEL=waffle" >> ~/.bashrc
echo "export GAZEBO_MODEL_PATH=~/Shared_folder/KIST_map/models" >> ~/.bashrc
echo " " >> ~/.bashrc

echo "#---------------------------------" >> ~/.bashrc
echo "# Utils" >> ~/.bashrc
echo "alias so='source ~/.bashrc'" >> ~/.bashrc # OK
echo "alias ll='ls -al'" >> ~/.bashrc  # OK

echo "export SF_DIR=~/Shared_folder" >> ~/.bashrc # OK

exec "$@"
