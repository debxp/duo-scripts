#!/usr/bin/env bash

install_gnome_games() {
	echo -e "\nInstalando jogos básicos...\n"
	sudo apt install gnome-mahjongg aisleriot
	echo -e "\nTecle 'enter' para continuar... \c"
	read continue
}


install_emulador() {
	echo -e "\Instalando emulador de plataformas retrô...\n"
	sudo apt install mednafen mednaffe	
	echo -e "\nTecle 'enter' para continuar... \c"
	read continue
}

install_wesnoth() {
	echo -e "\nInstalando The Battle for Wesnoth...\n"
	sudo apt install wesnoth
	echo -e "\nTecle 'enter' para continuar... \c"
	read continue
}

install_stk() {
	echo -e "\nInstalando SuperTuxKart...\n"
	sudo apt install supertuxkart
	echo -e "\nTecle 'enter' para continuar... \c"
	read continue
}

install_steam() {
	echo -e "\nInstalando Steam...\n"
	sudo dpkg --add-architecture i386
	sudo apt update
	sudo apt install steam
	echo -e "\nTecle 'enter' para continuar... \c"
	read continue
}

sair() {
    echo -e "\nSaindo...\n"
    exit 0
}

install_games() {
	while true; do
		clear
		echo -e "
Instalar Jogos

  1. Mahjongg e Paciência
  2. Emulador Mednafen
  3. The Battle for Wesnoth
  4. SuperTuxKart
  5. Steam
  
  Q. Sair

Escolha o jogo ou a plataforma que deseja instalar: \c
"
		read answer
		case $answer in
			1)    install_gnome_games;;
			2)    install_emulador   ;;
			3)    install_wesnoth    ;;
			4)    install_stk        ;;
			5)    install_steam      ;;
			[qQ]) sair               ;;
		esac
    done
}

install_games
