FROM composer:latest AS composer
FROM php:7.3-fpm-alpine
COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY ./.docker/php.ini $PHP_INI_DIR/php.ini

WORKDIR /app
