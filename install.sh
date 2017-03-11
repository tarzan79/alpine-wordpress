
cp ./root/etc/nginx/conf.d/wordpress.conf ../../root/etc/nginx/conf.d/wordpress.conf


cd ../root/var/www && \
curl -O https://wordpress.org/latest.zip && \
unzip latest.zip && \
rm latest.zip 