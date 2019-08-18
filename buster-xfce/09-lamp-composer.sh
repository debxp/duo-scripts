#!/usr/bin/env bash

# Apache + PHP + MariaDB

sudo apt install apache2 \
                 apache2-utils \
                 php \
                 libapache2-mod-php \
                 php-cli \
                 php-fpm \
                 php-json \
                 php-pdo \
                 php-mysql \
                 php-zip \
                 php-gd \
                 php-mbstring \
                 php-curl \
                 php-xml \
                 php-pear \
                 php-bcmath \
                 php-sqlite3 \
                 mariadb-server \
                 mariadb-client


# Secure MariaDB server
echo -e "\nSecure database server..."
sudo mysql_secure_installation

# Habilita mod rewrite no Apache
echo -e "\nEnabling Apache mod rewrite..."
sudo a2enmod rewrite
sudo systemctl restart apache2.service

# Cria pasta public_html do usuário...
echo -e "\nCreating local public_html..."
mkdir -p "$HOME/public_html"
sudo ln -s "$HOME/public_html" "/var/www/html/$USER"

# Instalação do Composer
echo -e "\nComposer install...\n"

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

echo -e "\nPronto!\n"
