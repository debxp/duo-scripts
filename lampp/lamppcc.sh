#!/usr/bin/env bash

# Apache
sudo apt install apache2 apache2-utils
sudo a2enmod rewrite
sudo systemctl restart apache2.service

# Pasta public_html do usuário padrão...
mkdir -p "$HOME/public_html"
sudo ln -s "$HOME/public_html" "/var/www/html/$USER"

# MariaDB
sudo apt install mariadb-server mariadb-client

# Configuração inicial do MariaDB
sudo mysql_secure_installation

# PHP

sudo apt install php libapache2-mod-php php-cli php-fpm \
                 php-json php-pdo php-mysql php-zip \
                 php-gd php-mbstring php-curl php-xml \
                 php-pear php-bcmath

# Composer

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

# Cockpit (Debian)
sudo apt install cockpit
