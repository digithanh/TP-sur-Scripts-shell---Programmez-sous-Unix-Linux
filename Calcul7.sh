#!/bin/sh

if [ $# -lt 2 ]
then
	echo "Nombre d'arguments insuffisant."
	echo "Usage : $0 operation nombre1 nombre2 ... nombreN"
	exit 1
else
	operation=$1

	shift

	case $operation in 
		'+' | '-')	resultat=$1
				echo $resultat
				shift
				while [ $1 ]
				do
					resultat=`expr $resultat $operation $1`
					shift
				done
					echo "Resultat de l'opération ($operation) : $resultat"
				;;
		'x')		resultat=$1
				shift
				while [ $1 ]
				do
					resultat=`expr $resultat \* $1`
					shift
				done
				echo "Produit : $resultat"
				;;
		'/' | '%')	resultat=$1
				shift
				while [ $1 ]
				do
					if [ $1 = 0 ] ; then
						echo "Le nombre doit être non nul"
						exit 1;
					else
						resultat=`expr $resultat $operation $1`
					fi
					shift
				done
				echo "Resultat de l'oprération ($operation) : $resultat"
				;;
		esac
fi
