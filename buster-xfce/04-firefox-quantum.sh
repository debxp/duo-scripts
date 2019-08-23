#!/usr/bin/env bash

clear

firefox_quantum() {

	wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=pt-BR"
	tar -xvf firefox.tar.bz2
	sudo mv firefox /opt/
	rm firefox.tar.bz2
	sudo ln -s /opt/firefox/firefox /usr/bin/firefox
	sudo cp config/firefox-quantum.desktop /usr/share/applications/

	echo -e "\nPronto!\n"
}

echo -e "
Este script instalará a última versão do Firefox na pasta '/opt' do sistema. 

Deseja prosseguir (s/N)? \c
"

read answer
[[ $answer = [sSyY] ]] && firefox_quantum || echo -e "\nSaindo...\n"

exit 0
