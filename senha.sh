#!/usr/bin/env bash

# $ cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 20 | head -n1

#No comando acima, utilizo a saída do /dev/urandom que gera números aleatórios e mando para o tr que vai deletar todos os caracteres exceto aqueles que estão entre as aspas simples, o fold vai quebrar a linha a cada 20 caracteres. Em seguida, temos o head que vai pegar apenas a primeira linha

# Gerando senha com caracteres especiais
# $ cat /dev/urandom | tr -dc 'a-zA-Z0-9-_!@#$%&*+?' | fold -w 20 | head -n1

# Script para geração da senha

# Agora vamos a um exemplo de script que pode ser utilizado para gerar senhas. O script vai perguntar quantas senhas o usuário vai querer e a quantidade de caracteres que a senha vai ter.

while [ "$menu" != "n" ]
do
	echo
	read -p "Informe a quantidade de senhas: " qtdSenha
	read -p "Informe a quantidade de caracteres da senha: " qtdCaracteres
	echo
	for i in $(seq 1 $qtdSenha); do
		cat /dev/urandom | tr -dc 'a-zA-Z0-9-_!@#$%&*+' | fold -w $qtdCaracteres | head -n1
	done
	echo
	read -p "Deseja voltar ? [S/N]" menu
	echo
done


