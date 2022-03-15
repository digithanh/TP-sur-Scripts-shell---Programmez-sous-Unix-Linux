#!/bin/sh

#Initialisation des variables
nb_saisie=1
res=""

#Boucle de controle des 10 saisies
while [ $nb_saisie -ne 11 ]
do
	echo "Saisie d'un nombre $nb_saisie(nombre positif):"
	read saisie
	#Controle saisie negative
	if [ $saisie -lt 0 ] ; then
		continue
	fi
	#Concatenation des saisies
	res=$res" "$saisie
	#Incrementation du nombre de saisie
	nb_saisie=`expr $nb_saisie + 1`
done

#Decoupage du $res
set $res
#Initialisation variable $min $max
min=$1
max=$1

#Boucle sur les 10 valeures dans $res avec la variable $#
while [ $# -ne 0 ]
do
	#Condition pour trouver la valeur mini
	if [ $1 -lt $min ] ; then min=$1 ; fi
	#Condition pour trouvez la valeur maxi
	if [ $1 -gt $max ] ; then max=$1 ; fi
	#Alimentation de $1 avec shift 
	shift
done

echo "La liste des nombres est : $res"
echo ""
echo "Le plus petit nombre est $min"
echo "Le plus grand nombre est $max"

exit 0
