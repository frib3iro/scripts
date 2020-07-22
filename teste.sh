#!/usr/bin/env bash

## Mudar a extensão do arquivo 
for o in $(ls -1 *); do
mv $o $(echo $o | awk -F. '{print $1".sh"}');
done

## Renomear uma parte do texto no diretŕorio corrente
perl -i -pe 's/#!\/bin\/zsh/#!\/usr\/bin\/env bash/;' *

perl -i -pe 's/$1/$2/;' *

## Renomear uma parte do texto recursivamente nos sub diretórios
find . -name '*.txt' -print | xargs perl -pi -e 's/Windows/Linux/ig' *.txt
find . -name '*.txt' -print | xargs perl -pi -e 's/Windows/Linux/ig' *.txt
