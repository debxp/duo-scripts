#!/usr/bin/env bash

wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=pt-BR"
tar -xvf firefox.tar.bz2
sudo mv firefox /opt/
rm firefox.tar.bz2
sudo ln -s /opt/firefox/firefox /usr/bin/firefox
sudo cp config/firefox-quantum.desktop /usr/share/applications/
