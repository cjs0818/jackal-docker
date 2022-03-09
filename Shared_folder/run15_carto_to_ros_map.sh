. run00_prepare.sh

export BASE_DIR=/root/Shared_folder

export BAG_FILE=jackal_L8_4.bag
export ROS_MAP=ros_map

#export BAG_FILE=testmap
#export ROS_MAP=testmap


#--  Convert from pbstream to pgm & yaml 
rosrun cartographer_ros cartographer_pbstream_to_ros_map \
       -pbstream_filename=$BASE_DIR/$BAG_FILE.pbstream \
       -map_filestem=$BASE_DIR/KIST_map/$ROS_MAP

