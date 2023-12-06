#!/bin/bash

set -ex

#build ubuntu images
docker build -f Dockerfile7.1 . -t detallado/php-fpm-full:7.1
docker build -f Dockerfile7.2 . -t detallado/php-fpm-full:7.2
docker build -f Dockerfile7.3 . -t detallado/php-fpm-full:7.3
docker build -f Dockerfile7.4 . -t detallado/php-fpm-full:7.4
docker build -f Dockerfile8.0 . -t detallado/php-fpm-full:8.0
docker build -f Dockerfile8.1 . -t detallado/php-fpm-full:8.1
docker build -f Dockerfile8.2 . -t detallado/php-fpm-full:8.2
docker build -f Dockerfile8.3 . -t detallado/php-fpm-full:8.3
docker build -f Dockerfile . -t detallado/php-fpm-full:latest

#build alpine images
docker build -f Dockerfile7.0-alpine . -t detallado/php-fpm-full:7.0-alpine
docker build -f Dockerfile7.1-alpine . -t detallado/php-fpm-full:7.1-alpine
docker build -f Dockerfile7.2-alpine . -t detallado/php-fpm-full:7.2-alpine
docker build -f Dockerfile7.3-alpine . -t detallado/php-fpm-full:7.3-alpine
docker build -f Dockerfile7.4-alpine . -t detallado/php-fpm-full:7.4-alpine
docker build -f Dockerfile8.0-alpine . -t detallado/php-fpm-full:8.0-alpine
docker build -f Dockerfile8.1-alpine . -t detallado/php-fpm-full:8.1-alpine
docker build -f Dockerfile8.2-alpine . -t detallado/php-fpm-full:8.2-alpine
docker build -f Dockerfile8.3-alpine . -t detallado/php-fpm-full:8.3-alpine
docker build -f Dockerfile-alpine . -t detallado/php-fpm-full:latest-alpine

#push ubuntu images
docker push detallado/php-fpm-full:7.1
docker push detallado/php-fpm-full:7.2
docker push detallado/php-fpm-full:7.3
docker push detallado/php-fpm-full:7.4
docker push detallado/php-fpm-full:8.0
docker push detallado/php-fpm-full:8.1
docker push detallado/php-fpm-full:8.2
docker push detallado/php-fpm-full:8.3
docker push detallado/php-fpm-full:latest

#push alpine images
docker push detallado/php-fpm-full:7.0-alpine
docker push detallado/php-fpm-full:7.1-alpine
docker push detallado/php-fpm-full:7.2-alpine
docker push detallado/php-fpm-full:7.3-alpine
docker push detallado/php-fpm-full:7.4-alpine
docker push detallado/php-fpm-full:8.0-alpine
docker push detallado/php-fpm-full:8.1-alpine
docker push detallado/php-fpm-full:8.2-alpine
docker push detallado/php-fpm-full:8.3-alpine
docker push detallado/php-fpm-full:latest-alpine
