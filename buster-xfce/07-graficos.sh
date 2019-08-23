#!/usr/bin/env bash

clear

graficos() {
    echo -e "
Este script instalará:

· Inkscape     - Editor de imagens vetoriais
· Gimp         - Editor de imagens
· Font Manager - Gestor de fontes

Podemos prosseguir (s/N)? \c
"
    read answer
    if [[ $answer = [SsYy] ]]; then
    sudo apt install inkscape \
                     gimp \
                     font-manager
    else
        sair
    fi
    while true; do
echo -e "
Qual visualizador de imagens voce prefere instalar agora?

1. Ristretto
2. gThumb
3. Eye of Gnome

Q. Sair

Escolha o número da sua opção: \c
"
        read answer
        case $answer in
            1)    ristretto_install;;
            2)    gthumb_install   ;;
            3)    eog_install      ;;
            [qQ]) sair             ;;
        esac
    done
}

ristretto_install() {
    sudo apt install ristretto
    sair
}

gthumb_install() {
    sudo apt install gthumb
    sair
}

eog_install() {
    sudo apt install eog
    sair
}

sair() {
    echo -e "\nSaindo...\n"
    exit 0
}

graficos
