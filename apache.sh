#!/bin/bash
# Config software and install
# Update system
apt-get update
# Install nginx, mysql, php and mysql libraries
apt-get install -y apache2 php mysql-server mysql-common php-fpm \
    php-mysql expect php-curl php-gd php-intl php-mbstring php-soap php-xml \
    php-xmlrpc php-zip libapache2-mod-php
systemctl restart apache2
