#!/bin/bash
# Joomla config

# Download joomla and install
wget https://downloads.joomla.org/cms/joomla5/5-0-3/Joomla_5-0-3-Stable-Full_Package.zip
unzip Joomla_5-0-3-Stable-Full_Package.zip -d /var/www/html
rm Joomla_5-0-3-Stable-Full_Package.zip
# Create the database for joomla
mysql --user=root <<_EOF_
CREATE DATABASE example;
CREATE USER 'example'@'localhost' IDENTIFIED BY 'example';
GRANT ALL PRIVILEGES ON *.* TO 'example'@'localhost';
FLUSH PRIVILEGES;
_EOF_
