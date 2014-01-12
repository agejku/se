#!/usr/bin/env bash

apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -q -y --force-yes apache2 mysql-server-5.5 libapache2-mod-auth-mysql php5-mysql php5 libapache2-mod-php5 php5-mcrypt

mysql -uroot -e "UPDATE mysql.user SET password=PASSWORD('') WHERE user='root'; FLUSH PRIVILEGES;"
mysql -uroot -e "CREATE DATABASE mydb;"
mysql -uroot mydb < /vagrant/mydb_2014-01-12.sql

rm -fr /var/www
ln -fs /vagrant /var/www

service mysql restart
service apache2 restart
