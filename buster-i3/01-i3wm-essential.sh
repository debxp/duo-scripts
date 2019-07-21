#!/usr/bin/env bash

# i3wm essential

sudo apt install xorg \
                 i3-wm \
                 i3blocks \
                 suckless-tools \
                 j4-dmenu-desktop \
                 rofi \
                 arandr \
                 pcmanfm \
                 gvfs-backends \
                 gvfs-fuse \
                 xarchiver \
                 p7zip-full \
                 rar \
                 unrar \
                 xfce4-terminal \
                 xfce4-screenshooter \
                 xfce4-notifyd \
                 nitrogen \
                 wicd-gtk \
                 wicd-curses \
                 wicd-cli \
                 gsimplecal \
                 compton \
                 numlockx \
                 inxi \
                 geany \
                 vim \
                 wmctrl \
                 xdotool \
                 xinput \
                 lxinput \
                 lxappearance \
                 papirus-icon-theme \
                 arc-theme \
                 numix-gtk-theme \
                 numix-icon-theme \
                 numix-icon-theme-circle \
                 breeze-cursor-theme \
                 lynx \
                 irssi \
                 ttf-mscorefonts-installer \
                 neofetch \
                 synaptic \
                 gdebi \
                 htop \
                 policykit-1-gnome \
                 pulseaudio \
                 pavucontrol \
                 yad

echo "[[ -z \$DISPLAY && \$XDG_VTNR -eq 1 ]] && exec startx" > "$HOME/.bash_profile"
