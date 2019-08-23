#!/usr/bin/env bash

clear

multimedia() {
echo -e "
Este script instalará:

· SMPlayer       - Player de áudio, vídeo e stream
· VLC            - Player de áudio, vídeo e stream
· QuodLibet      - Gestor de biblioteca de música
· ExFalso        - Editor de tags
· moc            - Player e biblioteca de música CLI
· SoundCOnverter - Conversor de formatos de áudio
· Kazam          - Screencasts e capturas de tela
· Peek           - Ferramenta para criar gifs da tela

Podemos prosseguir (s/N)? \c
"
    read answer
    if [[ $answer = [SsYy] ]]; then
        sudo apt install smplayer \
                         smplayer-l10n \
                         smplayer-themes \
                         vlc \
                         vlc-l10n \
                         exfalso \
                         quodlibet \
                         moc \
                         soundconverter \
                         kazam \
                         peek
        obs_install
        sair
    else
        sair
    fi
}

obs_install() {
echo -e "
Deseja instalar o 'OBS Studio' (s/N)? \c
"
    read answer
    [[ $answer = [sSyY] ]] && sudo apt install obs-studio
}

sair() {
    echo -e "\nSaindo...\n"
    exit 0
}

multimedia
