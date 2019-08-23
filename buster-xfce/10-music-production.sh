#!/usr/bin/env bash

clear

echo -e "
Este script instalará os programas:

· Audacity  - Editor de áudio
· Musescore - Editor de partituras
· LMMS      - Estúdio de criação musical
· Ardour    - Estação digital de áudio
· Hydrogen  - Editor de trilhas de bateria

Deseja prosseguir (s/N)? \c
"
read answer
[[ $answer = [sSyY] ]] && sudo apt install audacity \
                                           musescore \
                                           lmms \
                                           hydrogen \
                                           ardour

echo -e "\nSaindo...\n"

exit 0
