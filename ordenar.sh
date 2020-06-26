#!/usr/bin/env bash

echo -e "Iniciando ordenação\n"
sleep 2s
read -p "Cole o seu texto: "
$REPLY > arquivo.txt
tr -s [:space:] ' ' < arquivo.txt > novoarquivo.txt
tr [:space:] '\n' < novoarquivo.txt > arquivo.txt
sort arquivo.txt > novoarquivo.txt
cat  "novoarquivo.txt" | xargs > arquivo.txt
echo "Ordenação finalizada."
sleep 2s

