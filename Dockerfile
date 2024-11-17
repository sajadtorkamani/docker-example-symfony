# Base image:  https://github.com/docker-library/php/blob/master/8.3/bookworm/fpm/Dockerfile
ARG PHP_VERSION=8.3

FROM php:${PHP_VERSION}-fpm

RUN apt-get update && apt-get install -y \
    vim \
    nginx # v1.22.1

EXPOSE 80
