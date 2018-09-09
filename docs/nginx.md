# nginx Notes

## OSX Installation

```bash
brew install nginx
```

The nginx docroot is: /usr/local/var/www

The default port has been set in /usr/local/etc/nginx/nginx.conf to 8080.

nginx will load all files in /usr/local/etc/nginx/servers/.

To have launchd start nginx now and restart at login:
```bash
brew services start nginx
```
If you don't want/need a background service you can just run:
```bash
nginx
```

## Raspian Installation

```bash
sudo apt-get install nginx
```

The nginx docroot is: /usr/local/var/www

The default port has been set in /etc/nginx/nginx.conf to 8080.

nginx will load all *.conf* files in /etc/nginx/conf.d/.


## Configuration

Example of nginx config file:
```
  server {
    listen 8001;
    server_name _;

    access_log  /tmp/access.log;
    error_log  /tmp/errors.log;

    location / {
        proxy_pass http://127.0.0.1:8080;
        proxy_redirect     off;

    	rewrite ^/$ /image?delay=0.25 permanent;

        proxy_set_header   Host                 $host;
        proxy_set_header   X-Real-IP            $remote_addr;
        proxy_set_header   X-Forwarded-For      $proxy_add_x_forwarded_for;
        proxy_set_header   X-Forwarded-Proto    $scheme;
    }
  }
```

After editing a config file, restart *nginx* with:
```bash
nginx -s reload
```