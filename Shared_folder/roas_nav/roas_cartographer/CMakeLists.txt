cmake_minimum_required(VERSION 2.8.3)
project(roas_cartographer)

find_package(catkin REQUIRED COMPONENTS 
  cartographer_ros 
  move_base
)

catkin_package()

install(
  DIRECTORY config launch rviz urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
