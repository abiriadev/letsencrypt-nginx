<h1 align="center">Let's Encrypt + NGINX</h1>

# Usage

```sh
$ docker run \
    -p 443:443 \
    -e NGINX_PORT=443 \
    -e NGINX_HOST=localhost \
    -e NGINX_SSL_CERT=/etc/nginx/keys/fullchain.pem \
    -e NGINX_SSL_KEY=/etc/nginx/keys/privkey.pem \
    -v /etc/letsencrypt/live/${YOUR_DOMAIN}/fullchain.pem:/etc/nginx/keys/fullchain.pem \
    -v /etc/letsencrypt/live/${YOUR_DOMAIN}/privkey.pem:/etc/nginx/keys/privkey.pem \
    ghcr.io/abiriadev/letsencrypt-nginx:latest
```

Or, using docker compose:

```sh
$ wget https://raw.githubusercontent.com/abiriadev/letsencrypt-nginx/main/compose.yaml
$ docker compose up -d
```
