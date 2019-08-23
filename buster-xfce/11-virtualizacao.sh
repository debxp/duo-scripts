#!/usr/bin/env bash

clear

echo -e "
Este script instalará o gerenciador de máquinas virtuais
'virt-manager'.

Deseja prosseguir (s/N)? \c
"
read answer
[[ $answer = [sSyY] ]] && sudo apt install virt-manager

echo -e "\nSaindo...\n"

exit 0
