#!/usr/bin/env bash

clear

base_xfce() {
echo -e "
Nesta etapa, nós vamos instalar os pacotes essenciais do ambiente de trabalho Xfce4, temas e alguns utilitários básicos.

Podemos prosseguir (s/N)? \c
"
    read answer
    if [[ $answer = [sSyY] ]]; then
    sudo apt install xorg \
                     xfwm4 \
                     lightdm \
                     lightdm-gtk-greeter \
                     lightdm-gtk-greeter-settings \
                     xfce4-datetime-plugin \
                     xfce4-genmon-plugin \
                     xfce4-notifyd \
                     xfce4-panel \
                     xfce4-power-manager \
                     xfce4-pulseaudio-plugin \
                     xfce4-screenshooter \
                     xfce4-session \
                     xfce4-settings \
                     xfce4-taskmanager \
                     xfce4-terminal \
                     xfce4-whiskermenu-plugin \
                     mousepad \
                     pcmanfm \
                     gvfs-backends \
                     gvfs-fuse \
                     p7zip-full \
                     rar \
                     unrar \
                     menulibre \
                     pavucontrol \
                     network-manager \
                     wicd-cli \
                     wicd-curses \
                     wicd-gtk \
                     policykit-1-gnome \
                     numix-gtk-theme \
                     numix-icon-theme \
                     numix-icon-theme-circle \
                     papirus-icon-theme \
                     arc-theme \
                     breeze-cursor-theme \
                     inxi \
                     htop \
                     neofetch \
                     wmctrl \
                     xarchiver \
                     file-roller \
                     xdotool \
                     xinput \
                     numlockx \
                     rofi \
                     suckless-tools \
                     ttf-mscorefonts-installer \
                     yad \
                     synaptic \
                     gdebi \
                     gparted
        devices_printer
        devices_bluetooth
        sair
    else
        sair
    fi
}

devices_printer() {
echo -e "
Deseja instalar o suporte ao gerenciamento de impressoras (s/N)? \c
"
    read answer
    [[ $answer = [sSyY] ]] && sudo apt install system-config-printer
}

devices_bluetooth() {
echo -e "
Deseja instalar o suporte a dispositivos bluetooth (s/N)? \c
"
    read answer
    [[ $answer = [sSyY] ]] && sudo apt install blueman
}

sair() {
    echo -e "\nSaindo...\n"
    exit 0
}

base_xfce
