# docker-php-fpm-full
A ready to go PHP-FPM image with most extensions enabled.

Why was this build/repository created? Because the default PHP-FPM build does not contain all the installations enabled by default, how are you supposed to deploy an application without a basic mysql/postgres/PDO extension installed? and installing them locally on certain containers take up to 3GB of RAM to build, with this build you skip all these steps.

### List of extensions installed & enabled:

All the extensions are installed and enabled by default, you can check the Dockerfile for more information.

The only missing extensions are the ones that require additional dependencies to be installed, like `odbc`, `pdo_oci`, `snmp` or `oci8`.

If you need any of these extensions, please open an issue and I will try to add them or you can open a PR with the changes.

### How to use this image

#### Start a PHP-FPM instance

```bash 
docker run -d --name my-running-app -v /path/to/app:/var/www/html -p 9000:9000 php-fpm-full
```

### Downloable PHP versions
* PHP 7.0 `docker pull detallado/php-fpm-full:7.0`
* PHP 7.1 `docker pull detallado/php-fpm-full:7.1`
* PHP 7.2 `docker pull detallado/php-fpm-full:7.2`
* PHP 7.3 `docker pull detallado/php-fpm-full:7.3`
* PHP 7.4 `docker pull detallado/php-fpm-full:7.4`
* PHP 8.0 `docker pull detallado/php-fpm-full:8.0`
* PHP 8.1 `docker pull detallado/php-fpm-full:8.1`
* PHP Latest version `docker pull detallado/php-fpm-full:latest`

## To do
* Add more extensions
* Add more PHP versions
* Add alpine versions