#!/bin/sh

#Init Database if not already done
if [ ! -d /var/lib/mysql/mysql ]; then
	mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
fi

#Run mariadb w/ fg logging

exec mysqld --user=mysql --datadir=/var/lib/mysql
