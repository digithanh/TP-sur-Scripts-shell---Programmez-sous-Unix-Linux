#!/bin/sh

echo -n "Saisir le nom d'un répertoire : "
read repertoire
while [ ! -d $repertoire ]
do
	echo "$repertoire n'existe pas"
	echo -n "Veuillez saisir un autre nom : "
	read repertoire
done
cd $repertoire
for fichier in $(ls $repertoire)
do
	if [ -r $fichier -a ! -w $fichier -a ! -x $fichier ]
	then
		echo "$fichier est accessible en lecture seule "
	elif [ -r $fichier -a -w $fichier -a ! -x $fichier ]
	then
		echo "$fichier est accessible en lecture et en écriture "
	elif [ -r $fichier -a -w $fichier -a -x $fichier ]
	then
		echo "$fichier est accessible en lecture/écriture et exécutable"
	fi
done

exit 0
