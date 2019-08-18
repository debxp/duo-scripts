#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo -e "\nErro: informe o nome do arquivo!\n"
else
	DIR=$(dirname "${1:7}")
	soffice --convert-to pdf "$1" --headless --outdir "$DIR"
	# notify-send "$DIR"
fi
exit 0
