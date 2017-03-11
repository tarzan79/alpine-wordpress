FROM tarzan79/alpine-nginx:latest

COPY ./root/etc/nginx/conf.d/wordpress.conf /etc/nginx/conf.d/wordpress.conf

RUN mkdir /var/www/sites

WORKDIR /var/www/sites

RUN apk add --update openssl curl && \
    cd /var/www && \
    curl -O https://wordpress.org/latest.zip && \
    unzip latest.zip && \
    rm latest.zip 