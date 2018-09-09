# Go Notes

## Raspbian Installation

The apt-get version is 1.3, which is too old. Install 1.7 with:

```bash
wget https://storage.googleapis.com/golang/go1.7.linux-armv6l.tar.gz
sudo tar -C /usr/local -xzf go1.7.linux-armv6l.tar.gz
export PATH=/usr/local/go/bin:$PATH
```