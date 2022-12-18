[![Build Status](https://img.shields.io/docker/cloud/build/detallado/php-fpm-full.svg)](https://hub.docker.com/r/detallado/php-fpm-full/builds)

A ready to go PHP-FPM image with most extensions enabled.

Why was this build/repository created? Because the default PHP-FPM build does not contain all the installations enabled by default, how are you supposed to deploy an application without a basic mysql/postgres/PDO extension installed? and installing them locally on certain containers take up to 3GB of RAM to build, with this build you skip all these steps.

### How to use this image
The images are divided in 2 types, ubuntu and alpine based, if you want to use the ubuntu based ones you can do so by pulling them like  ```docker pull detallado/php-fpm-full:<version>```, if you want to use the alpine ones (which has way smaller in size) all you gotta do is add the -alpine tag ```docker pull detallado/php-fpm-full:<version>-alpine```


All the extensions are installed and enabled by default, you can check the Dockerfile for more information.

The only missing extensions are the ones that require additional dependencies to be installed, like `odbc`, `pdo_oci`, `snmp` or `oci8`.

If you need any of these extensions, please open an issue and I will try to add them or you can open a PR with the changes.

### List of extensions installed & enabled:
List of extensions:
* bcmath
* bz2
* calendar
* ctype
* curl
* dba
* dom
* enchant
* exif
* fileinfo
* ftp
* gd
* gettext
* gmp
* hash
* iconv
* imap
* interbase
* intl
* json
* ldap
* mbstring
* mcrypt
* mysqli
* opcache
* pcntl
* pdo
* pdo_dblib
* pdo_firebird
* pdo_mysql
* pdo_odbc
* pdo_pgsql
* pdo_sqlite
* pgsql
* phar
* posix
* pspell
* readline
* recode
* session
* shmop
* simplexml
* soap
* sockets
* spl
* standard
* sysvmsg
* sysvsem
* sysvshm
* tidy
* tokenizer
* wddx
* xml
* xmlreader
* xmlrpc
* xmlwriter
* xsl
* zip

#### Start a PHP-FPM instance

```bash 
docker run -d --name my-running-app -v /path/to/app:/var/www/html -p 9000:9000 detallado/php-fpm-full:8.2-alpine
```

### Downloable PHP versions
* PHP 7.0 `docker pull detallado/php-fpm-full:7.0`
* PHP 7.1 `docker pull detallado/php-fpm-full:7.1`
* PHP 7.2 `docker pull detallado/php-fpm-full:7.2`
* PHP 7.3 `docker pull detallado/php-fpm-full:7.3`
* PHP 7.4 `docker pull detallado/php-fpm-full:7.4`
* PHP 8.0 `docker pull detallado/php-fpm-full:8.0`
* PHP 8.1 `docker pull detallado/php-fpm-full:8.1`
* PHP 8.2 `docker pull detallado/php-fpm-full:8.2`
* PHP 7.0 `docker pull detallado/php-fpm-full:7.0-alpine`
* PHP 7.1 `docker pull detallado/php-fpm-full:7.1-alpine`
* PHP 7.2 `docker pull detallado/php-fpm-full:7.2-alpine`
* PHP 7.3 `docker pull detallado/php-fpm-full:7.3-alpine`
* PHP 7.4 `docker pull detallado/php-fpm-full:7.4-alpine`
* PHP 8.0 `docker pull detallado/php-fpm-full:8.0-alpine`
* PHP 8.1 `docker pull detallado/php-fpm-full:8.1-alpine`
* PHP 8.2 `docker pull detallado/php-fpm-full:8.2-alpine`
* PHP Latest version `docker pull detallado/php-fpm-full:latest` (The latest version always uses the most recent version of PHP)

# To do
* Add more extensions
* Add more PHP versions (PHP <= 5.x)

If you wish to contribute please open a PR with the intended changes, I usually browse Github every day, so most likely I'll view your PR.
