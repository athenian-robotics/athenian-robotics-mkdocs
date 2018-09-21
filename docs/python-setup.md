# Python Setup

## Installation

### OSX

[Python on OSX](https://medium.com/@briantorresgil/definitive-guide-to-python-on-mac-osx-65acd8d969d0)

Installation details are [here](http://docs.python-guide.org/en/latest/starting/install3/osx/).

Python3 requires `gcc`, which you can get by installing 
[XCode](http://developer.apple.com/xcode/) or 
[Command Line Tools](https://developer.apple.com/downloads/).

!!! note "Install python3 and pip3"

    ```bash
    brew install python3
    ```

### EV3

!!! note "Install python3 and pip3"

    ```bash
    sudo apt-get install python3
    sudo apt-get install python3-pip
    ```


## Package Management

!!! example "Determine installed packages"

    ```bash
    pip list 
    ```

!!! example "Determine outdated packages"

    ```bash
    pip list --outdated
    ```

!!! example "Install a package"

    ```bash
    pip install pkg_name
    ```

!!! example "Update a package"

    ```bash
    pip install --upgrade pkg_name
    ```

## PyPy 

Pip for pypy installation notes are [here](https://devforgalaxy.github.io/en/2017/03/13/install-and-use-pip-for-pypy-en.html).

```bash
sudo apt-get install curl pypy pypy-dev
curl https://bootstrap.pypa.io/get-pip.py | sudo pypy
sudo pypy -m pip install package_name
```

