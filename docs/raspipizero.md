# Raspberry Pi Zero W 

See general Linux admin notes [here](./linux.md).

## Configuring to Emulate Ethernet Over USB

Detailed description is [here](https://www.thepolyglotdeveloper.com/2016/06/connect-raspberry-pi-zero-usb-cable-ssh/)

1. Burn the .img file to a SD card with [Etcher](https://etcher.io).

2. Mount SD card 

3. Add this to the bottom of  *config.txt* :
```
dtoverlay=dwc2
```

4. Add this to *cmdline.txt* right after *rootwait* :
```
modules-load=dwc2,g_ether
```

5. Enable `ssh` with:
```bash
touch /Volumes/boot/ssh
```

6. Eject the SD card, place it in the RaspiPi Zero W and power it with a USB cable from your
computer using the USB port on the Raspi.