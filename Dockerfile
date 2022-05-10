FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install apache2 -y 
COPY myports.conf /etc/apache2/ports.conf
RUN rm /var/www/html/index.html
COPY index.html /var/www/html/index.html
EXPOSE 8080
CMD apachectl -D FOREGROUND
