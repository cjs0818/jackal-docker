# run13_carto_pbstreamsh needs to be perfored first because the same 2D or 3D cartographer posegraph (.pbstream) is required to localization only

. run00_prepare.sh




#--  Cartographer SLAM with rosbag file
#roslaunch $SF_DIR/roas_cartographer/launch/cartographer_3d.launch bag_filenames:=$BASE_DIR/$BAG_FILE
#roslaunch $SF_DIR/roas_cartographer/launch/offline_3d.launch bag_filenames:=$BASE_DIR/$BAG_FILE
#roslaunch $SF_DIR/roas_cartographer/launch/cartographer_2d.launch

#roslaunch cartographer_ros demo_$MY_ROBOT.launch use_bag_file:=false
#roslaunch cartographer_ros demo_$MY_ROBOT.launch bag_filename:=$BASE_DIR/$BAG_FILE
#roslaunch cartographer_ros offline_$MY_ROBOT.launch bag_filenames:=$BASE_DIR/$BAG_FILE


#------ Gazebo
#roslaunch jackal_gazebo $GZ_LAUNCH_FILE config:=roas points_to_scan:=true world_name:=$SF_DIR/worlds/$GZ_WORLD_FILE x_pos:=-8.5 y_pos:=7.7 z_pos:=1.0 yaw:=0

#------ Navigation
#roslaunch jackal_navigation amcl_demo.launch map_file:=$SF_DIR/KIST_map/L8_4.yaml laser_min_range:=0.9 laser_max_range:=35.0 initial_pose_x:=-8.5 initial_pose_y:=7.7 initial_pose_z:=0.0

#------ SLAM
#roslaunch cartographer_ros demo_${MY_ROBOT}_localization.launch \
#          load_state_filename:=$BASE_DIR/$BAG_FILE.pbstream \
#          bag_filename:=$BASE_DIR/$BAG_FILE

	# -- For localization with gazebo not with ros bag file
	#roslaunch cartographer_ros demo_${MY_ROBOT}_localization.launch \
	#          load_state_filename:=$BASE_DIR/$BAG_FILE.pbstream

#------ Navi & SLAM
roslaunch cartographer_ros nav_${MY_ROBOT}_localization.launch


#--  Convert from pbstream to pgm & yaml 
#rosrun cartographer_ros cartographer_pbstream_to_ros_map \
#       -pbstream_filename=$BAG_FILE.pbstream \
#       -map_filestem=$MAP_FILESTEM

#--  Navigation using pgm & yaml
#roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$BASE_DIR_local/$MAP_FILESTEM.yaml

