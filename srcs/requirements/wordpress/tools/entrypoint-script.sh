#!/bin/bash

sed -i "s/_data_sql/$MYSQL_DATABASE/g" ./wordpress/wp-config.php;
sed -i "s/_username/$MYSQL_USER/g"	   ./wordpress/wp-config.php;
sed -i "s/_password/$MYSQL_PASSWORD/g" ./wordpress/wp-config.php;
sed -i "s/localhost/$MYSQL_HOSTNAME/g" ./wordpress/wp-config.php;

exec "$@";
