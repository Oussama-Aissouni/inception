#!bin/bash

mkdir -p /var/www/
mkdir -p /var/www/html/
cd /var/www/html
rm -rf *
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root --path=/var/www/html

wp config create --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=$DB_HOST --allow-root
wp core install --url=oaissoun.42.fr --title="WP-CLI" --admin_user=$ADMIN_USERNAME --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root
wp user create $USERNAME $EMAIL --role=author --user_pass=$PASS --allow-root

mkdir -p /run/php


/usr/sbin/php-fpm7.3 -F -O