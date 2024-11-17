# Base image: https://github.com/docker-library/php/blob/master/8.3/bookworm/fpm/Dockerfile
ARG PHP_VERSION=8.3

FROM php:${PHP_VERSION}-fpm

# Install Nginx and system dependencies
RUN apt-get update && apt-get install -y \
    nginx \
    supervisor \
    sudo \
    lsof \
    man \
    vim

# Install & enable Xdebug
RUN pecl install xdebug-3.3.2 \
    && docker-php-ext-enable xdebug

# Configure Xdebug
RUN sed -i '1 a xdebug.mode=debug' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
&& sed -i '1 a xdebug.client_host=host.docker.internal' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Copy the default nginx.conf provided by the base image just for reference
RUN cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

# Copy the custom nginx.conf to the container running Nginx
COPY docker/nginx.conf /etc/nginx/nginx.conf

# Copy the custom supervisord.conf to the container running Supervisor
COPY docker/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080

CMD ["/usr/bin/supervisord"]

