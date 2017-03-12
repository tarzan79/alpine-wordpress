# Use Alpine Linux
FROM tarzan79/alpine-php-fpm:latest

ENV VERSION 4.7.3

RUN mkdir /var/www/sites
RUN cd /var/www/sites
RUN apk update
RUN apk add unzip
RUN curl -O https://fr.wordpress.org/wordpress-${VERSION}-fr_FR.zip
RUN unzip wordpress-${VERSION}-fr_FR.zip
RUN rm wordpress-${VERSION}-fr_FR.zip
    
WORKDIR /var/www/wordpress