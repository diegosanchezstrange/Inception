FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

EXPOSE 443

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
       -keyout /etc/nginx/ssl/selfsigned.key \
       -out /etc/nginx/ssl/selfsigned.crt \
       -subj "/C=ES/ST=Madrid/L=Madrid/O=42/OU=42madrid/CN=dsanchez.42.fr"

COPY ./conf/nginx.conf /etc/nginx/

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf 

#CMD ["sleep", "20000"]
CMD ["nginx"]
