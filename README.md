# docker-php-fpm-full
A ready to go PHP-FPM image with most extensions enabled.

Why was this build/repository created? Because the default PHP-FPM build does not contain all the installations enabled by default, how are you supposed to deploy an application without a basic mysql/postgres/PDO extension installed? and installing them locally on certain containers take up to 3GB of RAM to build, with this build you skip all these steps.
### List of extensions installed & enabled:

* mysqli
* pdo
* pdo_mysql
* pdo_pgsql
* mbstring
* tokenizer
* exif
* fileinfo
* filter
* readline
* gd
* intl
* gettext
* gmp
* iconv
* opcache
* pdo_sqlite
* phar
* posix
* session
* simplexml
* soap
* sockets
* xmlrpc
* xmlwriter
* zip
<<<<<<< HEAD
=======

### Downloable PHP versions
* PHP 7.2 `docker pull detallado/php-fpm-lightweight:7.2`
* PHP 7.3 `docker pull detallado/php-fpm-lightweight:7.3`
* PHP 7.4 `docker pull detallado/php-fpm-lightweight:7.4`
* PHP 8.0 `docker pull detallado/php-fpm-lightweight:8.0`
* PHP Latest version `docker pull detallado/php-fpm-lightweight:latest`

### How to use
Check the [docker-compose-sample.yml](/docker-compose-sample.yml) to view an example about using it.
>>>>>>> 5f53ee2ed8761da22ffefbc59a46a35346267fb3
