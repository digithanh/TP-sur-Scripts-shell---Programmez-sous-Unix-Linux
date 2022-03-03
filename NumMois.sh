#!/bin/bash

echo -n "Saisir l'année :"
read an

echo -n "Saisir un numéro de mois :"
read num

case "$num" in 
	1)	mois="Janvier"
		echo "$num correspond au mois de $mois"
		;;
	2)	mois="Février"
		echo "$num correspond au mois de $mois"
		;;
	3)	mois="Mars"
		echo "$num correspond au mois de $mois"
		;;
	4)	mois="Avril"
		echo "$num correspond au mois de $mois"
		;;
	5)	mois="Mai"
		echo "$num correspond au mois de $mois"
		;;
	6)	mois="Juin"
		echo "$num correspond au mois de $mois"
		;;
	7)	mois="Juillet"
		echo "$num correspond au mois de $mois"
		;;
	8)	mois="Août"
		echo "$num correspond au mois de $mois"
		;;
	9)	mois="Septembre"
		echo "$num correspond au mois de $mois"
		;;
	10)	mois="Octobre"
		echo "$num correspond au mois de $mois"
		;;
	11)	mois="Novembre"
		echo "$num correspond au mois de $mois"
		;;
	12)	mois="Décembre"
		echo "$num correspond au mois de $mois"
		;;
	*)	echo "$num n'est pas un numéro correct\n"
		exit 1
		;;
esac

case $num in 
	1|3|5|7|12)
		echo "Nombre de jours de $mois $an : 31"
		;;
	2)	annee=`expr $an % 4`
		if [ $annee -eq 0 ] ; then
			echo "Nombre de jours de $mois $an : 29"
		else
			echo "Nombre de jours de $mois $an : 28"
		fi
		;;
	4)	echo "Nombre de jours d'$mois $an : 30"
		;;
	6|9|11)
		echo "Nombre de jours de $mois $an : 30"
		;;
	8|10)
		echo "Nombre de jous d'$mois $an : 31"
		;;
esac

exit 0
	
