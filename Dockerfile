FROM nginx:1.25.3-alpine-slim

COPY ./default.conf.template /etc/nginx/templates/default.conf.template

LABEL org.opencontainers.image.source=https://github.com/abiriadev/letsencrypt-nginx
