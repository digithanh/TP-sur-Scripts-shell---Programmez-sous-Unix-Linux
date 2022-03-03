#!/bin/bash

grep "^$1:" /etc/passwd
if [[ $? -eq 0 ]]
then
	IFS=:
	set `grep "$1:" /etc/passwd` 
	echo "L'utilisateur $1 a été trouvé. Il possède le numéro $3"
	exit 0
else
	echo "L'utilisateur $1 n'existe pas "
	exit 1
fi
