#!/bin/bash

wp --allow-root core download

wp --allow-root config create --dbhost=mysql --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS

wp --allow-root db create

wp --allow-root core install --url=dsanchez.42.fr --title=Inception --admin_user=diego --admin_password=password --admin_email=dsanchez@student.42madrid.com

wp --allow-root user create diego dsanchez@student.42madrid.com --user_pass=1234

php-fpm7.3 -F
