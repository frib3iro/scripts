#!/usr/bin/env bash

# Opções
editor="vim"

# Variáveis
data=$( date +'%d/%m/%Y' )

header="#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : $1
# Descrição :
# Versão    : 0.1
# Autor     : Fabio Junior Ribeiro <rib3iro@live.com>
# Data      : $data
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso       :
#----------------------------------------------------------------------
"

# Testar se foi passado apenas um argumento...
[[ $# -ne 1 ]] && echo "Precisa um argumento!" && exit 1

# Testar se arquivo ja existe...
[[ -f $1 ]] && echo "Arquivo já existe!" && exit 1

echo "$header" > $1
chmod +x $1
$editor $1

exit 0

