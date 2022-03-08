#!/bin/sh

echo "Script en cours d'exécution : $0"
echo "Nom du répertoire à traiter : $1"
echo -e "Contenu $1 : \n$(ls -a $1 | more)\n\n"
echo -e "Caractéristiques de $1 : \n `ls -ld $1`\n\n\n"
exit 0
