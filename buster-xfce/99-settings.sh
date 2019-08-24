#!/usr/bin/env bash

clear

SCRIPT_PATH=$(dirname "$0")

# Criando pastas

mkdir -p $HOME/.local/
mkdir -p $HOME/.local/opt

# Artwork

echo -e "\nCopiando fontes e papéis de parede..."
sudo cp -r $SCRIPT_PATH/artwork/wallpapers /usr/share/backgrounds/
sudo cp -r $SCRIPT_PATH/artwork/fonts/* /usr/share/fonts/truetype/
sudo fc-cache -f

echo -e "Criando imagem de usuário..."
cp $SCRIPT_PATH/artwork/icons/debxp-diversos/menu-places.svg $HOME/.face

# Temas de ícones

echo -e "Aplicando temas de ícones..."
sudo cp -r $SCRIPT_PATH/artwork/icons/debxp-paper-folders /usr/share/icons/
sudo cp -r $SCRIPT_PATH/artwork/icons/Numix-Circle /usr/share/icons/
sudo cp -r $SCRIPT_PATH/artwork/icons/Numix-Circle-Light /usr/share/icons/
sudo cp -r $SCRIPT_PATH/artwork/icons/debxp-diversos /usr/share/icons/

echo -e "Atualizando cachê de ícones..."
sudo update-icon-caches /usr/share/icons/debxp-paper-folders

echo -e "Copiando temas do Rofi..."
sudo cp $SCRIPT_PATH/config/rofi/themes/* /usr/share/rofi/themes/

# Scripts diversos

echo -e "Instalando scripts globais..."
sudo cp $SCRIPT_PATH/bin/desktop-indicator /usr/bin/debxp-desktop-indicator
sudo cp $SCRIPT_PATH/bin/rofi-launcher /usr/bin/debxp-rofi-launcher

# Área de trabalho

echo -e "Configurando a área de trabalho...\n"
cp -r $SCRIPT_PATH/config $HOME/.config

echo -e "Pronto!\n"
