#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script : [xquebrarar.sh]
# Descrição : Quebra senha de arquivos rar pelo método da força bruta.
# Versão : 0.1
# Autor : Fabio Junior Ribeiro <rib3iro@live.com>
# Data : 07/12/2020
# Licença : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso : $ ./xquebrarar.sh arquivocomsenha.rar senha1, senha2, ..., senhaN
#----------------------------------------------------------------------

# Senha: "senha"

# Função de ajuda.
function show_help {
    echo 'xquebrarar.sh - by Rib3iro'
    echo '[uso] $ ./quebrarar.sh arquivocomsenha.rar senha1, senha2, ..., senhaN'
    exit 1
}

# Obtém os parâmetros.
ARQUIVORAR="$1"

# Flag. Tem valor 1 se a senha foi quebrada e
# 0 caso contrário.
SENHAQUEBRADA=0

# Testa os parâmetros.
[ -e "$ARQUIVORAR" ] || show_help

# Desloca os parâmetros.
shift

# Lê as senhas da linha de comando.
for senhateste in $*
do
    SAIDA=$(unrar -idq -p"$senhateste" t "$ARQUIVORAR" 2>&1)
    # Se a variável estiver vazia é porque a senha foi quebrada.
    [ -z "$SAIDA" ] && SENHAQUEBRADA=1 && break
done

# Informa se a senha foi quebrada ou não.
if [ "$SENHAQUEBRADA" = '1' ]
then
    echo '[+] Senha quebrada: '$senhateste
    # Executando esse script no xargs precisamos matar
    # o próprio xargs (processo pai) para finalizar as
    # outras threads.
    kill $PPID
fi

#EOF
