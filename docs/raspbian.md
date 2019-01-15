# Raspbian Notes

* [General Linux admin notes](./linux.md)
* [42 of the most useful Raspberry Pi Commands](http://www.circuitbasics.com/useful-raspberry-pi-commands/)
* [Read-Only Raspberry Pi](https://learn.adafruit.com/read-only-raspberry-pi/)


## Install Raspian 

### Using BerryLan

[BerryLan](http://www.berrylan.org) makes connecting a Raspi running Raspbian to wifi really easy.

### Using OSX

* Download the [Raspbian distro](https://www.raspberrypi.org/downloads/raspbian/raspbian.md).

*  Burn the .img file to a SD card with [Etcher](https://etcher.io).

*  **Important:** Remove and reinsert SD card and add a file named `ssh` to the SD card boot partition.
This will enable `ssh` on the Raspi.
```bash
touch /Volumes/boot/ssh
```

*  Eject the SD card from the Mac, connect an ethernet cable to the Raspi, and power up the Raspi.

## Login to Raspbian

Instructions on how to connect directly to your Raspi from OSX via an ethernet cable 
sare [here](https://mycyberuniverse.com/mac-os/connect-to-raspberry-pi-from-a-mac-using-ethernet.html). 
Alternatively, you connect your Raspi to your routher via ethernet.

Login to Raspbians with `ssh` using the username *pi* and password *raspberry*:
```bash
$ ssh pi@raspberrypi
Are you sure you want to continue connecting (yes/no)? yes
Password: raspberry
pi@raspberrypi:~ $
```

If you get a *Host key verification failed* error when using `ssh`, 
remove the *raspberry.local* entry from ~/.ssh/known_hosts on the Mac with:

```bash
nano ~/.ssh/known_hosts
```

## Resize root partition

Resize the root partition with `raspi-config`.
Choose "Expand Filesystem", tab to <Finish> and then reboot.

```bash
pi@raspberrypi:~ $ sudo raspi-config
```

 
## Enable a camera
Enable a Pi camera with `raspi-config`. Select the `Interfacing Options` and then the `Camera` option.
Tab to <Finish> and then reboot.
```bash
pi@raspberrypi:~ $ sudo raspi-config
```

## Capture an image
Capture an image from the camera with:
```bash
raspistill -o image.jpg
```

## View an image 
View an image on a headless Raspi with:
```bash
sudo apt-get install feh
feh image.jpg
```

## Misc Raspbian Links

[Useful Raspi Commands](http://www.circuitbasics.com/useful-raspberry-pi-commands/)




