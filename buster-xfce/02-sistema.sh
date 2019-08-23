#!/usr/bin/env bash

clear

echo -e "
Com este script, você pode instalar as ferramentas de sistema do Gnome. 

O 'gnome-system-tools' pode ser útil para gerenciar usuários pela interface gráfica.

Deseja instalá-lo agora (s/N)? \c
"
read answer
[[ $answer = [sSyY] ]] && sudo apt install gnome-system-tools

echo -e "\nSaindo...\n"

exit 0
