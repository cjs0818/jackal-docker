#!/bin/bash

. run00_prepare.sh


#---- For gazebo world: 4h floor, L8 buildig with jackal
#roslaunch jackal_gazebo jackal_world.launch config:=front_laser world_name:=/root/Shared_folder/worlds/L8_4_gazebo.world
#roslaunch $SF_DIR/launch/$GZ_LAUNCH_FILE world_name:=$SF_DIR/worlds/$GZ_WORLD_FILE laser_model:=$JACKAL_LASER_3D_MODEL x_pos:=-8.5 y_pos:=7.7 z_pos:=1.0 yaw:=0

# For using os1-xx 3D lidar & roas.urdf.xacro ->  config:=roas
roslaunch jackal_gazebo $GZ_LAUNCH_FILE config:=roas points_to_scan:=true world_name:=$SF_DIR/worlds/$GZ_WORLD_FILE x_pos:=-8.5 y_pos:=7.7 z_pos:=1.0 yaw:=0
	# For using lms1xx 2D lidar instead of os1-xx & roas.urdf.xacro  -> config:=front_laser
	#roslaunch jackal_gazebo jackal_world.launch config:=front_laser world_name:=$SF_DIR/worlds/$GZ_WORLD_FILE x_pos:=-8.5 y_pos:=7.7 z_pos:=1.0 yaw:=0



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
