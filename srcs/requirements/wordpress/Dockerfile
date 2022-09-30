FROM debian:buster

EXPOSE 9000

RUN apt-get -y update
RUN apt-get -y install php-cgi \
						php-common \
						php-fpm \
						php-pear \
						php-mbstring \
						php-zip \
						php-net-socket \
						php-gd \
						php-xml-util \
						php-gettext \
						php-mysql \
						php-bcmath \
						wget


#PHP FPM
COPY ./config/wp_pool.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /run/php

#Install WordPress
RUN mkdir -p /var/www/wp/

COPY ./config/wp-config.php /home

RUN wget http://wordpress.org/latest.tar.gz

RUN tar -xvf latest.tar.gz

RUN rm latest.tar.gz

RUN mv -f wordpress /var/www/wp/

RUN chown -R www-data:www-data /var/www/wp/wordpress

RUN rm /var/www/wp/wordpress/wp-config-sample.php

RUN mv /home/wp-config.php /var/www/wp/wordpress/

CMD ["php-fpm7.3", "-F"]
