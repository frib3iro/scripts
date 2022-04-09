#!/usr/bin/env bash

clear

echo -e "Iniciando ordenação"
echo -en "\nInforme o caminho do seu texto: "
read caminho

tr -s '[:space:]' ' ' < $caminho > arquivo1.txt
tr -s '[:space:]' '\n' < arquivo1.txt > arquivo2.txt

sort arquivo2.txt > arquivo3.txt

cat  "arquivo3.txt" | xargs > pronto.txt

rm arquivo1.txt arquivo2.txt arquivo3.txt

echo "Ordenação finalizada."
sleep 2s

