export SF_DIR=~/Shared_folder
export GZ_LAUNCH_FILE=turtlebot3_L8_4_gazebo.launch
export GZ_WORLD_FILE=L8_4_gazebo.world

export MY_ROBOT=my_robot
export CARTO_DIR=/opt/cartographer_ros/share/cartographer_ros



#---- For navigation
#roslaunch jackal_navigation amcl_demo.launch map_file:=$SF_DIR/KIST_map/map.yaml
roslaunch jackal_navigation amcl_demo.launch map_file:=$SF_DIR/KIST_map/L8_4.yaml
#roslaunch jackal_navigation amcl_demo.launch map_file:=$SF_DIR/KIST_map/ros_map.yaml



