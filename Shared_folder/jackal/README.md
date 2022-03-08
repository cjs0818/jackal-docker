jackal
======

Common packages for Jackal, including messages and robot description. These are packages relevant
to all Jackal workspaces, whether simulation, desktop, or on the robot's own headless PC.




# Install Docker
* https://docs.docker.com/engine/install/ubuntu/

```
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo pkill -SIGHUP dockerd
```
## Remove ‘sudo’ when docker build & run

To create the `docker` group and add your user:

1. Create the `docker` group.
```
sudo groupadd docker
```

2. Add your user to the `docker` group.
```
sudo usermod -aG docker $USER
```

3. Log out and log back in so that your group membership is re-evaluated.
    
    If testing on a virtual machine, it may be necessary to restart the virtual machine for changes to take effect.
    
    On a desktop Linux environment such as X Windows, log out of your session completely and then log back in.
    
    On Linux, you can also run the following command to activate the changes to groups:
    
```
newgrp docker
```


# Download sources
```
git clone https://github.com/cjs0818/cartographer_ros.git
```




# CJS's docker build & run

## Docker build
```
<hostPC> ./01_docker_build.sh
```

## Docker run
```
<hostPC> ./02_docker_run.sh
```
After launching 02_docker_run.sh, use '03_docker_exec.sh' for an additional terminal
```
<hostPC> ./03_docker_exec.sh jackal-rosmaster
```

# Inside docker

## Change to the shared folder (shared with host PC)
```
root:/# cd ~/Shared_folder
```

# Jackal Navigation

## jackal gazebo simulation: run01_jackal_L8_4_gazebo.sh
```
root:/# ./run01_jackal_L8_4_gazebo.sh
```

## jackal naviagtion (amcl) given map file (L8_4.yaml & L8_4.pgm)
Attach 2nd docker termnial with the command ```<hostPC> ./03_docker_exec_sh jackal-rosmaster```, and in the 2nd terminal inside docker,
```
root:/# ./run02_jackal_L8_4_navigation.sh
```

## rviz gui for the above navigation
Attach 3rd docker termnial with the command ```<hostPC> ./03_docker_exec_sh jackal-rosmaster```, and in the 3rd terminal inside docker,
```
root:/# ./run03_jackal_L8_4_rviz.sh 
```


# Jackal cartographer slam

## Perform the cartographer slam
```
root:/# ./run11_carto_demo.sh   ## roslaunch cartographer_ros demo_$MY_ROBOT.launch bag_filenames:=$BASE_DIR/$BAG_FILE ...
```

## [Option] Perform online slam with gazebo & rviz
```
root:/# ./run12_carto_online.sh
```

## Build pbstream using offline cartographer
```
root:/# ./run13_carto_pbstream.sh
```

## Convert the generated pbstream to ROS map files (pgm & yaml)
```
root:/# ./run15_carto_to_ros_map.sh
```
It is like
```
root:/# rosrun cartographer_ros cartographer_pbstream_to_ros_map \
       -pbstream_filename=$BASE_DIR/$BAG_FILE.pbstream \
       -map_filestem=$BASE_DIR/KIST_map/ros_map
```

## To create KIST L8_4 map
```
root:/# cd ~/Shared_folder
root:/# ./run01_jackal_L8_4_gazebo.sh
```
Attach 2nd docker termnial with the command ```<hostPC> ./03_docker_exec_sh jackal-rosmaster```, and in the 2nd terminal inside docker,
```
root:/# roslaunch jackal_teleop jackal_teleop_key.launch
```
Attach 3rd docker termnial with the command ```<hostPC> ./03_docker_exec_sh jackal-rosmaster```, and in the 3rd terminal inside docker,
[Under implementation]: jackal_slam package needs to be implemented based on turtlebot3_slam
```
root:/# roslaunch jackal_slam jackal_slam slam_methods:cartographer
```
After making enough exploration by keyboard, you can build a map with the 4th docker terminal ```<hostPC> ./03_docker_exec_sh jackal-rosmaster```
```
root:/# rosrun map_server map_saver ~/Shared_folder/KIST_map/map
```


#
#
# Cartographer ROS Integration

|build| |docs| |license|

Purpose
=======

`Cartographer`_ is a system that provides real-time simultaneous localization
and mapping (`SLAM`_) in 2D and 3D across multiple platforms and sensor
configurations. This project provides Cartographer's ROS integration.

.. _Cartographer: https://github.com/cartographer-project/cartographer
.. _SLAM: https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping

Getting started
===============

* Learn to use Cartographer with ROS at `our Read the Docs site`_.
* You can ask a question by `creating an issue`_.

.. _our Read the Docs site: https://google-cartographer-ros.readthedocs.io
.. _creating an issue: https://github.com/cartographer-project/cartographer_ros/issues/new?labels=question

Contributing
============

You can find information about contributing to Cartographer's ROS integration
at `our Contribution page`_.

.. _our Contribution page: https://github.com/cartographer-project/cartographer_ros/blob/master/CONTRIBUTING.md

.. |build| image:: https://travis-ci.org/cartographer-project/cartographer_ros.svg?branch=master
    :alt: Build Status
    :scale: 100%
    :target: https://travis-ci.org/cartographer-project/cartographer_ros
.. |docs| image:: https://readthedocs.org/projects/google-cartographer-ros/badge/?version=latest
    :alt: Documentation Status
    :scale: 100%
    :target: https://google-cartographer-ros.readthedocs.io/en/latest/?badge=latest
.. |license| image:: https://img.shields.io/badge/License-Apache%202.0-blue.svg
     :alt: Apache 2 license.
     :scale: 100%
     :target: https://github.com/cartographer-project/cartographer_ros/blob/master/LICENSE

