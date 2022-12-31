#!/bin/bash

sed -i "s/DOMAIN_NAME/$DOMAIN_NAME/g"	  /etc/nginx/sites-available/nginx.conf;
sed -i "s/WORDPRESS_NET/$WORDPRESS_NET/g" /etc/nginx/sites-available/nginx.conf;

exec "$@";
