#!/bin/sh

# Vérifier l'existence du fichier. S'il n'existe pas, on demande une saisie d'un nouveau nom
fichier=$1
[ -f $fichier ]

while [ $? -ne 0 ]
do
	echo -n "$fichier n'existe pas. Saisir un autre nom de fichier : "
	read fichier
	[ -f $fichier ]
done

# Parcourir le fichier et supprimer les adresses incorrectes
# Dès qu'un octect est incorrect, passer à l'adresse suivante (instruction continue)

for adresse in `more $fichier`
do 
	IFS=.
	set $adresse

	[ $1 -le 0 -o $1 -ge 255 ]
	if [ $? -eq 0 ] ; then
		continue
	else
		[ $2 -le 0 -o $1 -ge 255 ]
		if [ $? -eq 0 ] ; then
			continue
		else
			[ $3 -le 0 -o $1 -ge 255 ]
			if [ $? -eq 0 ] ; then
				continue
			else
				[ $4 -le 0 -o $1 -ge 255 ]
				if [ $? -eq 0 ] ; then
					continue
				else
					echo $1.$2.$3.$4 >> tmp.$$
				fi
			fi
		fi
	fi
done

[ -f tmp.$$ ]
if [ $? -eq 0 ] ; then
	cp tmp.$$ $fichier
	rm tmp.$$
fi
more $fichier
exit 0
		
