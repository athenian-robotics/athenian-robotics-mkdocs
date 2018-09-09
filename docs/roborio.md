# RoboRio Notes

## Setting up Intellij support 

* Download and install [IntelliJ](https://www.jetbrains.com/idea/).

* Download the [GradleRIO zip file](https://github.com/Open-RIO/GradleRIO/blob/master/Quickstart.zip) and 
extract it into to your project directory.

* Open up `build.gradle` and change `latest-version` to the latest plugin version specified 
[here](https://plugins.gradle.org/plugin/jaci.openrio.gradle.GradleRIO). For example:
```
id "jaci.openrio.gradle.GradleRIO" version "2017.1.1"
```

* In *frc*, set team to 852 and set robotClass to the class that Robot is in.

* In *robotManifest*, change 'Robot-Class' to the value you set for *frc*. 
For example:

```
def robotManifest = {
  attributes 'Main-Class': 'edu.wpi.first.wpilibj.RobotBase'
  attributes 'Robot-Class': "org.usfirst.frc.team852.robot.Robot"
}
```

* Open a command line window and go to the project directory.  
Run `gradlew idea` on Windows or `./gradlew idea` on Linux/OSX.

* Open the .ipr file with IntelliJ.

* A pop-up will appear about an unlinked gradle project. Link the gradle project with the 
task-oriented option (second option down).

* In the project there should be a */src/main/java* folder. Create a package inside called 
`org.usfirst.frc.team852.robot`. Add your `Robot` class and add this 
to the top:
```java
package org.usfirst.frc.team852.robot;
```

* In IntelliJ, go to view > Tool Windows > Terminal.

### Commands

Commands are run through the command line or through gradle integration (TODO: cover this). 
They are run with `gradlew [args]` on Windows or `./gradlew [args]` on OSX/Linux.

Some useful commands:

* `gradlew build`: Build the project locally and prepare it for deployment.

* `gradlew build deploy`: Build and deploy the project to the robot.

* `gradlew build deploy --offline`: Build and deploy the project without checking and 
dowloading remote repositories. Useful for competition scenarios or when offline.

