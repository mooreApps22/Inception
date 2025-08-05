#!/bin/sh

chown -R www-data:www-data /var/www/html

#Start PHP-FPM in the foreground (needed for docker)
exec php-fpm81 --nodaemonize
