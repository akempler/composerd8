FROM php:5.6-apache
MAINTAINER Adam Kempler <akempler@gmail.com>

RUN rm /bin/sh \
 && ln -s /bin/bash /bin/sh
 
# Fix permissions on Mac
RUN usermod -u 1000 www-data \
 && usermod -G staff www-data

RUN apt-get update \
  && apt-get install -y \
    libpng12-dev \
    libjpeg-dev \
    libpq-dev \
    libxml2-dev \
    libfreetype6-dev \
    libmcrypt-dev \
    supervisor \
    vim \
    php5-mysql \
    mysql-client \
    vim \
  && docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr \
  && docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql mysql mysqli zip soap xmlrpc

# for fpm would be /etc/php5/fpm/php.ini
# /usr/local/etc/php/php.ini
# Enable apache mods
RUN a2enmod rewrite \
 && a2enmod ssl \
 && a2enmod headers
  
RUN echo "file_uploads = On\n" \
    "memory_limit = 256M\n" \
    "upload_max_filesize = 500M\n" \
    "post_max_size = 500M\n" \
    "max_execution_time = 600\n" \
    > /usr/local/etc/php/conf.d/tweaks.ini


ADD conf/drupal8.conf /etc/apache2/sites-available/
ADD conf/source.conf /etc/apache2/sites-available/
#ADD conf/00_opcache.ini /usr/local/etc/php/conf.d/
ADD conf/00_xdebug.ini /usr/local/etc/php/conf.d/

WORKDIR /var/www/html
