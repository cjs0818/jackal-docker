export SF_DIR=~/Shared_folder
export GZ_LAUNCH_FILE=turtlebot3_L8_4_gazebo.launch
export GZ_WORLD_FILE=L8_4_gazebo.world

export MY_ROBOT=my_robot
export CARTO_DIR=/opt/cartographer_ros/share/cartographer_ros



#---- For viewing rviz
#roslaunch jackal_viz view_robot.launch config:=localization
roslaunch jackal_viz view_robot.launch config:=navigation
