export SF_DIR=~/Shared_folder

cp -R $SF_DIR/roas_nav $HOME/catkin_ws/src/
sudo apt update
sudo apt install -y build-essential cmake libglfw3-dev libglew-dev libeigen3-dev \
         libjsoncpp-dev libtclap-dev libtins-dev libpcap-dev

cd $SF_DIR/roas_nav/ouster_example
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make

#cd ~/catkin_ws
#catkin_make

