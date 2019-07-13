#!/usr/bin/env bash

# VirtualBox

sudo apt install virtualbox
sudo usermod -aG vboxusers $USER
groups $USER

tput setaf 3
echo -e "\nPara adicionar a Extension Pack, visite a URL:
https://www.virtualbox.org/wiki/Downloads
e baixe a opção adequada para a sua versão do VirtualBox."
tput sgr0

echo -e "\nPronto!\n"
