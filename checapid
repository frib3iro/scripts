#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : checapid
# Descrição : Compara PID do script e do shell no terminal
# Versão    : 0.1
# Autor     : Fabio Junior <rib3iro@live.com>
# Data      : 23/05/2020
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso       : /cominho/checapid ou ./checapid 
#----------------------------------------------------------------------

clear

sep="------------------------------------------------------------"

echo "$sep
COMPARANDO PID DAS SESSÕES DO BASH NO SCRIPT E NO TERMINAL
$sep
PID da sessão do bash do script  : $$
PID da sessão do bash no terminal: $PPID
$sep
$(ps -p $$,$PPID -o pid=,user=,tty=,args=)
$sep
"

exit 0
