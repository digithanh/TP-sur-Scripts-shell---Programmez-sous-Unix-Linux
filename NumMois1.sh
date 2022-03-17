#!/bin/ksh

rep="oui"
while [[ "$rep" = "oui" ]]
do

	echo -n "Saisir un numéro de mois :"
	read num
	
	while ((num < 1 || num > 12))
	# Version bash 
	# while [ ! \( $num -ge 1 -a $num -le 12 \) ]
	do
		echo -n "$num est incorrect. "
		echo -n "Veuillez saisir un numéro compris entre 1 et 12"
		read num
	done

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
	
	rep="faux"
	while [[ "$rep" != "oui" && "$rep" != "non" ]]
	# Version bash
	# while [ "$rep" != "oui" -a "$rep" != "non" ]
	do
		echo -n "Voulez-vous recommencer (oui/non) ? "
		read rep
	done
done	
