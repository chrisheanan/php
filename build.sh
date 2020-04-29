#!/bin/bash

PHP=7.3

docker build \
    -t cheanan/php:$PHP \
    -t cheanan/php:$PHP-fpm \
    .

docker build \
    -t cheanan/php:$PHP-gd \
    -t cheanan/php:$PHP-fpm-gd \
    gd/.

docker build \
    -t cheanan/php:$PHP-composer \
    composer/.
