# MQTT Broker Notes

## Installation

### OSX

Install mosquitto with:
```bash
brew install mosquitto
```

Add mosquitto to launchd with:
```bash
brew services start mosquitto
```

If you don't want to run mosquitto as a background service, run it from the command line with:
```bash
/usr/local/sbin/mosquitto -c /usr/local/etc/mosquitto/mosquitto.conf
```

### Windows

Create a folder named `mosquitto` in `C:\Program Files (x86)`.

Download and install [Win32 OpenSSL v.1.0.2j Light](http://slproweb.com/products/Win32OpenSSL.html). 
Select the option to save the binaries to */bin*. Find `libeay32.dll` and `ssleay32.dll`, move them to `mosquitto`.

Download [pthreadVC2.dll](ftp://sources.redhat.com/pub/pthreads-win32/dll-latest/dll/x86/), move it to `mosquitto`.

Download and install [mosquitto](https://mosquitto.org/download/) to the default 
directory (should be the folder created earlier).

Open Services, find `Mosquitto Broker` and start it.

To be able to run it from the command line, open System Properties, go to the Advanced tab, 
and open Environment Variables. Add the path to `mosquitto` to the user Path variable, followed by `;`.
e.g.

```
C:\Program Files (x86)\mosquitto;
```

Commands are run in cmd like OSX and Linux.

### Docker

Run mosquitto as a docker service with:
```bash
docker run -ti -p 1883:1883 -p 9001:9001 toke/mosquitto
```

Image details are [here](https://github.com/toke/docker-mosquitto).

### Raspbian

Install mosquitto with:
```bash
sudo apt-get install mosquitto
sudo apt-get install mosquitto-clients
```

Verify that the broker is running with:
```bash
systemctl status mosquitto
```

## Testing the MQTT Broker from CLI

### Subscribe

```bash
$ mosquitto_sub -d -h localhost -t testtopic
Client mosqsub/27524-pleiku.lo sending CONNECT
Client mosqsub/27524-pleiku.lo received CONNACK
Client mosqsub/27524-pleiku.lo sending SUBSCRIBE (Mid: 1, Topic: testtopic, QoS: 0)
Client mosqsub/27524-pleiku.lo received SUBACK
Subscribed (mid: 1): 0
```

### Publish

```bash
$ mosquitto_pub -d -h localhost -m "simple val" -t testtopic
Client mosqpub/27472-pleiku.lo sending CONNECT
Client mosqpub/27472-pleiku.lo received CONNACK
Client mosqpub/27472-pleiku.lo sending PUBLISH (d0, q0, r0, m1, 'testtopic', ... (10 bytes))
Client mosqpub/27472-pleiku.lo sending DISCONNECT
```
