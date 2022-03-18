#!/bin/sh
# Création des fichiers vides pour stocker les listes des répertoires et fichiers
cat /dev/null > /dev/ListeRep ; cat /dev/null > /dev/ListeFic
cd /dev
for fichier in `ls /dev`
do
	# Test si le fichier est un répertoire et écrire dans le fichier de sortie
	[ -d $fichier ] && echo $fichier >> /dev/ListeRep
	# Test si le fichier n'est pas un répertoire alors écrire dans le fichier de sortie
	[ -d $fichier ] || echo $fichier >> /dev/ListeFic
done

# Création des fichiers vides pour stocker les listes des fichiers ordinaires et spéciaux
cat /dev/null > /dev/FicOrdinaire ; cat /dev/null > /dev/FicSpeciau
for fichier in `cat /dev/ListeFic`
do
	# Test si le fichier est ordinaire
	[ -f $fichier ] && echo $fichier >> /dev/FicOrdinaire

	# Test si le fichier est spéciaux
	[ -b $fichier -o -c $fichier ] && echo $fichier > /dev/FicSpeciau
done

# Liens symbolique
ls -l /dev | grep '^l' > /dev/FicSymb

# Resultat
echo "Le nombre de repertoires: `cat /dev/ListeRep | wc -l`"
echo "Le nombre de liens symboliques: `cat /dev/FicSymb | wc -l`"
echo "Le nombre de fichiers speciaux: `cat /dev/FicSpeciau | wc -l`"
echo "Le nombre de fichiers ordinaires: `cat /dev/FicOrdinaire | wc -l`"

rm /dev/ListeRep /dev/FicSymb /dev/FicSpeciau /dev/FicOrdinaire
exit 0
