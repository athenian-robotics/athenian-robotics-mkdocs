# SD Card Burning and Duplicating

## Burn an SD card with OSX 

Download a [Raspian](https://www.raspbian.org) image frome [here](https://www.raspberrypi.org/downloads/)

Use [Etcher](https://etcher.io) to burn an image file to an SD card.

## Duplicate an SD card with OSX 

Insert an SD card and determine the mount point with:
```bash
diskutil list
```

Unmount (NOT eject) the SD card disk  with:
```bash
diskutil unmountDisk /dev/diskX

```
If the mount point were */dev/diskX*, copy the contents to *~/images/raspberrypi.img* with:
```bash
sudo dd if=/dev/rdiskX of=~/images/raspberrypi.img bs=1m
```

Notice the use of **rdisk2** instead of **disk2**. Also the *dd* command can take a long time to 
complete and provides no visual feedback on its progress. 

After creating the *.img* file, use [Etcher](https://etcher.io) to burn the image file to an SD card.