# ROS Commands

## Build packages in workspace

```bash
cd ~/catkin_ws
catkin_make
```

## Create packages

This creates `~/catkin_ws/src/new_package_name` and initialize it with
a `/src` directory and the files: `CMakeLists.txt` and `package.xml`.

```bash
cd ~/catkin_ws/src
catkin_create_pkg new_package_name rospy  [dependent packages]
```

## Running a program in a package

```bash
rosrun PACKAGE_NAME PROGRAM_NAME [ARGS]
```

## ROS rospy_tutorials

The *rospy_tutorials* are installed with the ros-kinetic-desktop package.

Start a talker and a listener:

```bash
rosrun rospy_tutorials talker

rosrun rospy_tutorials listener

rostopic echo chatter
```

Examine the graph amd messages:

```bash
rqt_graph

rqt_console

rqt   # (and select topic monitor)
```


## ROS Setup Debugging
```bash
rqtwtf
roswtf yourfile.launch
```

## ROS Utilities
```bash
rqt
rqt_graph
rqt_console
rqt_logger_level
rqt_plot

roslaunch [package] [filename.launch]
```

## ROS Nodes
```bash
rosnode list
rosnode info
rosrun [package_name] [node_name]
rosnode ping [node_name]
rosnode cleanup
```

## ROS Topics
```bash
rostopic list              print information about active topics
rostopic hz topic_name     display publishing rate of topic    
rostopic bw topic_name     display bandwidth used by topic
rostopic pub topic_name    publish data to topic
rostopic echo topic_name   print messages to screen
rostopic type topic_name   print topic type
```

## ROS Services
```bash
rosservice list                print information about active services
rosservice call service_name   call the service with the provided args
rosservice type service_name   print service type
rosservice find service_name   find services by service type
rosservice uri service_name    print service ROSRPC uri
```

## ROS Parameters
```bash
rosparam list                  list parameter names
rosparam set param_name value  set parameter
rosparam get param_name        get parameter
rosparam load file_name        load parameters from file
rosparam dump file_name        dump parameters to file
rosparam delete param_name     delete parameter
```

## ROS *msg* and *srv* Files
```bash
rosmsg show     Show message description
rosmsg list     List all messages
rosmsg md5      Display message md5sum
rosmsg package  List messages in a package
rosmsg packages List packages that contain messages

rossrv show [service type]
```

## ROS Filesystem
```bash
roscd [locationname[/subdir]]
rosls [locationname[/subdir]]
rospack find [package_name]
```

