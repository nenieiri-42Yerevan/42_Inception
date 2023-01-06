#!/bin/bash

if ! [ -f "/var/www/wordpress/wp-config.php" ]; then
	sed -i "s/_data_sql/$MYSQL_DATABASE/g" ./wordpress/wp-config.php;
	sed -i "s/_username/$MYSQL_USER/g"	   ./wordpress/wp-config.php;
	sed -i "s/_password/$MYSQL_PASSWORD/g" ./wordpress/wp-config.php;
	sed -i "s/localhost/$MYSQL_HOSTNAME/g" ./wordpress/wp-config.php;

	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

	chmod +x wp-cli.phar

	mv wp-cli.phar /usr/local/bin/wp
fi

exec "$@";
