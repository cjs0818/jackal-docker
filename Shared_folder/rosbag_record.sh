#rosbag record -e "/scan" -e "/imu" -e "/odom" -O turtlebot3_house.bag
#rosbag record -e "/os1_cloud_node/points" -e "/os1_cloud_node/imu" -e "/front/scan" -O jackal_L8_4.bag
rosbag record -e "/os1_cloud_node/points" -e "/os1_cloud_node/imu" -e "/imu/data" -e "/jackal_velocity_controller/odom" -O jackal_L8_4.bag
