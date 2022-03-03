#!/bin/bash

echo -n "Saisir une adresse IP : "
read adresse

IFS=.
set $adresse

[ $1 -le 0 -o  $1 -ge 255 ]
if [ $? -eq 0 ] ; then
	echo "$adresse est une adresse invalide. $1 est un octect incorrect."
	exit 1
else
	[ $2 -le 0 -o $2 -ge 255 ]
	if [ $? -eq 0 ] ; then
		echo "$adresse est une adresse invalide. $2 est un octect incorrect."
		exit 1
	else
		[ $3 -le 0 -o $3 -ge 255 ]
		if [ $? -eq 0 ] ; then
			echo "$adresse est une adresse invalide. $3 est un octect incorrect."
			exit 1
		else
			[ $4 -le 0 -o $4 -ge 255 ]
			if [ $? -eq 0 ] ; then
			echo "$adresse est une adresse invalide. $4 est un octect incorrect."
			exit 1
			fi
		fi
	fi
fi
echo -n "$adresse est une adresse valide. Voulez-vous l'enregistrer dans un fichier O/N ?"
read reponse
[ $reponse = "O" -o $reponse = 'o' ]
if [ $? -eq 0 ]; then
	echo -n "Donner le nom du fichier : "
	read fichier
	[ -f $fichier ]
	if [ $? -eq 0 ] ; then
		grep "$1.$2.$3.$4" $fichier > /dev/null
		if [ $? -eq 0 ] ; then
			echo -n "$1.$2.$3.$4 existe déjà dans le fichier. Voulez vous l'enregistrer encore (O/N) ?"
			read reponse
			[ $reponse = "O" -o $reponse = "o" ]
			if [ $? -eq 0 ] ; then
				echo "$1.$2.$3.$4" >> $fichier
			fi
		else
			echo "$1.$2.$3.$4" >> $fichier
		fi
	else
		echo -n "fichier n'existe pas. Voulez vous le créer (O/N) ?"
		read reponse
		[ $reponse = "O" -o $reponse = 'o' ]
		if [ $? -eq 0 ] ; then
			echo "$1.$2.$3.$4" > $fichier
		fi
	fi
fi
exit 0
