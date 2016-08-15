FROM php:latest
MAINTAINER Adam Kempler <akempler@gmail.com>


ENTRYPOINT '/root/entrypoint.sh'

RUN rm /bin/sh \
 && ln -s /bin/bash /bin/sh
 
 RUN apt-get update \
 && apt-get install -y \
 	libpng12-dev libjpeg-dev libpq-dev \
    build-essential \
    mysql-client \
    php5-mysql \
    supervisor \
    git \
    curl \
    wget \
    ruby-full \
    rubygems \
    php5-cli \
    php5-common \
    vim \
    zip \
 && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
 && docker-php-ext-install gd mbstring opcache pdo pdo_mysql pdo_pgsql zip \
 && apt-get clean


RUN curl -sS https://getcomposer.org/installer | php \
 && mv composer.phar /usr/local/bin/composer
 

# Install Drush
RUN composer global require drush/drush \
 && composer global update \
 && ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush
 

# Install Compass
RUN gem update --system \
 && gem install compass


ADD entrypoint.sh /root
RUN chmod +x /root/entrypoint.sh 
