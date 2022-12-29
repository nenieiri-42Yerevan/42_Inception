#!/bin/bash

cd /tmp;

mysql_install_db;

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" > ./install.sql;
echo -n "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* " >> ./install.sql;
echo "TO $MYSQL_USER@localhost IDENTIFIED BY '$MYSQL_PASSWORD';" >> ./install.sql;
echo "FLUSH PRIVILEGES;" >> ./install.sql;

echo -n "ALTER USER 'root'@'localhost' " >> ./install.sql;
echo "IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" >> ./install.sql;
echo "FLUSH PRIVILEGES;" >> ./install.sql;

service mysql start;
mariadb -u root --password=$MYSQL_ROOT_PASSWORD < install.sql;

exec mysqld --init-file=/tmp/install.sql

#exec "$@";
