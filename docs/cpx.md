# Adafruit Circiuit Playground Express

## Basics

* [Circuit Playground Express](https://www.adafruit.com/product/3333)
* [Adafruit Makecode IDE](https://makecode.adafruit.com)
* [Makecode Primer](https://learn.adafruit.com/makecode?view=all&embeds=allow)
* [Makecode and Sensors](https://learn.adafruit.com/sensors-in-makecode?view=all&embeds=allow)
* [Makecode and Neopixels](https://learn.adafruit.com/neopixels-with-makecode?view=all&embeds=allow)
* [Infrared Support](https://learn.adafruit.com/infrared-transmit-and-receive-on-circuit-playground-express-in-c-plus-plus-2/infrared-testpattern?view=all#overview)
* [CircuitPython Setup](https://learn.adafruit.com/adafruit-feather-m0-express-designed-for-circuit-python-circuitpython/circuitpython-setup)
* [CircuitPython Examples](https://github.com/athenian-robotics/circuitpython-examples)

## VS Code Plugin
* [Adafruit and Microsoft Garage interns team up to create Device Simulator Express](https://www.microsoft.com/en-us/garage/blog/2019/08/adafruit-and-microsoft-garage-interns-team-up-to-create-device-simulator-express/)
* [Device Simulator Express, a Microsoft Garage project](https://marketplace.visualstudio.com/items?itemName=ms-python.devicesimulatorexpress)

## Projects

* [Laser Tag](https://learn.adafruit.com/circuit-playground-express-laser-tag?view=all&embeds=allow)
* [Circuit Playground Password Vault](https://learn.adafruit.com/circuit-playground-password-vault)
* [Digital Fidget Spinner](https://learn.adafruit.com/digital-fidget-spinner?view=all)

## UF2 Bootloader Details

To install a new bootloader, double click reset button and drag and drop the appropriate .uf2 bootloader file.

### Makecode 

#### Setup

Download latest MakeCode bootloader from [here](https://cdn-learn.adafruit.com/assets/assets/000/045/717/original/update-bootloader.uf2?1503523524)
After flashing the MakeCode bootloader, the Circuit Playground will appear as a drive named *CPLAYBOOT*


### CircuitPlayground

#### Setup
Download latest CircuitPython bootloader from [here](https://github.com/adafruit/circuitpython/releases)
After flashing the CircuitPython bootloader, the Circuit Playground will appear as a drive named *CIRCUITPY*.

Download the latest CircuitPython 2.0.0 libraries from [here](https://github.com/adafruit/Adafruit_CircuitPython_Bundle/releases/tag/20170915).
Expand the .zip file and copy the ``lib`` folder to the *CIRCUITPY* drive.

To test the CircuitPython bootloader, create a file named `code.py` on 
the Circuit Playground drive with these statements:

```python
import digitalio
import board
import time

led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT
while True:
    led.value = not led.value
    time.sleep(0.5)
```

#### REPL

To connect to the REPL, use: 
```bash
screen /dev/tty.usbmodem1451 115200
```

Note: */dev/tty.usbmodem1451*  might not be correct. To determine the correct
tty name, use: `ls /dev/*usbmodem*`.

You might have to hit Ctrl-C to get the ```>>>``` prompt.

Type ``help()`` to get version information.

To exit the REPL type *Ctrl-a k y* and then type `reset` to fix the terminal.

#### Ampy Utility

The [ampy](https://learn.adafruit.com/micropython-basics-load-files-and-run-code/overview) utility
simplifies running and debugging python code on the Circuit Playground. One big advantage is it
allows you to see the *stdout* from python `print` statements. In order to use it, remove
the `code.py` file from the Circuit Playground.


#### Python Packages

The CircuitPython Neopixel driver is [here](https://github.com/adafruit/Adafruit_CircuitPython_NeoPixel).

Code examples are [here](https://github.com/athenian-robotics/circuitpython-examples).