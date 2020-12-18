#!/usr/bin/env bash

# variaveis
azul='\e[34;1m'
verde='\e[32;1m'
vermelho='\e[31;1m'
amarelo='\e[33;1m'
seta='\e[32;1m--->\e[m'
fim='\e[m'

clear && cd /home/fabio

if [ -e Repos ]; then
    echo -e "${azul}O diretório Repos existe${fim}"
    cd Repos && pwd
else
    echo -e "${azul}O diretório Repos não existe e será criado${fim}"
    mkdir Repos && cd Repos && pwd
fi

echo -e "${azul}Baixando o archlinux${fim}"
sleep 2s
if [ -d archlinux ]; then
    echo -e "${verde}O diretório existe${fim}"
else
    git clone https://github.com/frib3iro/archlinux
    echo -e "${verde}Repositório baixado com sucesso!!${fim}"
fi

echo -e "${azul}Baixando o archlinux2${fim}"
sleep 2s
if [ -d archlinux2 ]; then
    echo -e "${verde}O diretório existe${fim}"
else
    git clone https://github.com/frib3iro/archlinux2
    echo -e "${verde}Repositório baixado com sucesso!!${fim}"
fi

echo -e "${azul}Baixando o vbz${fim}"
sleep 2s
if [ -d vbz ]; then
    echo -e "${verde}O diretório existe${fim}"
else
    git clone https://github.com/frib3iro/vbz
    echo -e "${verde}Repositório baixado com sucesso!!${fim}"
fi

echo -e "${azul}Baixando o zshell${fim}"
sleep 2s
if [ -d zshell ]; then
    echo -e "${verde}O diretório existe${fim}"
else
    git clone https://github.com/frib3iro/zshell
    echo -e "${verde}Repositório baixado com sucesso!!${fim}"
fi

echo -e "${azul}Baixando o gnome${fim}"
sleep 2s
if [ -d gnome ]; then
    echo -e "${verde}O diretório existe${fim}"
else
    git clone https://github.com/frib3iro/gnome
    echo -e "${verde}Repositório baixado com sucesso!!${fim}"
fi

echo -e "${azul}Baixando o bin${fim}"
sleep 2s
if [ -d bin ]; then
    echo -e "${verde}O diretório existe${fim}"
else
    git clone https://github.com/frib3iro/bin
    echo -e "${verde}Repositório baixado com sucesso!!${fim}"
fi

echo -e "${azul}Baixando o bspwm${fim}"
sleep 2s
if [ -d bspwm ]; then
    echo -e "${verde}O diretório existe${fim}"
else
    git clone https://github.com/frib3iro/bspwm
    echo -e "${verde}Repositório baixado com sucesso!!${fim}"
fi


echo -e "${azul}Baixando o ssh${fim}"
sleep 2s
if [ -d ssh ]; then
    echo -e "${verde}O diretório existe${fim}"
else
    git clone https://github.com/frib3iro/ssh
    echo -e "${verde}Repositório baixado com sucesso!!${fim}"
fi

