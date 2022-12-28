#!/bin/bash

service mysql start;

echo "create database wordpress;" > /tmp/install.sql;

echo -n "grant all privileges on wordpress.* " >> /tmp/install.sql;
echo "to wpuser@localhost identified by 'your-password';" >> /tmp/install.sql;

echo "flush privileges;" >> /tmp/install.sql;

mariadb < /tmp/install.sql;

exec "$@";
