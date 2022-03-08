. run00_prepare.sh
#cp $SF_DIR/jackal_navigation/launch/amcl_demo.launch /opt/ros/melodic/share/jackal_navigation/launch/

#---- For navigation
#roslaunch jackal_navigation amcl_demo.launch map_file:=$SF_DIR/KIST_map/map.yaml
roslaunch jackal_navigation amcl_demo.launch map_file:=$SF_DIR/KIST_map/L8_4.yaml laser_min_range:=0.9 laser_max_range:=35.0 initial_pose_x:=-8.5 initial_pose_y:=7.7 initial_pose_z:=0.0
	# When changing minimum and maximum ranges of os1-xx 3d lidar, consider the followings at the same time
		#   laser_min_range & laser_max_range in run02_jackal_L8_4_navigation.sh (jackal_navigation/launch/amcl_demo.launch)
		#   min_range & max_range in <xacro:OS1-64> in jackal_description/urdf/roas.urdf.xacro (ouster_description/urdf/OS1-64.urdf.xacro)
		#   range_min & range_max in jackal_navigation/launch/include/point_to_laserscan_rc.launch


#roslaunch jackal_navigation amcl_demo.launch map_file:=$SF_DIR/KIST_map/ros_map.yaml



