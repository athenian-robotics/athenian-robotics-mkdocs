# Intel Euclid Notes

Tutorials are [here](http://www.euclidcommunity.intel.com)

Source code is [here](https://github.com/inteleuclid)

Euclid workspace is at: /intel/euclid/euclid_ws

## Setting up Wi-Fi

1. Connect to the Euclid hotspot (password: 12345678)
2. Setup a connection to an available SSID.
3. Set the Euclid to use the new SSID and reboot.

## Connecting

Connect to the euclid app at http://euclid.local

`ssh` into the Euclid with: `ssh euclid@euclid.local` (PW: euclid)

## Changing ROS vars

The env var **ROS_MASTER_URI** is set in */intel/euclid/config/settings.ini*

After editing the *settings.ini* file, reset services with: 
```
sudo service oobe-init restart-oobe
```

Stop services with:
```
sudo service oobe-init 
```

Start services with:
```
sudo service oobe-init start
```

## Config

`roscore` is started on init at: `/intel/euclid/oobe-services/ros_services/S1ROS/init.sh`

Logs are in: `/home/euclid/.ros/log/`

## Forum

Intel answers questions at: https://communities.intel.com/community/tech/realsense/overview