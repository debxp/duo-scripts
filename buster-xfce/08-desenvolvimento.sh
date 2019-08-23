#!/usr/bin/env bash

clear

desenvolvimento() {
    echo -e "
Este script instalará:

· Geany - Editor de textos e IDE
· Vim   - Editor de textos e IDE CLI

Podemos prosseguir (s/N)? \c
"
    read answer
    if [[ $answer = [SsYy] ]]; then
        sudo apt install geany geany-plugins vim
        sair
    else
        sair
    fi
}

sair() {
    echo -e "\nSaindo...\n"
    exit 0
}

desenvolvimento
