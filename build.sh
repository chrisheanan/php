#!/bin/bash

[ "$#" -eq 1 ] || { echo "Please provide a PHP version tag"; exit 1; }

PHP=$1

docker build \
    -t cheanan/php:$PHP \
    -t cheanan/php:$PHP-fpm \
    -t cheanan/php:latest \
    .

docker build \
    -t cheanan/php:$PHP-gd \
    -t cheanan/php:$PHP-fpm-gd \
    -t cheanan/php:gd \
    -t cheanan/php:fpm-gd \
    gd/.

docker build \
    -t cheanan/php:$PHP-composer \
    -t cheanan/php:composer \
    composer/.
