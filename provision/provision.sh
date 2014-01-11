#!/usr/bin/env bash

apt-get update >/dev/null 2>&1
sudo DEBIAN_FRONTEND=noninteractive apt-get install -q -y --force-yes apache2 mysql-server-5.5 libapache2-mod-auth-mysql php5-mysql php5 libapache2-mod-php5 php5-mcrypt >/dev/null 2>&1

mysql -uroot -e "UPDATE mysql.user SET password=PASSWORD('') WHERE user='root'; FLUSH PRIVILEGES;"; >/dev/null

rm -fr /var/www
ln -fs /vagrant /var/www

service mysql restart >/dev/null
service apache2 restart >/dev/null
