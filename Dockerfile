FROM php:7.1-fpm-alpine

MAINTAINER Mazedur Rahman <mazedur.rahman.liton@gmail.com>

# PHP zip extension pre-requisite
RUN apk add --no-cache --virtual .build-deps zlib-dev
# Lumen pre-requisites
RUN docker-php-ext-install zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require "laravel/lumen-installer"
ENV PATH ~/.composer/vendor/bin:$PATH

# Dev only
#RUN pecl install xdebug
