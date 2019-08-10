#!/usr/bin/env bash

# copy .config files
echo -e "\nCopiando arquivos de configuração..."
cp -R config "$HOME/.config"
cp home/gtkrc-2.0 "$HOME/.gtkrc-2.0"
cp home/fehbg "$HOME/.fehbg"
cp home/bash_profile "$HOME/.bash_profile"

# user dirs
echo -e "Criando pastas do usuário..."
mkdir "$HOME/desktop"
mkdir "$HOME/docs"
mkdir "$HOME/downloads"
mkdir "$HOME/music"
mkdir "$HOME/pics"
mkdir "$HOME/pub"
mkdir "$HOME/templates"
mkdir "$HOME/videos"

# create ~/.local dirs 
echo -e "Criando pasta ~/.local..."
mkdir -p "$HOME/.local/opt"
mkdir -p "$HOME/.local/share"

# copy scripts to ~/.local/bin
echo -e "Copiando scripts..."
cp -R bin "$HOME/.local/"

# copy/install artwork files
echo -e "Copiando fontes e papéis de parede..."
cp -R artwork/wallpapers "$HOME/.local/share/"
cp -R artwork/fonts "$HOME/.local/share/"

# user settings...
echo -e "Aplicando configurações do usuário..."
sed -i "s/USER/$USER/g" $HOME/.gtkrc-2.0

echo -e "\nPronto!\n"

exit 0
