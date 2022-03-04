#!/bin/bash

export SF_DIR=~/Shared_folder
export GZ_LAUNCH_FILE=jackal_world.launch
export GZ_WORLD_FILE=L8_4_gazebo.world

export MY_ROBOT=my_robot
export CARTO_DIR="/opt/cartographer_ros/share/cartographer_ros"

#export JACKAL_LASER_MODEL="lms1xx"
#export JACKAL_LASER_MODEL="os1-xx"

export JACKAL_LASER_3D=1
export JACKAL_LASER_3D_MODEL="os1-xx"


sudo cp $SF_DIR/jackal/jackal_description/urdf/accessories.urdf.xacro /opt/ros/$ROS_DISTRO/share/jackal_description/urdf/
sudo cp $SF_DIR/jackal/jackal_navigation/launch/include/pointcloud_to_laserscan_rc.launch /opt/ros/$ROS_DISTRO/share/jackal_navigation/launch/include/

#---- For gazebo world: 4h floor, L8 buildig with jackal
#roslaunch jackal_gazebo jackal_world.launch config:=front_laser world_name:=/root/Shared_folder/worlds/L8_4_gazebo.world
roslaunch $SF_DIR/launch/$GZ_LAUNCH_FILE world_name:=$SF_DIR/worlds/$GZ_WORLD_FILE laser_model:=$JACKAL_LASER_3D_MODEL x_pos:=-8.5 y_pos:=7.7 z_pos:=1.0 yaw:=0



#---- For jackal teleop
#roslaunch jackal_teleop jackal_teleop_key.launch 


#---- For slam with jackal
#roslaunch jackal_cartographer_navigation cartographer_demo.launch
#roslaunch jackal_viz view_robot.launch config:=localization
#---- For map viewing
#roslaunch $SF_DIR/launch/L8_4_rviz.launch


#---- For navigation
#roslaunch jackal_navigation amcl_demo.launch map_file:=$SF_DIR/KIST_map/map.yaml


#---- For viewing rviz
#roslaunch jackal_viz view_robot.launch config:=localization
