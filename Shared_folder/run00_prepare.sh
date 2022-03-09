#!/bin/bash

export SF_DIR=~/Shared_folder
export GZ_LAUNCH_FILE=jackal_world.launch
export GZ_WORLD_FILE=L8_4_gazebo.world

export CARTO_DIR=/opt/ros/$ROS_DISTRO/share/cartographer_ros

#export JACKAL_LASER_MODEL="lms1xx"
#export JACKAL_LASER_MODEL="os1-xx"

#export JACKAL_LASER_3D=1
#export JACKAL_LASER_3D_MODEL="os1-xx"


export MY_ROBOT=jackal_3d
export BASE_DIR=/root/Shared_folder
export BAG_FILE=jackal_L8_4.bag
export MAP_FILESTEM=jackal_L8_4

# Shared_folder directory of host computer
export BASE_DIR_host=$HOME/work/Docker/jackal-docker/Shared_folder


#----- Gazebo config.yaml
sudo cp $SF_DIR/gazebo_config/config.yaml ~/.ignition/fuel/

#----- jackal_control control.yaml
sudo cp $SF_DIR/jackal_control/config/control.yaml `rospack find jackal_control`/config/

#----- Modification in jackal_description
# urdf, urdf/configs, urdf/include ...
sudo cp -R $SF_DIR/jackal_description/* `rospack find jackal_description`/


#----- Modification in jackal_navigation
# amcl_demo.launch for navigation
sudo cp $SF_DIR/jackal_navigation/launch/amcl_demo.launch `rospack find jackal_navigation`/launch/
sudo cp $SF_DIR/jackal_navigation/launch/include/amcl.launch `rospack find jackal_navigation`/launch/include/

# pointcloud_to_laserscan_rc.launch for 2D lidar simulation from 3D lidar
sudo cp $SF_DIR/jackal_navigation/launch/include/pointcloud_to_laserscan_rc.launch `rospack find jackal_navigation`/launch/include/

# Modification of 'inflation_raidus: 0.40 <- 0.30 in costmap_common_params.yaml
sudo cp $SF_DIR/jackal_navigation/params/costmap_common_params.yaml `rospack find jackal_navigation`/params/

# initial launch of 'map' in Fixed Frame of rviz
sudo cp $SF_DIR/jackal_viz/rviz/navigation.rviz `rospack find jackal_viz`/rviz/


#----- Modification in cartographer_ros
# For cartographer map_building & localization only
cp $SF_DIR/cartographer_ros/launch/$MY_ROBOT.launch $CARTO_DIR/launch/
cp $SF_DIR/cartographer_ros/launch/demo_${MY_ROBOT}.launch $CARTO_DIR/launch/
cp $SF_DIR/cartographer_ros/launch/demo_${MY_ROBOT}_online.launch $CARTO_DIR/launch/
cp $SF_DIR/cartographer_ros/launch/demo_${MY_ROBOT}_localization.launch $CARTO_DIR/launch/
cp $SF_DIR/cartographer_ros/urdf/$MY_ROBOT.urdf $CARTO_DIR/urdf/
cp $SF_DIR/cartographer_ros/launch/offline_$MY_ROBOT.launch $CARTO_DIR/launch/
cp $SF_DIR/cartographer_ros/launch/offline_node.launch $CARTO_DIR/launch/
cp $SF_DIR/cartographer_ros/launch/nav_${MY_ROBOT}_localization.launch $CARTO_DIR/launch/

cp $SF_DIR/cartographer_ros/configuration_files/$MY_ROBOT.lua $CARTO_DIR/configuration_files/
cp $SF_DIR/cartographer_ros/configuration_files/${MY_ROBOT}_localization.lua $CARTO_DIR/configuration_files/
cp $SF_DIR/cartographer_ros/configuration_files/$MY_ROBOT.rviz $CARTO_DIR/configuration_files/

#----- Modification in jackal_gazebo
# jackal_world.launch
cp $SF_DIR/jackal_gazebo/launch/$GZ_LAUNCH_FILE `rospack find jackal_gazebo`/launch/


#----- Modification in roas software
# For roas_cartographer
#cp -R $SF_DIR/roas_nav/roas_cartographer $HOME/catkin_ws/src/

# assets_writer: from pbstream/bag_filenames xray png files (xy, xz, yz)
cp $SF_DIR/cartographer_ros/launch/assets_writer_${MY_ROBOT}.launch $CARTO_DIR/launch/
cp $SF_DIR/cartographer_ros/configuration_files/assets_writer_${MY_ROBOT}.lua $CARTO_DIR/configuration_files/


