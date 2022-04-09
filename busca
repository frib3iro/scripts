#!/usr/bin/env bash

# Cores
green='\e[32;1m'
blue='\e[34;1m'
red='\e[31;1m'
end='\e[m'
programa=$1

# programa
while [ $1 ]; do
    if which "$1" &> /dev/null; then
        dir=$(which "$1")
        echo -e "\n${green}${1}${end}${blue} Está instalado no sistema.${end}${green} Diretório: ${dir}${end}\n"
        shift
    else
        echo -e "\n${green}${1}${end}${red} Não está instalado no sistema.${end}\n"
        shift
    fi
done 

