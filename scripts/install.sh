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
set -o verbose


. /opt/ros/${ROS_DISTRO}/setup.sh
#. /opt/cartographer_ros/setup.sh

# Create a new workspace in 'catkin_ws'
mkdir -p ~/catkin_ws/src


# wstool init, merge, and update
#cd catkin_ws/src
#wstool init
#wstool merge ~~~ ~~~.rosinstall
#wstool update


#------  git clone ~~~
cd ~/catkin_ws/src
git clone http://github.com/jackal/jackal_cartographer_navigation.git
git clone https://github.com/jackal/jackal_desktop.git
cp -R /jackal_ros/jackal_teleop ~/catkin_ws/src/
cd ..
rosdep install --from-paths src --ignore-src --rosdistro=$ROS_DISTRO -y

#------  build
cd ~/catkin_ws
catkin_make

echo ". ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
. ~/catkin_ws/devel/setup.sh



# Build, install, and test.
#
# It's necessary to use the '--install' flag for every call to
# 'catkin_make_isolated' in order to avoid the use of 'devel_isolated' as the
# 'CMAKE_INSTALL_PREFIX' for non-test targets. This in itself is important to
# avoid any issues caused by using 'CMAKE_INSTALL_PREFIX' during the
# configuration phase of the build (e.g. cartographer/common/config.h.cmake).

#export BUILD_FLAGS="--use-ninja --install-space /opt/cartographer_ros --install"
#catkin_make_isolated ${BUILD_FLAGS} $@


catkin_make
