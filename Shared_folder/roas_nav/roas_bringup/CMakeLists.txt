cmake_minimum_required(VERSION 2.8.3)
project(roas_bringup)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)

catkin_package()

install(
  DIRECTORY launch meshes rules scripts urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(auto_clear_costmap_node scripts/auto_clear_costmap_node.cpp)
target_link_libraries(auto_clear_costmap_node ${catkin_LIBRARIES})

