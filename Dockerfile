FROM php:7.4-fpm

LABEL maintainer="Christopher David Heanan"

RUN apt-get update && apt-get install -y \
    build-essential \
    libicu-dev \
    libonig-dev \
    libzip-dev \
    zip \
    unzip \
    locales \
    libcurl4-gnutls-dev \
    openssl \
    curl

RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl curl intl

COPY ./log.conf /usr/local/etc/php-fpm.d/zz-log.conf

RUN apt autoclean \
    && apt clean \
    && apt -y autoremove \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
