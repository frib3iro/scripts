#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script : [quebrarar.sh]
# Descrição : Quebra senha de arquivos rar pelo método da força bruta.
# Versão : 0.1
# Autor : Fabio Junior Ribeiro <rib3iro@live.com>
# Data : 07/12/2020
# Licença : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso : $ ./quebrarar.sh arquivocomsenha.rar wordlist.txt
#----------------------------------------------------------------------

# Senha: "senha"

# Arquivo rar com senha
ARQUIVORAR=

# Dicionário de senhas
WORDLIST=

# Recebe cada senha do dicionário
senhateste=

# Função de ajuda.
function show_help {
    echo 'quebrarar.sh - Rib3iro'
    echo '[uso] $ ./quebrarar.sh arquivocomsenha.rar wordlist.txt'
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
ARQUIVORAR="$1"
WORDLIST="$2"

# Flag. Tem valor 1 se a senha foi quebrada e
# 0 caso contrário.
SENHAQUEBRADA=0

# Testa os parâmetros.
[ -e "$ARQUIVORAR" ] && [ -e "$WORDLIST" ] || show_help

# Processo de quebragem.
echo '[+] Espere. Quebrando a senha...'
while read senhateste
do
    SAIDA=$(unrar -idq -p"$senhateste" t "$ARQUIVORAR" 2>&1)
    # Se a variável estiver vazia é porque a senha foi quebrada.
    [ -z "$SAIDA" ] && SENHAQUEBRADA=1 && break
done < "$WORDLIST"

# Informa se a senha foi quebrada ou não.
if [ "$SENHAQUEBRADA" = '1' ]
then
    echo '[+] Senha quebrada: '$senhateste
else
    echo '[+] Senha NAO quebrada. Tente outra lista de palavras.'
fi

#EOF
