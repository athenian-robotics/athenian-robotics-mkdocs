# FRC Notes

## Setup
* [2020 WPILib Overview](https://buildmedia.readthedocs.org/media/pdf/frc-docs/latest/frc-docs.pdf)
* [Aliases for setting JDK from the CLI](https://gist.github.com/pambrose/7b1e2cd9c5a006c10113db814f5f9cd5)
* [Color Sensor](http://www.revrobotics.com/rev-31-1557/)

## Background
* [Debugging Robot Code](https://firstmncsa.org/2019/01/01/debugging-java-remote-debugging/)
* [PID Explanation](https://www.youtube.com/watch?v=2elEXcv0AV8)
* [2019 WPILib Description](https://youtu.be/64hPDvphcfA?t=715)
* [2019 Adding Commands and Subsystems](https://www.youtube.com/watch?v=A43CDiXtEdY)

## Definitions
### Subsystems
**Subsystems** are the basic unit of robot organization in the design-based paradigm. 
Subsystems encapsulate lower-level robot hardware (such as motor controllers, sensors, 
and/or pneumatic actuators), and define the interfaces through which that hardware can 
be accessed by the rest of the robot code. Subsystems allow users to “hide” the internal 
complexity of their actual hardware from the rest of their code - this both simplifies 
the rest of the robot code, and allows changes to the internal details of a subsystem 
without also changing the rest of the robot code. 

### Commands
**Commands** define high-level robot actions or behaviors that utilize the methods defined 
by the subsystems. A command is a simple state machine that is either initializing, 
executing, ending, or idle. Users write code specifying which action should be taken 
in each state. Simple commands can be composed into “command groups” to accomplish 
more-complicated tasks. 
