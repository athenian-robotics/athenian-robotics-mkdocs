# ROS Installation 

* Ubuntu Kinetic ROS installation instructions are [here](http://wiki.ros.org/kinetic/Installation/Ubuntu).
* A good tutorial is [here](http://wiki.ros.org/ROS/Tutorials).
* Some ROS demos are [here](https://github.com/athenian-robotics/ros-demos).

## ROS Environment Variables

!!! note "The *~/.bashrc* file should contain"

    ```bash
    source /opt/ros/kinetic/setup.bash
    source ~/catkin_ws/devel/setup.bash
    
    export TURTLEBOT3_MODEL=burger
    
    export ROS_HOSTNAME=machine1.local
    export ROS_MASTER_URI=http://machine2:11311
    ```

## ROS on Ubuntu

Installation instructions are [here](http://wiki.ros.org/kinetic/Installation/Ubuntu)

Install *ros-kinetic-desktop* in order to get rospy_tutorials.

!!! note "After installing *ros-kinetic-desktop* initialize `rosdep`"

    ```bash
    sudo rosdep init
    rosdep update
    ```

!!! note "Install dependencies for building packages"

    ```bash
    sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
    ```

## ROS on Raspi

Use Ubuntu MATE, not Raspbian.

Download Ubuntu MATE 16.04.2 from [here](https://ubuntu-mate.org/download/)

## ROS on Jetson TX2

!!! warning "If `sudo rosdep init` returns an error about a website being down"

    ```bash
    sudo c_rehash /etc/ss/certs
    ```
 
## ROS on Docker

!!! info "Run *roscore*"

    ```bash
    docker run -it --rm  -p11311:11311  ros roscore
    ```





