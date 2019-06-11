# [NeoTrellis M4 Express](https://blog.adafruit.com/2018/11/06/adafruit-neotrellis-m4-adafruit-adafruit-circuitpython/)

## Docs

Docs are [here](https://circuitpython.readthedocs.io/projects/trellism4/en/latest/).

## Setup

1) Install CircuitPython on the NeoTrellis as described [here](https://learn.adafruit.com/adafruit-neotrellis-m4/circuitpython).

2) Install the NeoTrellis CircuitPython library on your board as described [here](https://learn.adafruit.com/adafruit-neotrellis-m4/adafruit-circuitpython-trellism4-library)

3) Install the NeoTrellis CircuitPython library on your laptop as described 
[here](https://github.com/adafruit/Adafruit_CircuitPython_TrellisM4). \
This will allow you to review the source code in PyCharm.

4) Install the ADXL34x accelerometer library on your laptop with:

```bash
pip3 install adafruit_adxl34x
```

## Usage

1) The NeoTrellis library usage is described [here](https://learn.adafruit.com/adafruit-neotrellis-m4/adafruit-circuitpython-trellism4-library)

2) Access to the REPL is described [here](https://learn.adafruit.com/adafruit-neotrellis-m4/advanced-serial-console-on-mac-and-linux).

## Enabling mu-editor 
In order to enable ``mu-editor`` to work with the NeoTrellis, edit `adafruit.py` and add **(0x239a, 0x8030),** to the *valid_boards* value.

