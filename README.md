# PHP Docker Images

PHP docker images from PHP 7.3 and above.

## PHP Image

From the offical php-fpm image

`docker pull cheanan/php:latest`

### Extensions

+ pdo_mysql
+ mbstring
+ curl
+ intl
+ pcntl
+ exif

### Tags

+ latest
+ \<php-version\>
+ \<php-version\>-fpm

## PHP GD Image

`docker pull cheanan/php:gd`

### GD image extensions

Same extensions as the main php image plus gd.

### GD image tags

+ gd
+ \<php-version\>-gd
+ \<php-version\>-fpm-gd

## PHP Composer Image

From the offical php-cli image

`docker pull cheanan/php:composer`

### Composer image extensions

+ mbstring
+ curl
+ intl

### Composer image tags

+ composer
+ \<php-version\>-composer

## Author and Maintainer

[Christopher David Heanan](https://chrish.dev)
