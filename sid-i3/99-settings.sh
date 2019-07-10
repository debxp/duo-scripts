#!/usr/bin/env bash

# copy .config files

echo -e "\nCopiando arquivos de configuração..."

if [ ! -d "$HOME/.config" ]; then
    mkdir "$HOME/.config"
fi

cp -R config/i3 "$HOME/.config/"
cp -R config/i3blocks "$HOME/.config/"
cp -R config/nitrogen "$HOME/.config/"
cp -R config/xfce4 "$HOME/.config/"
cp  config/user-dirs.dirs "$HOME/.config/"

# create user dirs

echo -e "Criando pastas do usuário..."

mkdir "$HOME/desktop"
mkdir "$HOME/documents"
mkdir "$HOME/downloads"
mkdir "$HOME/music"
mkdir "$HOME/pictures"
mkdir "$HOME/public"
mkdir "$HOME/templates"
mkdir "$HOME/videos"

# copy ~/.local/bin scripts

echo -e "Copiando scripts..."

if [ ! -d "$HOME/.local" ]; then
    mkdir "$HOME/.local"
fi

cp -R bin "$HOME/.local/"

# copy/install artwork files

echo -e "Copiando fontes e papéis de parede..."

cp -R artwork/wallpapers "$HOME/pictures/"

sudo cp -R artwork/fonts/mac-fonts /usr/share/fonts/truetype/

# set default wallpaper

echo -e "Aplicando papel de parede..."

sed -i "s/USER/$USER/g" $HOME/.config/nitrogen/nitrogen.cfg
sed -i "s/USER/$USER/g" $HOME/.config/nitrogen/bg-saved.cfg 

echo -e "\nPronto!\n"

exit 0
