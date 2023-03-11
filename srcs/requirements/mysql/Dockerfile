FROM debian:buster

ARG DB_USER
ARG DB_PASS
ARG DB_NAME
ARG DB_ROOT_PASS

#ENV DB_USER ${DB_USER}
#ENV DB_PASS ${DB_PASS}
#ENV DB_NAME ${DB_NAME}

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir /run/mysqld

RUN chown -R mysql:mysql /var/lib/mysql /run/mysqld

COPY ./tools/db.sql .

RUN sed -i "s/DB_USER/$DB_USER/g" ./db.sql
RUN sed -i "s/DB_NAME/$DB_NAME/g" ./db.sql
RUN sed -i "s/DB_PASS/$DB_PASS/g" ./db.sql
RUN sed -i "s/DB_ROOT_PASS/$DB_ROOT_PASS/g" ./db.sql

RUN service mysql start && mysql < db.sql

EXPOSE 3306

CMD ["mysqld", "--user=wp", "--bind-address=0.0.0.0", "--skip-networking=false", "--console" ]
