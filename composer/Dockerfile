FROM php:7.3-cli-alpine

LABEL maintainer="Christopher David Heanan"

RUN apk add --update \
    git \
    zip \
    icu-dev \
    icu-libs \
    curl \
    curl-dev \
    libzip-dev \
    openssl-dev

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN docker-php-ext-install mbstring curl intl zip

RUN rm -rf /var/cache/apk/*

COPY "php-memory-limit.ini" "$PHP_INI_DIR/conf.d/php-memory-limit.ini"

# RUN php -r "echo ini_get('memory_limit').PHP_EOL;"

ENTRYPOINT [ "composer" ]

CMD [ "list" ]
