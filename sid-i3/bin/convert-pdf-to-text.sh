#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo -e "\nErro: informe o nome do arquivo!\n"
else
	pdftotext -q -layout -fixed 8 "$1"
fi
exit 0
