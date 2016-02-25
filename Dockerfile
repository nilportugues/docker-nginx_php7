FROM phusion/baseimage

MAINTAINER Nil Portugués Calderó <contact@nilportugues.com>

CMD ["/sbin/my_init"]

RUN apt-get install -y language-pack-en-base
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install snmp php \
    phpbz2  \
    phpcgi  \
    phpcli  \
    phpcommon  \
    phpcurl  \
    phpdbg  \
    phpdev  \
    phpfpm  \
    phpgd  \
    phpimap  \
    phpinterbase  \
    phpintl  \
    phpjson  \
    phpldap  \
    phpmcrypt  \
    phpmysql  \
    phpodbc  \
    phpopcache  \
    phppgsql  \
    phpphpdbg  \
    phppspell  \
    phpreadline  \
    phprecode  \
    phpsnmp  \
    phpsqlite3  \
    phpsybase  \
    phptidy  \
    phpxmlrpc \
    openssl \
    php-mongodb \
    php-redis \
    php-apcu \
    php-amqp \
    php-memcached

RUN sudo pecl install mongodb
ADD 20-mongodb.ini /etc/php/7.0/cli/conf.d/20-mongodb.ini
ADD 20-mongodb.ini /etc/php/7.0/phpdbg/conf.d/20-mongodb.ini
ADD 20-mongodb.ini /etc/php/7.0/fpm/conf.d/20-mongodb.ini
ADD 20-mongodb.ini /etc/php/7.0/cgi/conf.d/20-mongodb.ini
RUN /etc/init.d/phpfpm restart

RUN apt-get update && apt-get install -y python-software-properties
RUN add-apt-repository ppa:nginx/stable
RUN apt-get update && apt-get install -y nginx nginx-extras

ADD config/mime.types /etc/nginx/mime.types
ADD config/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/log/nginx
RUN mkdir -p /usr/share/nginx/logs/
RUN mkdir -p /etc/nginx/sites-available/
RUN mkdir -p /etc/nginx/sites-enabled/
RUN mkdir -p /etc/nginx/logs/
RUN mkdir -p /etc/nginx/helpers/
RUN mkdir -p /etc/service/nginx

RUN touch /etc/nginx/logs/error.log
RUN touch /etc/nginx/helpers/extra.conf
RUN touch /var/log/nginx/access.log
RUN touch /var/log/nginx/error.log
RUN touch /usr/share/nginx/logs/error.log

ADD start.sh /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run


EXPOSE 8080
EXPOSE 4430

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

