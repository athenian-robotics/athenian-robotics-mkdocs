# Magni Notes

## Connect to robot while in wifi AP mode 
* Click the outside button on the sensor bar to enable wifi AP mode.
* Connect to the magni SSID using this wifi password: robotseverywhere
* Once connected, login with: ``ssh ubuntu@magni.local`` password: ubuntu (the default hostname is `ubiquityrobot.local`)

## Wifi Management
* The Magni uses [pifi](https://github.com/rohbotics/pifi) for wifi management. 

* The Magni distro boots with wifi AP mode enabled, which allows you connect to 
the magni SID and login via ssh and add your local wifi SID. 

* Enable wifi AP mode by pressing SW2 button on the sensor bar. AP mode is indicated
by a flashing blue LED.


## Charging
Charge to 29.4 with 32 volts with 1 amp current limit

## Harware Status
* You should see 5 green lights, with top light blinking every 6 seconds.
* If the bottom 2 LEDs are not illuminated, you need to charge your batteries.

## Handy Commands
* Assign new hostname: ``sudo pifi set-hostname NEW_HOSTNAME``
* Add a new network to the robot: ``sudo pifi add MyNetwork password``
* Calibrate the wheels: ``rosrun rqt_reconfigure rqt_reconfigure``
* Simple teleop: ``rosrun teleop_twist_keyboard teleop_twist_keyboard.py``
* Shutting down the robot: ``sudo shutdown -h now`` or press SW1 button on the sensor bar and hold for 3 seconds






