#!/bin/sh

user=$1
grep $user /etc/passwd > /dev/null

while [ $? != 0 ]
do
	echo "$user n'existe pas."
	echo -n "Veuillez saisir un autre nom : "
	read user
	grep $user /etc/passwd > /dev/null
done

while true
do
	who | grep $user > /dev/null
	if [ $? = 0 ]
	then
		echo "$user vient de se connecter"
		break
	fi
	sleep 5
done
exit 0
