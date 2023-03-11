FROM debian:buster

EXPOSE 9000

ARG DB_USER
ARG DB_PASS
ARG DB_NAME
ARG WP_ADMIN_NAME
ARG WP_ADMIN_PASS
ARG WP_ADMIN_EMAIL
ARG WP_USER_NAME
ARG WP_USER_PASS
ARG WP_USER_EMAIL

ENV DB_USER ${DB_USER}
ENV DB_PASS ${DB_PASS}
ENV DB_NAME ${DB_NAME}

ENV WP_ADMIN_NAME ${WP_ADMIN_NAME}
ENV WP_ADMIN_PASS ${WP_ADMIN_PASS}
ENV WP_ADMIN_EMAIL ${WP_ADMIN_EMAIL}

ENV WP_USER_NAME ${WP_USER_NAME}
ENV WP_USER_PASS ${WP_USER_PASS}
ENV WP_USER_EMAIL ${WP_USER_EMAIL}

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
	mariadb-client \
	wget


#PHP FPM
COPY ./config/wp_pool.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /run/php

#Install WordPress
RUN mkdir -p /var/www/html

RUN chown -R www-data:www-data /var/www/html

COPY ./config/wp-config.php /home

COPY ./tools/start.sh /home

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv -f wp-cli.phar /usr/local/bin/wp

WORKDIR "/var/www/html"

RUN chmod +x /home/start.sh

CMD ["/home/start.sh"]
