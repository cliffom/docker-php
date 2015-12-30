FROM ubuntu:15.04
MAINTAINER Michael Clifford <cliffom@gmail.com>

RUN apt-get update && apt-get install -y wget curl php5-common php5-cli php5-mcrypt php5-mysql php5-pgsql php5-gd php5-imagick php5-curl php5-intl && apt-get clean
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 8000 8080
VOLUME /php
WORKDIR /php