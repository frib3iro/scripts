#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : [quebrazip.sh]
# Descrição : Quebra senha de arquivos zip pelo método da força bruta.
# Versão    : 1.0
# Autor     : Fabio Junior Ribeiro 
# Email     : rib3iro@live.com
# Github    : https://github.com/frib3iro 
# Data      : 18/12/2020
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso       : $ ./quebrazip.sh arquivozipcomsenha.zip wordlist.txt
#----------------------------------------------------------------------

# ex: $ ./brutus.sh -a -r 3 | head -n 10

# Senha: "senha"

# Arquivo zip com senha
ARQUIVOZIP=

# Dicionário de senhas
WORDLIST=

# Recebe cada senha do dicionário
senhateste=

# Função de ajuda.
function show_help {
echo 'quebrazip.sh - by daemonio'
echo '[uso] $ ./quebrazip.sh arquivozipcomsenha.zip wordlist.txt'
exit 1
}

# Função chamada quando se interrompe
# o script com um ctrl+c. Essa função mostra
# a senha usada no momento da interrupção.
function pegarctrlc {
echo "[+] Processo abortado. Senha atual: $senhateste"
exit 1
}

# Instala um signal handler pro ctrl+c
trap pegarctrlc SIGINT

# Obtém os parâmetros.
ARQUIVOZIP="$1"
WORDLIST="$2"

# Flag. Tem valor 1 se a senha foi quebrada e
# 0 caso contrário.
SENHAQUEBRADA=0

# Testa os parâmetros.
[ -e "$ARQUIVOZIP" ] && [ -e "$WORDLIST" ] || show_help

# Processo de quebragem.
echo '[+] Espere. Quebrando a senha...'
while read senhateste
do
    SAIDA=$(unzip -tq -P "$senhateste" "$ARQUIVOZIP" 2>&1)
    [[ "$SAIDA" =~ 'No errors detected in compressed data of' ]] && SENHAQUEBRADA=1 && break
done < "$WORDLIST"

# Informa se a senha foi quebrada ou não.
if [ "$SENHAQUEBRADA" = '1' ]
then
    echo '[+] Senha quebrada: '$senhateste
else
    echo '[+] Senha NAO quebrada. Tente outra lista de palavras.'
fi

#EOF
