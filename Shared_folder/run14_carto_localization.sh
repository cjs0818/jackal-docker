export MY_ROBOT=backpack_2d
export BASE_DIR=/root/Shared_folder
export BAG_FILE=b2-2016-04-05-14-44-52.bag


export MY_ROBOT=jackal_3d
export BASE_DIR_local=/home/jschoi/work/Docker/cartographer_ros/Shared_folder
export BASE_DIR=/root/Shared_folder
export BAG_FILE=jackal_L8_4.bag
export MAP_FILESTEM=jackal_L8_4

#export BASE_DIR=/root/Downloads
#export BAG_FILE=b3-2016-04-05-13-54-42.bag


export SF_DIR=~/Shared_folder
export CARTO_DIR=/opt/ros/$ROS_DISTRO/share/cartographer_ros

#export JACKAL_LASER_3D=1
#export JACKAL_LASER_3D_MODEL="os1-xx"

cd $SF_DIR

cp $SF_DIR/jackal_description/urdf/$MY_ROBOT.urdf $CARTO_DIR/urdf/
#cp -R $SF_DIR/jackal/jackal_description/urdf/accessories.urdf.xacro /opt/ros/$ROS_DISTRO/share/jackal_description/urdf/
cp -R $SF_DIR/jackal_description/* /opt/ros/$ROS_DISTRO/share/jackal_description/
cp $SF_DIR/jackal_navigation/launch/include/pointcloud_to_laserscan_rc.launch /opt/ros/$ROS_DISTRO/share/jackal_navigation/launch/include/

cp $SF_DIR/launch/$MY_ROBOT.launch $CARTO_DIR/launch/
cp $SF_DIR/launch/demo_$MY_ROBOT.launch $CARTO_DIR/launch/
cp $SF_DIR/launch/demo_${MY_ROBOT}_localization.launch $CARTO_DIR/launch/
cp $SF_DIR/launch/offline_$MY_ROBOT.launch $CARTO_DIR/launch/
cp $SF_DIR/launch/offline_node.launch $CARTO_DIR/launch/

cp $SF_DIR/configuration_files/$MY_ROBOT.lua $CARTO_DIR/configuration_files/
cp $SF_DIR/configuration_files/${MY_ROBOT}_localization.lua $CARTO_DIR/configuration_files/
cp $SF_DIR/configuration_files/$MY_ROBOT.rviz $CARTO_DIR/configuration_files/


cp -R $SF_DIR/roas_cartographer $HOME/catkin_ws/src/


#--  Cartographer SLAM with rosbag file
#roslaunch $SF_DIR/roas_cartographer/launch/cartographer_3d.launch bag_filenames:=$BASE_DIR/$BAG_FILE
#roslaunch $SF_DIR/roas_cartographer/launch/offline_3d.launch bag_filenames:=$BASE_DIR/$BAG_FILE
#roslaunch $SF_DIR/roas_cartographer/launch/cartographer_2d.launch

#roslaunch cartographer_ros demo_$MY_ROBOT.launch use_bag_file:=false
#roslaunch cartographer_ros demo_$MY_ROBOT.launch bag_filename:=$BASE_DIR/$BAG_FILE
#roslaunch cartographer_ros offline_$MY_ROBOT.launch bag_filenames:=$BASE_DIR/$BAG_FILE
roslaunch cartographer_ros demo_${MY_ROBOT}_localization.launch \
          load_state_filename:=$BASE_DIR/$BAG_FILE.pbstream \
          bag_filename:=$BASE_DIR/$BAG_FILE



#--  Convert from pbstream to pgm & yaml 
#rosrun cartographer_ros cartographer_pbstream_to_ros_map \
#       -pbstream_filename=$BAG_FILE.pbstream \
#       -map_filestem=$MAP_FILESTEM

#--  Navigation using pgm & yaml
#roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$BASE_DIR_local/$MAP_FILESTEM.yaml

