#!/usr/bin/env bash

# Variaveis ------------------------------------------------
diretorios="Documentos Downloads Imagens Música Vídeos .vim .vimrc .bashrc"
particao="/dev/sdb1"
endereco="/mnt/dados"
pass="cp1113bug6u"
data=$(date +%H:%M" - "%d/%m/%Y)
log=`touch log-backup.txt`

# Cores ----------------------------------------------------
blue='\e[34;1m'
green='\e[32;1m'
red='\e[31;1m'
yellow='\e[33;1m'
end='\e[m'
seta='\e[32;1m==>\e[m'

# Funções --------------------------------------------------
montar(){
    echo $pass | sudo -S mount -t ext4 $particao $endereco
}

desmontar(){
    echo $pass | sudo -S umount $endereco
}

backup(){
    echo $pass | sudo -S rsync -hvau --exclude="Área de trabalho" /home/$user/$diretorios $endereco
}

copiando(){
    cp .bashrc $endereco/vim-bash-backup
    cp .vimrc $endereco/vim-bash-backup
    cp -r .vim $endereco/vim-bash-backup
}
# Iniciando backup -----------------------------------------
if [ -z $montar ];then
    echo -e "${seta} ${blue}O disco será montando em${end} ${yellow}${endereco}${end}"
    montar
    echo -e "${seta} ${blue}Iniciando o backup...${end}" 
    backup
else
    desmontar
    echo -e "${seta} ${blue}O disco será montando em${end} ${yellow}${endereco}${end}"
    montar
    echo -e "${seta} ${blue}Iniciando o backup...${end}" 
    backup
fi

# Criando diretórios ---------------------------------------
echo -e "${seta} ${blue}Criando diretório vim-backup...${end}" 
if [ -d "${endereco}/vim-bash-backup" ]; then
    echo -e "${seta} ${blue}O diretorio existe!${end}" 
    sleep 2s
    clear
    echo -e "${seta} ${blue}Movendo arquivos${end}" 
    copiando
else
    echo -e "${seta} ${blue}O diretorio não existe e será criado!${end}"
    mkdir "${endereco}/vim-bash-backup"
    echo -e "${seta} ${blue}Diretório criado com sucesso!${end}" 
    sleep 2s
    clear
    echo -e "${seta} ${blue}Movendo arquivos${end}" 
    copiando
fi

# Finalizando backup ---------------------------------------
echo -e "${seta} ${blue}Backup finalizado com sucesso às${end} ${yellow}${data}${end}"
echo -e "${seta} ${blue}Desmontando a partição e encerrando!${end}" 
desmontar
# Fim do principal -----------------------------------------

