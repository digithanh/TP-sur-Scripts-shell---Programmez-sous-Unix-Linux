#!/bin/bash

if [ $# != 2 ]
then
	echo "Nombre d'arguments insuffisants."
	echo "Usage : $0 nombre 1 nombre 2"
	exit 1
else
	echo "Opérations possible : +, -, x, /, % "
	echo -n "Saisir votre opération : "
	read operation
	[ $operation != '+' -a $operation != '-' -a $operation != 'x' -a $operation != '/' -a $operation != '%' ]
      	while	[ $? = 0 ]
	do
		echo -n "Operation invalide. Ressaisir votre opération [+, -, x, /, %] :  "
		read operation
		[ $operation != '+' -a $operation != '-' -a $operation != 'x' -a $operation != '/' -a $operation != '%' ] 
	done

	if [ "$operation" = "/" ] || [ "$operation" = "%" ]
	then
		if [ $2 -eq 0 ]
		then
			echo "Opération impossible. Le nombre 2 doit être non nul !!! "
			exit 1
		else
			((resultat = $1 $operation $2))
			echo "$1 $operation $2 = $resultat"
		fi
	elif [ "$operation" = "+" ] || [ "$operation" = "-" ]
	then
		((resultat = $1 $operation $2))
		echo "$1 $operation $2 = $resultat"
	elif [ "$operation" = "x" ]
	then
		((resultat = $1 * $2))
		echo "$1 $operation $2 = $resultat"
	fi
fi
