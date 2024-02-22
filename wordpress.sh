#!/bin/bash
# Config CMS Wordpress and install
# Download wordpress
wget https://wordpress.org/latest.tar.gz
# Delete the default html directory
rm -rf /var/www/html
# Uncompress the wordpress file
tar -xzf latest.tar.gz -C /var/www/
# Delete the wordpress file
rm latest.tar.gz
# Change the name of the wordpress directory to html
mv /var/www/wordpress /var/www/html
# Config database
mysql --user=root <<_EOF_
CREATE DATABASE example;
CREATE USER 'example'@'localhost' IDENTIFIED BY 'example';
GRANT ALL PRIVILEGES ON *.* TO 'example'@'localhost';
FLUSH PRIVILEGES;
_EOF_
# Config wordpress file configuration with the database
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
# Config database name
sed -i "s/database_name_here/example/g" /var/www/html/wp-config.php
# Config database user
sed -i "s/username_here/example/g" /var/www/html/wp-config.php
# Config database password
sed -i "s/password_here/example/g" /var/www/html/wp-config.php
# Permissions for the wordpress directory
chown -R www-data:www-data /var/www/html
