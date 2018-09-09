# GoPiGo Notes

A GoPiGo can be purchased 
[here](https://www.dexterindustries.com/gopigo/).

A GoPiGo intro is 
[here](https://www.dexterindustries.com/GoPiGo/programming/python-programming-for-the-raspberry-pi-gopigo/).

A GoPiGo overview is 
[here](https://pythonprogramming.net/robotics-raspberry-pi-tutorial-gopigo-introduction/).

## Setup

### Verify GoPiGo is on your network

Verify that your GoPiGo is on your network with:
```bash
ping dex.local
```

If your GoPiGo is on your network, you will see something like:
```bash
PING dex.local (192.168.1.44): 56 data bytes
64 bytes from 192.168.1.54: icmp_seq=0 ttl=64 time=5.865 ms
64 bytes from 192.168.1.54: icmp_seq=1 ttl=64 time=12.350 ms
...
```
Terminate the `ping` output by hitting ctrl-C.


If it is not on your network, you will see something like:
```bash
ping: cannot resolve dex.local: Unknown host
```

### Connect to the GoPiGo's Raspi:
After plugging in the ethernet cable, connect to the GoPiGo's Raspi with:
```bash
$ ssh pi@dex.local
Are you sure you want to continue connecting (yes/no)? yes
Password: robots1234
pi@dex:~ $
```

### Enable Wi-Fi

```bash
pi@dex:~ $ sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
```

Add a network entry for each SID with which the Raspi on the GoPiGo will need to connect:
```snakeyaml
network={
    ssid="MyWiFiNetwork1"
    psk="the_password1"
    key_mgmt=WPA-PSK
}

network={
    ssid="MyWiFiNetwork2"
    psk="the_password2"
    key_mgmt=WPA-PSK
}
```

Reboot with:
```bash
pi@dex:~ $ sudo reboot now
```

After disconnecting the ethernet cable, verify the Wi-Fi on the GoPiGo's Raspi is working with:
```bash
$ ssh pi@dex.local
Password: robots1234
pi@dex:~ $
```

### Change hostname
Multiple GoPiGos on your network cannot share the same hostname. Change your hostname with:

```bash
pi@dex:~ $ sudo nano /etc/hostname
pi@dex:~ $ sudo reboot now
```

### Update the OS

Update the Linux bits with:
```bash
pi@dex:~ $ sudo apt-get update
pi@dex:~ $ sudo apt-get upgrade
pi@dex:~ $ sudo apt-get dist-upgrade
pi@dex:~ $ sudo apt-get autoremove
pi@dex:~ $ sudo reboot now
```