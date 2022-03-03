#!/bin/bash
echo "Le nom du script en cours d'exécution est : $0"

if [ $# != 3 ]
then
	echo "Nombre d'arguments insuffisants."
	echo "Usage : $0 nombre1 opération(add, sub, mult, div, mod) nombre2"
	exit 1
else
	echo "Le nombre d'arguments saisis est : $#"
	echo "La liste des arguments : $*"
	echo "Opération demandée : $2"
	# Vérifier que les paramètres Nombre1 et Nombre2 sont numériques 
	if [[ $1 = +([0-9]) ]]; then
		echo "Nombre 1 : $1"
	else
		echo "Le paramètre $1 n'est pas un nombre !!"
		exit 1
	fi
	if [[ $3 = +([0-9]) ]];	then
		echo "Nombre 2 : $2"
	else
		echo "Le paramètre $2 n'est pas un nombre !!"
		exit 1
	fi
	
	case $2 in 
		"add")	echo "$1 $2 $3 = `expr $1 + $3`"
			;;
		"sub")	echo "$1 $2 $3 = `expr $1 - $3`"
			;;
		"mult")	echo "$1 $2 $3 =  `expr $1 \* $3`"
			;;
		"div" | "mod")
			if [ $3 -eq 0 ]; then
				echo "Opération impossible. Le nombre 2 doit être non nul!!"
				exit 1
			else
				if [ "$2" = "div" ]; then
					echo "$1 $2 $3 = `expr $1 / $3`"
				elif [ "$2" = "mod" ]; then
					echo "$1 $2 $3 = `expr $1 % $3`"
				fi
				exit 0
			fi
			;;
		*)
			echo "Opération incorrecte !!!"
			echo "Le nom d'opération doit être : add, sub, mult, dic ou mod"
			exit 1
	esac
fi
