# Crickit/CPX and CircuitPython Usage

* [Download and install Mu Editor](https://learn.adafruit.com/welcome-to-circuitpython/installing-mu-editor)
* [Download and install the CircuitPython for Crickit/CPX](https://learn.adafruit.com/adafruit-crickit-creative-robotic-interactive-construction-kit/circuitpython-code)

## Usage

!!! note "Running a program"

    To run a program on the Crickit/CPX from Mu, save the code to **code.py*s* in the *CIRCUITPY* volume.

Click on **Serial** to open a REPL and view values printed from the code with *print()*.

Click on **Plotter** to view tuple values printed to the REPL. The plotter will print tuple (but not list) values.

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
        print(crickit.touch_1.raw_value, crickit.touch_2.raw_value,
            crickit.touch_3.raw_value, crickit.touch_4.raw_value)    
        time.sleep(0.1)
    ```
    
??? example "LED Usage"

    ```python
    import time
    import board
    import neopixel
    
    pixels = neopixel.NeoPixel(board.NEOPIXEL, 10, brightness=.1)
    pixels.fill((0, 0, 0))
    pixels.show()
    pix_cnt = len(pixels)
    
    RED = (0x10, 0, 0) 
    GREEN = (0, 0x10, 0)
    BLUE = (0, 0, 0x10)
    YELLOW = (0x10, 0x10, 0)
    
    def lightUp(color):
        for i in range(pix_cnt):
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
    
    ```python
    import time
    import board
    import neopixel
    from adafruit_crickit import crickit
    
    pixels = neopixel.NeoPixel(board.NEOPIXEL, 10, brightness=.1)
    pixels.fill((0, 0, 0))
    pixels.show()
    pix_cnt = len(pixels)
    
    RED = (0x10, 0, 0) 
    GREEN = (0, 0x10, 0)
    BLUE = (0, 0, 0x10)
    YELLOW = (0x10, 0x10, 0)
    
    def lightUp(color):
        for i in range(pix_cnt):
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