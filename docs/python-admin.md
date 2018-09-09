# Python Notes

## Installation

### OSX

[Python on OSX](https://medium.com/@briantorresgil/definitive-guide-to-python-on-mac-osx-65acd8d969d0)

Installation details are [here](http://docs.python-guide.org/en/latest/starting/install3/osx/).

Python3 requires `gcc`, which you can get by installing 
[XCode](http://developer.apple.com/xcode/) or 
[Command Line Tools](https://developer.apple.com/downloads/).

Install python3 and pip3 with:
```bash
brew install python3
```

### EV3

Install python3 and pip3:
```bash
sudo apt-get install python3
sudo apt-get install python3-pip
```


## Package Management

Determine installed packages with:
```bash
pip list 
```

Determine outdated packages with:
```bash
pip list --outdated
```

Install a package with:
```bash
pip install pkg_name
```

Update a package with:
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

