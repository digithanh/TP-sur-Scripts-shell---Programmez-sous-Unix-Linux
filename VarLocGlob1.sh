#!/bin/sh

echo "Contenu du répertoire `pwd` : "
ls
echo "Le shell de $(whoami) est : $SHELL"
echo "Le nom de la machine : $(hostname)"
os=`uname -s`
ver=`uname -r`
echo "Système d'exploitation : $os, Version : $ver"
