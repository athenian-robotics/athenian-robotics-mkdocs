# Grafana Notes

[grafana.io](https://grafana.com)

## OSX Installation

Install with:
```bash
brew insall grafana
```

To have launchd start grafana at login:
```bash
brew services start grafana
```

To run from shell:

```bash
grafana-server --config=/usr/local/etc/grafana/grafana.ini --homepath /usr/local/share/grafana cfg:default.paths.logs=/usr/local/var/log/grafana cfg:default.paths.data=/usr/local/var/lib/grafana cfg:default.paths.plugins=/usr/local/var/lib/grafana/plugins

```
  
Access the grafana server at: http://localhost:3000