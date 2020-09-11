FROM php:7.4-fpm-alpine

RUN apk update

#install required dependencies
RUN apk add postgresql-dev oniguruma-dev curl-dev libxml2-dev bzip2-dev libedit-dev zlib-dev \
libpng-dev icu-dev gettext-dev gmp-dev sqlite-dev openssl-dev libzip-dev


#install and compile php extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql pdo_pgsql mbstring tokenizer exif fileinfo filter readline gd intl \
gettext gmp iconv opcache pdo_sqlite phar posix session simplexml soap sockets xmlrpc xmlwriter zip

RUN apk add composer
