#FROM  alpine
#FROM debian-slim

FROM  debian:stretch-slim

#stable-slim

RUN apt update 
RUN apt install apache2 wget  -y

RUN /etc/init.d/apache2 restart

WORKDIR /var/www/html
COPY ./20180706_novinano_mt_b2a03d4e0cbc53e87026180706071957_archive.zip ./
COPY ./20180706_novinano_mt_b2a03d4e0cbc53e87026180706071957_installer.php ./
#RUN chown -R www-data:www-data /var/www/html

RUN apt install -y apt-transport-https lsb-release ca-certificates 
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list
RUN apt update
RUN apt install -y php5.6 php5.6-cli php5.6-common php5.6-curl php5.6-mbstring php5.6-mysqlnd php5.6-xml zip


RUN unzip   /var/www/html/*.zip
RUN chown   www-data:www-data /var/www/*
#RUN chown  www-data:www-data /var/www/html/*installer.php 
#RUN chown  www-data:www-data /var/www/html/wp-config.php
#RUN apt install -y php-zip 
#RUN apt install -y libzip-dev zip && docker-php-ext-install zip

RUN /etc/init.d/apache2 restart

