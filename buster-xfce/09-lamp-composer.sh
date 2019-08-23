#!/usr/bin/env bash

clear

lamp_install() {
    echo -e "
Este script instalará um ambiente de desenvolvimento web
com os seguintes componentes:

· Apache
· MariaDB
· PHP
· Composer

Além disso ele irá configurar:

· Apache mod rewrite
· Uma pasta 'public_html' na home do usuário
· Uma base de dados segura para o MariaDB

Deseja prosseguir (s/N)? \c
"
    read answer

    if [[ $answer = [sSyY] ]]; then
        install_apache
        
        echo -e "\nDeseja habilitar o mod rewrite (s/N)? \c"
        read answer
        [[ $answer = [sSyY] ]] && config_modrw
        
        echo -e "\nDeseja criar a pasta public_html na sua home (s/N)? \c"
        read answer
        [[ $answer = [sSyY] ]] && config_public_html
        
        echo -e "\nDeseja instalar o PHP agora (s/N)? \c"
        read answer
        if [[ $answer = [sSyY] ]]; then
            install_php
            echo -e "\nDeseja instalar o Composer agora (s/N)? \c"
            read answer
            [[ $answer = [sSyY] ]] && install_composer
        fi
        
        echo -e "\nDeseja instalar o MariaDB agora (s/N)? \c"
        read answer
        [[ $answer = [sSyY] ]] && install_mariadb
        
        sair
    else
        sair
    fi

}

install_apache() {
    echo -e "Instalando o servidor Apache 2\n"
    sudo apt install apache2 apache2-utils
}

config_modrw() {
    echo -e "\nHabilitando Apache mod rewrite..."
    sudo a2enmod rewrite
    sudo systemctl restart apache2.service
}

config_public_html() {
    echo -e "\nCriando pasta public_html..."
    mkdir -p "$HOME/public_html"
    sudo ln -s "$HOME/public_html" "/var/www/html/$USER"
}

config_mariadb() {
    echo ""
    sudo mysql_secure_installation
}

install_php() {
    echo -e "Instalando o PHP\n"
    
    sudo apt install php \
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
                     php-bcmath
}

install_mariadb() {
    echo -e "Instalando o MariaDB\n"
    sudo apt install mariadb-server \
                     mariadb-client
                     
    echo -e "\nDeseja configurar o MariaDB agora (s/N)? \c"
    read answer
    [[ $answer = [sSyY] ]] && config_mariadb
}

install_composer() {
    echo -e "\nComposer install...\n"

    curl -sS https://getcomposer.org/installer | php
    sudo mv composer.phar /usr/local/bin/composer
    sudo chmod +x /usr/local/bin/composer
}

sair() {
    echo -e "\nSaindo...\n"
    exit 0
}

lamp_install
