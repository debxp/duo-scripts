#!/usr/bin/env bash

# Apps and utils

sudo apt install thunderbird \
                 thunderbird-l10n-pt-br \
                 libreoffice \
                 libreoffice-l10n-pt-br \
                 libreoffice-gnome \
                 filezilla \
                 smplayer \
                 smplayer-l10n \
                 smplayer-themes \
                 vlc \
                 vlc-l10n \
                 blueman \
                 transmission \
                 atril \
                 poppler-utils \
                 goldendict \
                 font-manager \
                 kazam \
                 libreoffice-style-breeze \
                 inkscape \
                 gimp \
                 gnome-calculator \
                 youtube-dl \
                 exfalso \
                 quodlibet \
                 telegram-desktop \
                 gnome-mahjongg \
                 peek \
                 sxiv \
                 moc \
                 gparted

# Firefox Quantum

wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=pt-BR"
tar -xvf firefox.tar.bz2
sudo mv firefox /opt/
rm firefox.tar.bz2
sudo ln -s /opt/firefox/firefox /usr/bin/firefox
sudo cp config/firefox-quantum.desktop /usr/share/applications/

echo -e "\nPronto!\n"
