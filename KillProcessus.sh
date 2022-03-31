#!/bin/sh -x

# KillPs : Tuer le processus dont le nom est un paramètre du script

ps -e -o pid,cmd | grep $1 | cut -d ' ' -f 4 > processus

if [ $? != 0 ] ; then
	echo "Ce processus ne tourne pas. "
	exit 1
else
	# Au cas ou il y a plusieurs processus qui portent le même nom
	for proc in `more processus`
	do
		kill -15 $proc
	done
fi

exit 0
