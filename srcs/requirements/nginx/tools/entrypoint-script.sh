#!/bin/bash

nginx=/etc/nginx/sites-available/nginx.conf;

sed -i "s=CERTIFICATE_ENV=$CERTIFICATE=g"			$nginx;
sed -i "s=CERTIFICATE_KEY_ENV=$CERTIFICATE_KEY=g"	$nginx;
sed -i "s=DOMAIN_NAME=$DOMAIN_NAME=g"				$nginx;
sed -i "s=WORDPRESS_NET=$WORDPRESS_NET=g"			$nginx;

exec "$@";
