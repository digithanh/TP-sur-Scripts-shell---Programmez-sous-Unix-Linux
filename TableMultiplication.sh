#!/bin/sh

while true
do
	echo "Saisir un nombre (0 pour arreter):"
	read nombre
	[ $nombre -eq 0 ] && exit 0

	i=0
	while [ $i -le 10 ]
	do
		echo "$nombre x $i = `expr $nombre \* $i`"
		i=`expr $i + 1`
	done
	echo ""
done
