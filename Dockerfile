FROM   ubuntu:16.04
MAINTAINER JeriChen <jeri.chen0110@gmail.com>

# set some environment variables
ENV APP_NAME blog
ENV APP_EMAIL blog@laravel.com
ENV APP_DOMAIN blog.dev
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl
RUN apt-get install -y php7.0-cli php7.0
RUN php-pear php7.0-mysql php7.0-json php7.0-curl php7.0-gd
RUN php7.0-gmp php7.0-imap php7.0-mcrypt
RUN apt-get install -y php7.0-fpm
RUN apt-get install -y nginx
RUN echo mysql-server mysql-server/root_password password password | debconf-set-selections;\
    echo mysql-server mysql-server/root_password_again password password | debconf-set-selections;\
    apt-get install -y mysql-server
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
