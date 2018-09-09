# Nvidia Jetson TX2 Notes

## OpenCV

Instructions for building OpenCV 3.2 on the TX2 are [here](https://github.com/jetsonhacks/buildOpenCVTX2)

## ROS and Gazebo

The *gazebo7-common* library is limited to version *7.0.0+dfsg-2*. So install ROS and Gazebo with:
```bash
sudo apt-get install ros-kinetic-desktop-full  gazebo7-common=7.0.0+dfsg-2 
```

Check [here](https://packages.ubuntu.com/search?suite=xenial&keywords=gazebo7-common) for updates.

## PyCuda

To install *pycuda*, follow the directions [here](https://codeyarns.com/2015/07/31/pip-install-error-with-pycuda/) 
(substituting 8.0 for the 7.0).

## Anaconda Python

You cannot install Anaconda python on the Jetson TX2 because there is no support for aarch64 architecture.

## Numba

Install *numba* outside of Anaconda with:

```bash
sudo apt-get install llvm-config-4.0
sudo su -
export LLVM_CONFIG=$(which llvm-config-4.0)
pip install numba
``` 
Notes on this are [here](https://gist.github.com/jed-frey/ba40ff83523296bc8355f05befb28da9).


