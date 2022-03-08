cp -R roas_nav $/HOME/catkin_ws/src


#--  Cartographer SLAM with rosbag file
#roslaunch $SF_DIR/roas_cartographer/launch/cartographer_3d.launch bag_filenames:=$BASE_DIR/$BAG_FILE
#roslaunch $SF_DIR/roas_cartographer/launch/offline_3d.launch bag_filenames:=$BASE_DIR/$BAG_FILE
#roslaunch $SF_DIR/roas_cartographer/launch/cartographer_2d.launch

#roslaunch cartographer_ros demo_$MY_ROBOT.launch use_bag_file:=false
roslaunch cartographer_ros demo_$MY_ROBOT.launch bag_filename:=$BASE_DIR/$BAG_FILE config:=roas
#roslaunch cartographer_ros offline_$MY_ROBOT.launch bag_filenames:=$BASE_DIR/$BAG_FILE
#roslaunch cartographer_ros demo_${MY_ROBOT}_localization.launch \
#          load_state_filename:=$BASE_DIR/$BAG_FILE.pbstream \
#          bag_filename:=$BASE_DIR/$BAG_FILE



#--  Convert from pbstream to pgm & yaml 
#rosrun cartographer_ros cartographer_pbstream_to_ros_map \
#       -pbstream_filename=$BAG_FILE.pbstream \
#       -map_filestem=$MAP_FILESTEM

#--  Navigation using pgm & yaml
#roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$BASE_DIR_local/$MAP_FILESTEM.yaml

