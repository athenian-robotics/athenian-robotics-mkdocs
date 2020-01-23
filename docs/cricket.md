# Crickit/CPX and CircuitPython Usage

* [Download and install Mu Editor](https://learn.adafruit.com/welcome-to-circuitpython/installing-mu-editor)
* [Download and install the CircuitPython for Crickit/CPX](https://learn.adafruit.com/adafruit-crickit-creative-robotic-interactive-construction-kit/circuitpython-code)
* [CircuitPython Libraries](https://learn.adafruit.com/welcome-to-circuitpython/circuitpython-libraries)

## Setup

!!! note "Installing the CircuitPython Library Bundle"

    Download Library Bundle from [here](https://github.com/adafruit/Adafruit_CircuitPython_Bundle/releases) and copy it to **lib** 
    on the *CIRCUITPY* volume.
    
## Usage

!!! note "Running a program"

    To run a program on the Crickit/CPX from Mu, save the code to a file named **code.py** in the *CIRCUITPY* volume.

Click on **Serial** to open a REPL and view values printed from the code with *print()*.

Click on **Plotter** to view tuple values printed to the REPL. The plotter will print tuple (but not list) values.

The [Light Sensor Example](https://learn.adafruit.com/sensor-plotting-with-mu-and-circuitpython) is good for sample plotter data.

## Code Snipets

Examples borrow from the [Adafruit docs](https://learn.adafruit.com/adafruit-crickit-creative-robotic-interactive-construction-kit/circuitpython-code/)

??? example "Boolean Touch Values"

    ```python
    from adafruit_crickit import crickit
      
    while True:
        if crickit.touch_1.value:
            print("Touched Cap Touch Pad 1")
        if crickit.touch_2.value:
            print("Touched Cap Touch Pad 2")
        if crickit.touch_3.value:
            print("Touched Cap Touch Pad 3")
        if crickit.touch_4.value:
            print("Touched Cap Touch Pad 4")
    ```

??? example "Raw Touch Values"

    ```python
    import time
    from adafruit_crickit import crickit
    
    while True:
        print("({}, {}, {}, {})".format(crickit.touch_1.raw_value, crickit.touch_2.raw_value,
            crickit.touch_3.raw_value, crickit.touch_4.raw_value))    
        time.sleep(0.1)
    ```    
    
??? example "Alternating LEDs"

    ```python
    import time
    import board
    import neopixel
    
    pixels = neopixel.NeoPixel(board.NEOPIXEL, 10, brightness=.1)
    pixels.fill((0, 0, 0))
    pixels.show()
    
    RED = (0x10, 0, 0) 
    GREEN = (0, 0x10, 0)
    BLUE = (0, 0, 0x10)
    YELLOW = (0x10, 0x10, 0)
    
    def lightUp(color):
        for i in range(10):
            pixels[i] = color
            time.sleep(.05)
    
    while True:
        lightUp(RED)
        time.sleep(1)
        lightUp(GREEN)
        time.sleep(1)
        lightUp(BLUE)
        time.sleep(1)
        lightUp(YELLOW)
        time.sleep(1)
    ```   
    
??? example "Using Touch Values with LEDs"

    ```python
    import time
    import board
    import neopixel
    from adafruit_crickit import crickit
    
    pixels = neopixel.NeoPixel(board.NEOPIXEL, 10, brightness=.1)
    pixels.fill((0, 0, 0))
    pixels.show()
    
    RED = (0x10, 0, 0) 
    GREEN = (0, 0x10, 0)
    BLUE = (0, 0, 0x10)
    YELLOW = (0x10, 0x10, 0)
    
    def lightUp(color):
        for i in range(10):
            pixels[i] = color
            time.sleep(.05)
    
    while True:
        if crickit.touch_1.value:
            lightUp(RED)
        if crickit.touch_2.value:
            lightUp(GREEN)
        if crickit.touch_3.value:
            lightUp(BLUE)
        if crickit.touch_4.value:
            lightUp(YELLOW)
    ```
       
??? example "Using the Buttons with LEDs"

    ```python
    import time
    import board
    import neopixel
    from digitalio import DigitalInOut, Direction, Pull
    
    buttonA = DigitalInOut(board.BUTTON_A)
    buttonA.direction = Direction.INPUT
    buttonA.pull = Pull.DOWN

    buttonB = DigitalInOut(board.BUTTON_B)
    buttonB.direction = Direction.INPUT
    buttonB.pull = Pull.DOWN

    pixels = neopixel.NeoPixel(board.NEOPIXEL, 10, brightness=.1)
    pixels.fill((0, 0, 0))
    pixels.show()
    
    RED = (0x10, 0, 0) 
    GREEN = (0, 0x10, 0)
    BLUE = (0, 0, 0x10)
    YELLOW = (0x10, 0x10, 0)

    def lightUp(color):
        for i in range(10):
            pixels[i] = color
    
    while True:
        if buttonA.value and buttonB.value: 
            lightUp(YELLOW)
        elif buttonA.value:
            lightUp(RED)
        elif buttonB.value:
            lightUp(BLUE)
        else:
            lightUp(GREEN)

        time.sleep(0.01)
    ```
    
??? example "Using the Slider with LEDs"

    ```python
    import time
    import board
    import neopixel
    from digitalio import DigitalInOut, Direction, Pull
    
    switch = DigitalInOut(board.SLIDE_SWITCH)
    switch.direction = Direction.INPUT
    switch.pull = Pull.UP

    pixels = neopixel.NeoPixel(board.NEOPIXEL, 10, brightness=.1)
    pixels.fill((0, 0, 0))
    pixels.show()
    
    RED = (0x10, 0, 0) 
    GREEN = (0, 0x10, 0)

    def lightUp(color):
        for i in range(10):
            pixels[i] = color
    
    while True:
        if switch.value: 
            lightUp(RED)
        else:
            lightUp(GREEN)

        time.sleep(0.01)
    ```    
    
??? example "Plotting CPX LIS3DH Accelerometer Values"

    ```python
    import time
    from adafruit_circuitplayground.express import cpx
    
    while True:
        x, y, z = cpx.acceleration
        print("({}, {}, {})".format(x, y, z))
        time.sleep(0.1)
    ```
 
??? example "CPX Shake Detection"

    ```python
    from adafruit_circuitplayground.express import cpx
    
    while True:
        if cpx.shake(shake_threshold=10):
            print("Shake detected!")
    ```