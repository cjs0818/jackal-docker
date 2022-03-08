. run00_prepare.sh

#cp $SF_DIR/jackal_viz/rviz/navigation.rviz `rospack find jackal_viz`/rviz/

#---- For viewing rviz
#roslaunch jackal_viz view_robot.launch config:=localization
roslaunch jackal_viz view_robot.launch config:=navigation
