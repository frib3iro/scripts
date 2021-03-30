#!/usr/bin/env bash

# Opções
editor="vim"

# Variáveis
data=$( date +'%d/%m/%Y' )

header="#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : [$1]
# Descrição :
# Versão    : 1.0
# Autor     : Fabio Junior Ribeiro 
# Email     : rib3iro@live.com
# Github    : https://github.com/frib3iro 
# Data      : $data
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso       :
#----------------------------------------------------------------------
"

# Testar se foi passado apenas um argumento...
[[ $# -ne 1 ]] && echo "Precisa de pelo menos um argumento!" && exit 1

# Testar se arquivo ja existe...
[[ -f $1 ]] && echo "Arquivo já existe!" && exit 1

echo "$header" > $1
chmod +x $1
$editor $1

exit 0

