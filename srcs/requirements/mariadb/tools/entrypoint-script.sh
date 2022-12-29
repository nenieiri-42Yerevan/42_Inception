#!/bin/bash

cd /tmp;

service mysql start;

mysql_install_db --datadir=/var/lib/mysql;

echo "CREATE DATABASE $MYSQL_DATABASE;" > ./install.sql;

echo -n "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* " >> ./install.sql;
echo "TO $MYSQL_USER@localhost IDENTIFIED BY '$MYSQL_PASSWORD';" >> ./install.sql;

echo -n "ALTER USER 'root'@'localhost' " >> ./install.sql;
echo "IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" >> ./install.sql;

echo "FLUSH PRIVILEGES;" >> ./install.sql;

mariadb < ./install.sql;

rm -f ./install.sql;

exec "$@";
