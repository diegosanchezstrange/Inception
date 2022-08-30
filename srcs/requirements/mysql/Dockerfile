
FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir /run/mysqld

RUN chown -R mysql:mysql /var/lib/mysql /run/mysqld

CMD ["mysqld", "--user=mysql", "--console" ]
