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
git clone https://github.com/cjs0818/jackal_ros.git
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
<hostPC> ./03_docker_exec.sh jackal_os1-rosmaster
```

# Inside docker

## Change to the shared folder (shared with host PC)
```
root:/# cd ~/Shared_folder
```

## Launch jackal_L8_4_gazebo.launch
```
root:/# ./run01_jackal_L8_4_gazebo.sh
```
If you want to use 3D lidar (Ouster OS1) then set JACKAL_LASER_MODEL in the run01_jackal_L8_4_gazebo.sh as "os1-xx" like
```
export JACKAL_LASER_MODEL="os1-xx"    # otherwise (2D lidar) "lms1xx"
```

## Perform jackal navigation 
```
root:/# ./run02_jackal_L8_4_navigation.sh   
```

## Launch rviz
```
root:/# ./run03_jackal_L8_4_rviz.sh   
```

## os1_world.launch
```
root:/* ./run21_ouster_description.sh
```
