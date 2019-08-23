#!/usr/bin/env bash

clear

escritorio() {
echo -e "
Este script instalará:

· LibreOffice - Suíte de escritório completa
· Atril       - Leitor de documentos
· GoldenDict  - Dicionário
· Galculator  - Calculadora

Podemos prosseguir (s/N)? \c
"
    read answer
    if [[ $answer = [SsYy] ]]; then
        sudo apt install libreoffice \
                         libreoffice-l10n-pt-br \
                         libreoffice-gnome \
                         libreoffice-style-breeze \
                         atril \
                         poppler-utils \
                         goldendict \
                         galculator

        sair
    else
        sair
    fi
}

sair() {
    echo -e "\nSaindo...\n"
    exit 0
}

escritorio
