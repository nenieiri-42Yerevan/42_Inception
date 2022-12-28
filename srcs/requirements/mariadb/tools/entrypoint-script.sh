#!/bin/bash

service mysql start;

cd /tmp;

echo "create database $MYSQL_DATABASE;" > ./install.sql;

echo -n "grant all privileges on $MYSQL_DATABASE.* " >> ./install.sql;
echo "to $MYSQL_USER@localhost identified by '$MYSQL_PASSWORD';" >> ./install.sql;

echo -n "ALTER USER 'root'@'localhost' " >> ./install.sql;
echo "IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" >> ./install.sql;

echo "flush privileges;" >> ./install.sql;

mariadb < ./install.sql;

rm -f ./install.sql;

exec "$@";
