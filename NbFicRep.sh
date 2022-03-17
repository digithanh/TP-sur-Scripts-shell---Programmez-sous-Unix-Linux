#!/bin/sh

while [ "$#" -ne 0 ]
do
	# Test si le premier argument passé est un répertoire
	test -d "$1"

	# Si le répertoire n'existe pas, afficher un message et passer au répertoire suivant.
	if [ $? != 0 ]
	then
		echo "$1 n'existe pas "
	else
		count=0
		rep="$1"
		for file in `ls -a "$rep"`
		do
			# Si ce n'est pas un répertoire alors incrémenter le compteur
			[ ! -d $file ] && count=`expr $count + 1`
			# En ksh
			# [[ ! -d $file ]] && count=((count+1))
		done

		echo "Il y a $count fichiers dans $rep"
	fi
	shift
done
