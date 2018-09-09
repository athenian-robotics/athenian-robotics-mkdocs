# Arduino rosserial

The rosserial package details are [here](http://wiki.ros.org/rosserial_arduino/Tutorials).

The rosserial package has memory issues on Arduino Unos. An alternate bridge is [here](https://github.com/hbrobotics/ros_arduino_bridge).


## Installation

### Arduino IDE

Install Arduino on Linux by downloading it from the Arduino website.
Do not install it with `apt-get` (the version installed is not current).

In the Arduino IDE menu choose *Sketch-->Include Library-->Manage Libraries*, search 
for **rosserial** and install the library.

If you get a */dev/ttyACM0* permission error on Linux when uploading a sketch, 
you can resolve it by adding yourself to the *dialout* group.
You will have to logout and then log back in before the group change is recognized.
You can add yourself with:

```bash
sudo usermod -a -G dialout $USER
```

### Raspberry Pi

Install the binaries with:

```bash
sudo apt-get install ros-kinetic-rosserial-arduino
sudo apt-get install ros-kinetic-rosserial
```

## Demos

### Hello World

In the Arduino IDE menu, load the **Hello World** sketch from File-->Examples-->Rosserial Arduino Library.

Make sure *roscore* is running and **ROS_MASTER_URI** is set properly.

Run the client application with: 
```bash
rosrun rosserial_python serial_node.py /dev/ttyACM0
```
Note: You may have to adjust the `/dev/ttyACM0` argument to your port value.

Verify the values with:
```bash
rostopic echo chatter
```
If you aren't seeing any values, try this command to read the serial port:
```bash
screen /dev/ttyACMO 115200
```
This will only work if you have already executed the usermod command above
Note: Your port `/dev/ttyACM0` or your baud rate `115200` may be different