export SF_DIR=~/Shared_folder

export MY_ROBOT=jackal_3d
export CARTO_DIR=/opt/ros/melodic/share/cartographer_ros
export BASE_DIR=/root/Shared_folder
export BAG_FILE=jackal_L8_4.bag
export MAP_FILESTEM=jackal_L8_4


cp $SF_DIR/launch/assets_writer_${MY_ROBOT}.launch $CARTO_DIR/launch/
cp $SF_DIR/configuration_files/assets_writer_${MY_ROBOT}.lua $CARTO_DIR/configuration_files/

#---- For asset_writer
roslaunch cartographer_ros assets_writer_${MY_ROBOT}.launch bag_filenames:=$BASE_DIR/$BAG_FILE pose_graph_filename:=$BASE_DIR/$BAG_FILE.pbstream

