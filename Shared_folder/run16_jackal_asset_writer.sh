. run00_prepare.sh


#---- For asset_writer
roslaunch cartographer_ros assets_writer_${MY_ROBOT}.launch bag_filenames:=$BASE_DIR/$BAG_FILE pose_graph_filename:=$BASE_DIR/$BAG_FILE.pbstream

