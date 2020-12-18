#!/usr/bin/env bash

clear
echo -n "Digite o caminho da pasta ou arquivo que você quer mudar a permissão: " 
read caminho
clear
echo -e "[D = dono] [G = grupo] [O = outros]\n"
echo "Número equivalente das permissões"
echo "
*--------------------------------------------------------------*
| permissão | binário | decimal | significado                  |
|------------------------------------------------------------- |
|   [---]   |  [000]  |   [0]   | nenhuma permissão            |
|   [--x]   |  [001]  |   [1]   | execução                     |
|   [-w-]   |  [010]  |   [2]   | escrita                      |
|   [-wx]   |  [011]  |   [3]   | escrita + execução           |
|   [r--]   |  [100]  |   [4]   | leitura                      |
|   [r-x]   |  [101]  |   [5]   | leitura + execução           |
|   [rw-]   |  [110]  |   [6]   | leitura + escrita            |
|   [rwx]   |  [111]  |   [7]   | leitura + escrita + execução |
*--------------------------------------------------------------*
"
echo -n "Tipo de permissão para a pasta ou arquivo: "
read permissao
clear
if chmod $permissao $caminho &> /dev/null; then   
    echo "Permissão alterada com sucesso!"
    exit 0
else
    echo "Não foi possível alterar a permissão!"
    exit 1
fi
