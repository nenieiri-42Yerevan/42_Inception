#!/bin/bash

sed -i "s/_data_sql/$MYSQL_DATABASE/g" wp-config.php;
sed -i "s/_username/$MYSQL_USER/g"	   wp-config.php;
sed -i "s/_password/$MYSQL_PASSWORD/g" wp-config.php;
sed -i "s/localhost/$MYSQL_HOSTNAME/g" wp-config.php;

exec "$@";
