# Magni Notes

## Connect to robot while in AP mode 
* wifi passwd: robotseverywhere
* Connect with: ``ssh ubuntu@ubiquityrobot.local`` password: ubuntu

## Wifi Management
The Magni uses [pifi](https://github.com/rohbotics/pifi) for wifi management. The Magni distro boots
as an wifi AP, which allows you to login via ssh and add your local wifi SID.

## Charging
    Charge to 29.4 with 32 volts with 1 amp current limit

## Harware Status
You should see 5 green lights, with top light blinking every 6 seconds.

## Handy Commands
* Assign new hostname: ``sudo pifi set-hostname NEW_HOSTNAME``
* Connect the robot to a network: ``sudo pifi add MyNetwork password``
* Reset the robot's wifi to AP mode: press SW2 button on the sensor bar
* Calibrate the wheels: ``rosrun rqt_reconfigure rqt_reconfigure``
* Simple teleop: ``rosrun teleop_twist_keyboard teleop_twist_keyboard.py``
* Shutting down the robot: ``sudo shutdown -h now`` or press SW1 button on the sensor bar and hold for 3 seconds






