#!/bin/bash
set -e

source /scripts/prepare_catkin_workspace.sh 
source /scripts/install_debs.sh

#source /scripts/create_catkin_workspace.bash
#source /scripts/install_ros_dependencies.bash

source /scripts/install_ouster_example_fork.bash
source /scripts/install_google_cartographer.bash
