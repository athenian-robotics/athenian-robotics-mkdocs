# APT Notes

## Install package

```bash
sudo apt-get install package-name
# Package with a specific version
sudo apt-get install package-name=8.0.0.1-xenial
```

## Remove package

```bash
sudo apt-get remove package-name
```

## Determine version of package available

```bash
apt-cache policy package-name
apt-cache policy substring*
```

## Search for package

```bash
apt-cache search package-name
```