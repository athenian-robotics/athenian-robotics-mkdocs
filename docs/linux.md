# Linux Notes

These notes apply to the Ubuntu and Raspbian distros.

## Update OS

Update Raspbian to the latest and greatest bits with:
```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get autoremove
sudo apt-get autoclean
sudo reboot now
```

Remove unnecessary bits with:
```bash
sudo apt-get remove --purge wolfram-engine
sudo apt-get remove --purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove
# To find other things to remove
apt list --installed
```

## Change hostname
Multiple Raspis on your network cannot share the same hostname. Change your hostname with:

```bash
sudo nano /etc/hostname
sudo reboot now
```

## Enable Wi-Fi
Detailed instructions are 
[here](http://www.makeuseof.com/tag/setup-wi-fi-bluetooth-raspberry-pi-3/)

Alternative directions are [here](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-3-network-setup/setting-up-wifi-with-occidentalis).

Discover what SIDs are available with: `sudo iwlist wlan0 scan`

Add this to */etc/network/interfaces*:
```
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
```

Add a *network* entry to */etc/wpa_supplicant/wpa_supplicant.conf*
for each SID with which the Raspi will need to connect:
```bash
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
```

The *network* entries should look like:
```snakeyaml
country=US
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
    ssid="MyWiFiNetwork1"
    psk="the_password1"
    key_mgmt=WPA-PSK
}

network={
    ssid="MyWiFiNetwork2"
    psk="the_password2"
    key_mgmt=WPA-PSK
}   
```

Stop *wlan0* with: `sudo ifdown wlan0`

Start *wlan0* with: `sudo ifup wlan0`

Restart networking with: `sudo /etc/init.d/networking restart`

Look at the log with: `systemctl status networking.service`

Determine your IP address with: `ifconfig`

Get *wlan0* status with: `iwconfig`

Determine *wlan0* channels with: `iwlist wlan0 channel`

## Installing MDNS and Chrome

Install MDNS (enabling hostname.local usage) with: 
```bash
sudo apt-get install avahi-daemon avahi-discover libnss-mdns
```

Install Chrome with: 
```bash
sudo apt install chromium-browser
```

If chromium-browser is not found, add the *universe* repository with: 
```bash
sudo apt-add-repository universe
```

## Set up ssh to not ask for a password

Run `ssh-keygen` on the Mac, and hit return when asked for file in which to save the key and the passphrase.
This will generate a public and private keys stored in *~/.ssh/id_rsa* and *~/.ssh/id_rsa.pub*.

```bash
ssh-keygen
```

Add the contents of *~/.ssh/id_rsa.pub* on the Mac (using copy and paste) 
into *~/.ssh/authorized_keys* on the Raspi.

```bash
sudo nano ~/.ssh/authorized_keys
```

Set the proper permissions for *~/.ssh/authorized_keys* with: `chmod 600 ~/.ssh/authorized_keys`

You should now be able to ssh to the Raspi without a password.

## Simplify ssh logins

To log into a Raspi with `ssh raspi` instead of `ssh pi@raspi.local`, add this to your *~/.ssh/config* file:
```bash
Host raspi, raspi.local
  HostName raspi.local
  User pi
  StrictHostKeyChecking no
  UserKnownHostsFile /dev/null
```

Ensure that *~/.ssh/config* is visible only to you by setting the permissions with:
```bash
sudo chmod 400 ~/.ssh/config
```

The *StrictHostKeyChecking no* option will prevent authenticity prompts from appearing during ssh logins 
and when doing git pushes with `git push raspi master`. 
You will no longer see prompts like this:
```
The authenticity of host 'raspi.local (fe84::d84b:3c2:9ba9:afa7%en0)' can't be established.
ECDSA key fingerprint is SHA256:g+fFiMPfdWH8Lwi6eKjAOWgYoTfDAPh00GnsLLE88fk.
Are you sure you want to continue connecting (yes/no)? 
```

The *UserKnownHostsFile /dev/null* option will prevent ssh from writing to *.ssh/known_hosts*
and then later failing when host keys change. In general, this is not a good security practice,
but it is acceptable when working with local Raspis since you are on a private LAN and
not likely dealing with malicious hosts.

## Install File sharing

Details are [here](http://www.instructables.com/id/How-to-share-files-between-Mac-OSX-and-Raspberry-P/?ALLSTEPS).

Enable file sharing with: `sudo apt-get install netatalk`

## Enable VNC

Enable VNC with `raspi-config`. Choose the `Interfacing Options` and then 
the `VNC` option. Tab to <Finish> and then reboot.

Start the VNC server with:
```bash
vncserver :1 -geometry 1024x728 -depth 24
```

Use `-geometry 2048x1456` for a larger display.

Download a *VNCViewer* app from [here](https://www.realvnc.com/download/viewer/). 

Start the *VNCViewer* app on the Mac and connect to the Raspi at `raspberrypi:1`.

## Install Python

Install Python 2 with: `sudo apt-get install python python-pip python-dev`

Install Python 3 with: `sudo apt-get install python3 python3-pip python3-dev`

## Vim Setup

Install vim with: `sudo apt-get install vim`

Create a *.vimrc* file containing this:
```bash
set ts=4 showmatch
set ruler laststatus=2 title hlsearch
syntax on
let python_highlight_all = 1
```

# Serial Notes

To view data on a Raspi connected to an Arduin via serial use:
```bash
screen /dev/ttyACM0 115200
```

To exit `screen` use: `Crtl-a` `d`

## Misc useful commands

Downgrade from *rpi-update* with: 
```bash
sudo apt-get install --reinstall raspberrypi-bootloader raspberrypi-kernel
```

Install [ncdu](https://murze.be/view-disk-space-usage-on-ubuntu) with: 
```bash
sudo apt-get install ncdu
```
