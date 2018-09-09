# Installing ROS on an EV3 

* Flash an SD card with an [ev3dev-stretch](https://oss.jfrog.org/list/oss-snapshot-local/org/ev3dev/brickstrap/) image
* Boot it
* Connect the EV3 to the Internet
* Connect to the EV3 with: `ssh robot@ev3dev` (password: maker)

Add these statements to the bottom of `~/.bashrc`:
```bash
source ~/catkin_ws/devel/setup.bash
export ROS_HOSTNAME=ev3dev
export ROS_MASTER_URI=http://machine1:11311   # where machine1 is the name of the machine running roscore
```

Install ROS with:

```bash
sudo apt update
sudo apt upgrade
sudo apt install ros-robot-python-dev
sudo rosdep init
rosdep update
```
(The ros.org [instructions](http://wiki.ros.org/kinetic/Installation/Debian) do not work for the ev3dev distro.)


Setup your ROS workspace with:

```bash
mkdir ~/catkin_ws
cd ~/catkin_ws
mkdir src
catkin_make
source ~/.bashrc
```

Install the ROS tutorials with:

```bash
cd ~/catkin_ws/src
git clone https://github.com/ros/ros_tutorials.git
sudo apt-get install qtbase5-dev
```

