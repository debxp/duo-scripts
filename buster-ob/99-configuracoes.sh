#!/usr/bin/env bash

clear

echo -e "\nChecando pastas de destino..."

[[ -d "$HOME/.config" ]] || mkdir "$HOME/.config"
[[ -d "$HOME/.local" ]] || mkdir "$HOME/.local"
[[ -d "$HOME/.local/share" ]] || mkdir "$HOME/.local/share"
[[ -d "$HOME/.local/opt" ]] || mkdir "$HOME/.local/opt"

echo -e "\nCopiando arquivos de configuração..."

cp -R config/openbox "$HOME/.config/"
cp -R config/nitrogen "$HOME/.config/"
cp -R config/compton "$HOME/.config/"
cp -R config/gtk-3.0 "$HOME/.config/"
cp -R config/rofi "$HOME/.config/"
cp -R config/xfce4 "$HOME/.config/"
cp home/gtkrc-2.0 "$HOME/.gtkrc-2.0"
cp home/bash_profile "$HOME/.bash_profile"


echo -e "\nCopiando scripts..."

cp -R bin "$HOME/.local/"

echo -e "Copiando fontes e papéis de parede..."

cp -R artwork/wallpapers "$HOME/.local/share/"
cp -R artwork/fonts "$HOME/.local/share/"

echo -e "Aplicando configurações de usuário..."

sed -i "s/USER/$USER/g" $HOME/.gtkrc-2.0
sed -i "s/USER/$USER/g" $HOME/.config/nitrogen/nitrogen.cfg
sed -i "s/USER/$USER/g" $HOME/.config/nitrogen/bg-saved.cfg 

echo -e "\nPronto!\n"
