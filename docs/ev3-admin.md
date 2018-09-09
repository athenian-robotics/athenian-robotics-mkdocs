# EV3 Notes

For full ev3dev documentation visit 
[here](http://www.ev3dev.org).

For full ev3dev Python documentation visit 
[here](https://github.com/rhempel/ev3dev-lang-python).

## Connecting

The default username/password is: robot/maker

Connect to an EV3 named *ev3dev1.local* with:
```bash
ssh robot@ev3dev1.local
```

Copy files to an EV3 named *ev3dev1.local* with a `sftp` session:
```bash
$ sftp robot@ev3dev1.local
robot@ev3dev3.local's password: 
Connected to ev3dev3.local.
sftp> put file_name
```

Exit from `sftp` with ctrl-D.

Or you can use `scp`:
```bash
scp file_name robot@ev3dev1.local:/home/robot/
```

## Update Linux Bits

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo reboot now
```

## EV3 Python Bindings

Install the EV3 Python bindings on the EV3 with:
```bash
pip install python-ev3dev
```

To avoid warnings within PyCharm, install the EV3 Python bindings on the 
host machine with:
 ```bash
 pip3 install python-ev3dev
 ```

## EV3 Projects

* [EV3 Balancing Robot](http://robotsquare.com/2013/12/10/ev3-balancing-program-progress/)
* [EV3 Snake](https://www.youtube.com/watch?v=kHUkGucSeU0)
* [EV3 Lidar](https://www.youtube.com/watch?v=G6uVg34VzHw)
* [EV3 Rubic's Cube Solver](http://www.instructables.com/id/EVB-Rubics-Cube-Solver/)