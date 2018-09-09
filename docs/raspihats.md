# Raspi Hats

## Pan-Tilt Hat 

A Pimoroni Pan-Tilt HAT can be purchased 
[here](https://shop.pimoroni.com/products/pan-tilt-hat).

The Pan-Tilt HAT github repo is [here](https://github.com/pimoroni/pantilt-hat)

The Python API is described [here](http://docs.pimoroni.com/pantilthat/).

## Raspbian Installation

Python 2:
```bash
pi@raspberrypi:~ $ sudo apt-get install python-pantilthat
```

Python 3:
```bash
pi@raspberrypi:~ $ sudo apt-get install python-smbus
pi@raspberrypi:~ $ sudo apt-get install python3-pantilthat
```

Enable the I2C bus with `raspi-config`.
Select `Interfacing Options` and then enable `I2C`.

```bash
pi@raspberrypi:~ $ sudo raspi-config
```

## Unicorn Hat 

A Unicorn HAT can be purchased 
[here](https://shop.pimoroni.com/products/unicorn-hat)

The Unicorn HAT github repo is [here](https://github.com/pimoroni/unicorn-hat).

Examples are [here](https://github.com/pimoroni/unicorn-hat/tree/master/examples).

## Raspbian Installation

Python 2
```bash
sudo apt-get install python-pip python-dev
sudo pip install unicornhat
```

Python 3
```bash
sudo apt-get install python3-pip python3-dev
sudo pip3 install unicornhat
```

If you get an error message *Can't open /dev/mem: Permission denied*, then run the program with `sudo`.

If you get random LEDs blinking, make sure the sound is routed to HDMI by
adding these two lines to /boot/config.txt and rebooting:

```
hdmi_force_hotplug=1
hdmi_drive=2
```

<iframe src="https://player.vimeo.com/video/105482682" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

## Display-O-Tron Hat 

A Display-O-Tron can be purchased from [here](https://www.adafruit.com/products/2694)

The Display-O-Tron github repo is [here](https://github.com/pimoroni/dot3k).

A *Getting Started* is [here](https://learn.pimoroni.com/tutorial/display-o-tron/getting-started-with-display-o-tron)

A *Reference* is [here](https://github.com/pimoroni/dot3k/blob/master/documentation/REFERENCE.md)

Tutorials are [here](https://learn.pimoroni.com/?tag=display-o-tron)

Examples are [here](https://github.com/pimoroni/dot3k/tree/master/examples).

## Raspbian Installation

Install the driver with:
```bash
curl -sS get.pimoroni.com/displayotron | bash
```

<iframe src="https://player.vimeo.com/video/105573800" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

