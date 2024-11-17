# Base image:  https://github.com/docker-library/php/blob/master/8.3/bookworm/fpm/Dockerfile
ARG PHP_VERSION=8.3

FROM php:${PHP_VERSION}-fpm

# Install Nginx and system dependencies
RUN apt-get update && apt-get install -y \
    nginx \
    supervisor \
    vim

# Copy the default nginx.conf provided by the base image just for reference
RUN cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

# Copy the custom nginx.conf to the container running Nginx
COPY docker/nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080
