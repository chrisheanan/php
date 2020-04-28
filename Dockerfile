FROM php:7.4-fpm

LABEL maintainer="Christopher David Heanan"

RUN apt-get update && apt-get install -y \
    build-essential \
    libicu-dev \
    libonig-dev \
    zip \
    locales \
    libcurl4-gnutls-dev \
    curl

RUN docker-php-ext-install pdo_mysql mbstring curl intl pcntl exif

COPY ./log.conf /usr/local/etc/php-fpm.d/zz-log.conf

RUN apt autoclean \
    && apt clean \
    && apt -y autoremove \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
