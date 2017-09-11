FROM php:7.1-fpm

MAINTAINER Mazedur Rahman <mazedur.rahman.liton@gmail.com>

# libghc-zlib-dev is required by zip extension
RUN apt-get update && apt-get install -my \
	git \
	libghc-zlib-dev \
	postgresql-client-9.4 && \
	apt-get clean

# Lumen pre-requisites + other regular extensions
RUN docker-php-ext-install opcache zip
# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Install Lumen installer
RUN composer global require "laravel/lumen-installer"
ENV PATH ~/.composer/vendor/bin:$PATH

# Dev only
#RUN pecl install xdebug
