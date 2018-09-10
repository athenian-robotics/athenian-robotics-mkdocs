# ROS SD Card

## SD Card Creation

Start with the Ubuntu Mate Raspi distro and use this setup:
* Hostname: ros-master
* Username: pi
* Password: owlsowls

Run `sudo raspi-config` and make these changes:
* Under Boot Options, enableCLI
* Under Boot Options , disable splash screen
* Under Interfacing Options, enable ssh
* Under Advanced Options, expand filesystem
* Reboot

```bash
# Purge unnecessary packages
sudo apt-get remove -y --purge vlc* youtube-* yelp-* libreoffice* thunderbird* 
sudo apt-get remove -y --purge transmission* scratch* firefox* rhythmbox* python-minecraftpi

# Update existing packages
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt autoremove -y
sudo apt-get clean

# Install required packages
sudo apt install -y git maven gradle
sudo apt install -y chromium-browser
sudo apt install -y avahi-daemon avahi-discover libnss-mdns

# Upgrade pip  
sudo -H pip install --upgrade pip
sudo -H pip3 install --upgrade pip

# install requiredpython packages
sudo -H pip install --upgrade arc852-robotics --extra-index-url https://pypi.fury.io/pambrose/
```

Install ROS as described here: http://wiki.ros.org/kinetic/Installation/Ubuntu

Install Display-O-Tron support with:
```bash
curl -sS get.pimoroni.com/displayotron | bash
```

Install ros-demos package:
```bash
cd ~/catkin_ws/src
git clone https://github.com/athenian-robotics/ros-demos.git
```

Install the turtlebot3 packages as described [here](http://emanual.robotis.com/docs/en/platform/turtlebot3/pc_software_setup/#install-ubuntu-on-remote-pc-desktop-or-laptop-pc).

    