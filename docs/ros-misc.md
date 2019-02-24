# Miscellaneous ROS Notes

* [ROS metapackage enabling FRC teams to use ROS on their robots](https://github.com/uwreact/frc_control

## Creating New Packages

!!! note "Create **new_package_name**, which depends on **std_msgs** and **rospy**"

    ```bash
    cd ~/catkin_ws/src
    catkin_create_pkg new_package_name std_msgs rospy
    ```

## ROS Logging

For unknown reasons, normal Python logging is disabled after a call to `rospy.init_node()`.
ROS logging does not work before a call to `rospy.init_node()`. So use Python logging before
and Ros logging after the call to `rospy.init_node()`.


## Python Scripts

Top-level ROS Python scripts require a [*shebang*](https://en.wikipedia.org/wiki/Shebang_(Unix)) at the top of the file:
```python
#!/usr/bin/env python
```
 
## ROS Uninstall

A ROS uninstall is described [here](https://answers.ros.org/question/57213/how-i-completely-remove-all-ros-from-my-system/).

!!! note "Uninstall"

    ```bash
    sudo apt-get remove ros-*
    ```

## ROS Image Viewer

Images published to topics can be viewed with [rqt_image_vew](http://wiki.ros.org/rqt_image_view)
or the `rqt` *Image View* plugin.

!!! note "Install the necessary image transport plugins"

    ```bash
    sudo apt-get install ros-kinetic-image-transport-plugins
    ```

## ROS - OpenCV Bridge

Details on converting images between ROS and OpenCV are [here](http://wiki.ros.org/cv_bridge/Tutorials/ConvertingBetweenROSImagesAndOpenCVImagesPython).

## ROS Video Server

Details of the *web_video_server* package are [here](http://wiki.ros.org/web_video_server).

!!! note "Install *web_video_server* with:"

    ```bash
    sudo apt-get install ros-kinetic-web-video-server
    ```

!!! note "Run *web_video_server* with:"

    ```bash
    rosrun web_video_server web_video_server
    ```
