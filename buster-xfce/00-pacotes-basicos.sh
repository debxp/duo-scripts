#!/usr/bin/env bash

clear

pacotes_basicos() {
echo -e "
Nesta etapa, nós vamos instalar os pacotes:

· build-essential - pacotes para compilação e empacotamento
· curl            - ferramenta para transferência de dados
· lynx            - navegador web CLI

Posteriormente, você poderá decidir se quer instalar pacotes de firmware non-free.

Podemos prosseguir (s/N)? \c
"
    read answer
    if [[ $answer = [sSyY] ]]; then
        echo -e "\nInstalando...\n"
        sudo apt install build-essential curl lynx
        firmware_nonfree
    else
        sair
    fi
}

firmware_nonfree() {
echo -e "
Você também npode instalar os pacotes de firmware non-free mais comuns:

· firmware-linux-nonfree
· firmware-atheros
. firmware-realtek

Deseja instalar os pacotes acima (s/N)? \c
"
    read answer
    if [[ $answer = [sSyY] ]]; then
        echo -e "\nInstalando...\n"
        sudo apt install firmware-linux-nonfree \
                         firmware-atheros \
                         firmware-realtek
    fi
    sair
}

sair() {
    echo -e "\nSaindo...\n"
    exit 0
}

pacotes_basicos
