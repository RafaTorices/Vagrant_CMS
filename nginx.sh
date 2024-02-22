#!/bin/bash
# Config software and install
# Update system
apt-get update
# Install nginx, mysql, php and mysql libraries
apt-get install -y nginx nginx mysql-server mysql-common php-fpm \
    php-mysql expect php-curl php-gd php-intl php-mbstring php-soap php-xml \
    php-xmlrpc php-zip
# Remove default nginx configuration to configure our own site
rm /etc/nginx/sites-available/default
# Pass the configuration of the our site we are going to create to nginx
cat <<EOF >/etc/nginx/sites-available/default
server {
    listen 80;
    server_name localhost;
    root /var/www/html;
    index index.php;
    location / {
        try_files \$uri \$uri/ = 404;
    }
    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/var/run/php/php8.1-fpm.sock;
    }
    location ~ /\.ht {
        deny all;
    }
}
EOF
# Restart nginx to apply the new site and apply the changes
systemctl restart nginx
# Restart php-fpm to apply the new site
systemctl restart php8.1-fpm
