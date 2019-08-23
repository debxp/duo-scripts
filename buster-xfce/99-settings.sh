#!/usr/bin/env bash

clear


# Criando pastas

mkdir -p ~/.local/
mkdir -p ~/.local/opt

# Artwork

echo -e "\nCopiando fontes e papéis de parede..."
sudo cp -r artwork/wallpapers /usr/share/backgrounds/
sudo cp -r artwork/fonts/* /usr/share/fonts/truetype/
sudo fc-cache -f

echo -e "Criando imagem de usuário..."
cp artwork/icons/tux.png ~/.face

# Temas de ícones

echo -e "Aplicando temas de ícones..."
sudo cp -r artwork/icons/debxp-paper-folders /usr/share/icons/
sudo cp -r artwork/icons/Numix-Circle /usr/share/icons/
sudo cp -r artwork/icons/Numix-Circle-Light /usr/share/icons/
sudo cp -r artwork/icons/debxp-diversos /usr/share/icons/

echo -e "Atualizando cachê de ícones..."
sudo update-icon-caches /usr/share/icons/debxp-paper-folders

# Scripts diversos

echo -e "Instalando scripts globais..."
sudo cp bin/desktop-indicator /usr/bin/debxp-desktop-indicator
sudo cp bin/rofi-launcher /usr/bin/debxp-rofi-launcher

# Área de trabalho

echo -e "Configurando a área de trabalho...\n"
cp -r config ~/.config

echo -e "Pronto!\n"
