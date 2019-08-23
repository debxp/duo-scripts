#!/usr/bin/env bash

clear

echo -e "
Este script instalará os programas: 

· Thunderbird      - Cliente de e-mail
· Telegram Desktop - Cliente do Telegram
· Transmission     - Cliente de Torrent
· youtube-dl       - Ferramenta para baixar vídeos do Youtube

Deseja prosseguir (s/N)? \c
"

read answer
[[ $answer = [sSyY] ]] && sudo apt install thunderbird \
                                           thunderbird-l10n-pt-br \
                                           telegram-desktop \
                                           transmission \
                                           youtube-dl

echo -e "
Para instalar a versão mais atual do Firefox, execute o script:

· 04-firefox-quantum.sh

Saindo...
"

exit 0

