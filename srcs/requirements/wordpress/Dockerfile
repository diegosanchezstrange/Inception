FROM debian:buster

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

CMD ["sleep", "20000"]
