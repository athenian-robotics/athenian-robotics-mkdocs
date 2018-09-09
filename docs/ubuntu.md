# Ubuntu Notes

General Linux admin notes are [here](./linux.md).

## Raspberry Pi Installation

Download Ubuntu MATE 16.04.2 LTS for Raspberry Pi 2 and 3 systems from [here](https://ubuntu-mate.org/download/)

Open the downloaded file with [Keka](http://www.kekaosx.com/en/).

Ubuntu desktop requires you to initially login with a keyboard and monitor to setup the
system.

Once logged in, you should use `sudo raspi-config` to:

* enable SSH 
* turn off GUI on init 
* turn off splash screen on init 
* expand the filesystem 

## Cleanup installed packages

View all the packages installed by default with:
```bash
sudo apt list --installed
```

Remove unnecessary packages with:
```bash
sudo apt-get remove --purge vlc* youtube-* yelp-* libreoffice* thunderbird* 
sudo apt-get remove --purge transmission* scratch* firefox* rhythmbox* python-minecraftpi

sudo apt-get clean

sudo apt-get autoremove
```

## Add developer packages

Add developer packages with:
```bash
sudo apt-get install git
```

## Install ROS

Install *ros-kinetic-desktop* following the instructions [here](http://wiki.ros.org/kinetic/Installation/Ubuntu).

## Disable Wifi on Ubuntu 

To disable wifi, use this */etc/network/interfaces*:

```bash
# interfaces(5) file used by ifup(8) and ifdown(8)
# Include files from /etc/network/interfaces.d:
source-directory /etc/network/interfaces.d

# The loopback network interface
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet dhcp
```

In the event that *wlan0* is still appearing with an ip address in `iwconfig`, see 
[here](https://raspberrypi.stackexchange.com/questions/43720/disable-wifi-wlan0-on-pi-3).

## Enable Wifi on Ubuntu   

If the wifi choices are stippled, try this:

* Run: `sudo /etc/init.d/networking restart`
* Edit file */etc/NetworkManager/NetworkManager.conf* and change **managed=false** to **managed=true**
* Run: `sudo killall NetworkManager`

To manage wifi connection via a config file, add this to */etc/network/interfaces*:
```
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
```

If a device is not managed in */etc/network/interfaces*, then it will be avialable via the GUI.

## Virtual Box Desktop Installation

After installing Desktop, click on **Additional Drivers** in **Software & Updates**
and add machine-specific drivers.

Under the VirtualBox Networking options, set "Attached to:" to "Bridged Adapter"

To get hostname to reference network address rather than localhost, remove
host name from `/etc/hosts/`

After downloading the Ubuntu distro, convert it from a *.img.xz* file to a *.img* file with:
```bash
brew install xz
xz -d file-to-extract.xz
```

## Mac boot disk installation

A good video on the process is [here](https://www.youtube.com/watch?v=IQIaDO9nR6Y). 

A description of how to enable wifi on a Mac is [here](http://sourcedigit.com/19519-how-to-enable-wifi-in-ubuntu-16-04/).


