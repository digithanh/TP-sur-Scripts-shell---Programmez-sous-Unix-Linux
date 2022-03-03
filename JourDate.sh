#!/bin/bash

echo -n "Veuillez saisir votre langue (fra,eng,spa,ger ou deu) : "
read langue

if [ "$langue" != "fra" ] && [ "$langue" != "eng" ] && [ "$langue" != "spa" ] && [ "$langue" != "ger" ] && [ "$langue" != "deu" ] 
then
	echo "$langue n'est pas une langue valide !!"
	exit 1
fi

set `date`
jour=$1
mois=$3
jj=$2
an=$4

case "$jour" in
	Mon)	jourfr="Lundi"; jouren="Monday"; joures="Lunes"; jourde="Montag"
		;;
	Tue)	jourfr="Mardi"; jouren="Tuesday"; joures="Martes"; jourde="Dienstag"
		;;
	Wed)	jourfr="Mercredi"; jouren="Wednesday"; joures="Miércoles"; jourde="Mittwoch"
		;;
	Thu)	jourfr="Jeudi"; jouren="Thursday"; joures="Jueves"; jourde="Donnerstag"
		;;
	Fri)	jourfr="Vendredi"; jouren="Friday"; joures="Viernes"; jourde="Freitaga"
		;;
	Sat)	jourfr="Samedi"; jouren="Saturday"; joures="Sabàdo"; jourde="Samstag"
		;;
	Sun)	jourfr="Dimanche"; jouren="Sunday"; joures="Domingo"; jourde="Sonntag"
		;;
esac

case "$mois" in
	Jan)	moisfr="janvier"; moisen="january"; moises="enero"; moisde="januari"; moisge="januar"
		;;
	Feb)	moisfr="février"; moisen="february"; moises="febrero"; moisde="februari"; moisge="februar"
		;;
	Mar)	moisfr="mars"; moisen="march"; moises="marzo"; moisde="maart"; moisge="marz"
		;;
	Apr)	moisfr="avril"; moisen="april"; moises="abril"; moisde="april"; moisge="april"
		;;
	May)	moisfr="mai"; moisen="may"; moises="mayo"; moisde="mei"; moisge="dürfen"
		;;
	Jun)	moisfr="juin"; moisen="june"; moises="junio"; moisde="juni"; moisge="junio"
		;;
	Jul)	moisfr="juillet"; moisen="july"; moises="julio"; moisde="juli"; moisge="juli"
		;;
	Aug)	moisfr="août"; moisen="august"; moises="agosto"; moisde="augustus"; moisge="agosto"
		;;
	Sep)	moisfr="septembre"; moisen="september"; moises="septiembre"; moisde="september"; moisge="september"
		;;
	Oct)	moisfr="octobre"; moisen="october"; moises="octubre"; moisde="oktober"; moisge="oktober"
		;;
	Nov)	moisfr="novembre"; moisen="november"; moises="noviembre"; moisde="november"; moisge="november"
		;;
	Dec)	moisfr="décembre"; moisen="december"; moises="deciembre"; moisde="december"; moisge="december"
		;;
esac

case $langue in
	fra)	echo "$jourfr $jj $moisfr $an"
		;;	
	eng)	echo "$jouren $jj $moisen $an"
		;;	
	spa)	echo "$joures $jj $moises $an"
		;;	
	deu)	echo "$jourde $jj $moisde $an"
		;;	
	ger)	echo "$jourde $jj $moisge $an"
		;;	
esac
exit 0
