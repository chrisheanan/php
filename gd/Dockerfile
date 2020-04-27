FROM php:7.3-fpm

LABEL maintainer="Christopher David Heanan"

RUN apt-get update && apt-get install -y \
    build-essential \
    libicu-dev \
    zip \
    locales \
    libcurl4-gnutls-dev \
    curl \
    libfreetype6-dev \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libpng-dev

RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/
RUN docker-php-ext-install pdo_mysql mbstring curl intl pcntl exif gd

RUN apt autoclean \
    && apt clean \
    && apt -y autoremove \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./log.conf /usr/local/etc/php-fpm.d/zz-log.conf

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]

