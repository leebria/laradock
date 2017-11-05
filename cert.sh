#!/usr/bin/env bash

docker run -it --rm \
      -v /Users/brian/Src/certs:/etc/nginx/certs \
      -v /Users/brian/Src/certs:/data/nginx/certs \
      deliverous/certbot \
      certonly \
      --standalone --preferred-challenges http \
      -d manage.ce3.dev

#--webroot --webroot-path=/etc/nginx/certs \