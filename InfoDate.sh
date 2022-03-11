#!/bin/sh

set `date`
echo "date : $1 $2 $3 $4"
temps=$5
IFS=:
set $temps
echo "Il est $1 heures et $2 minutes et $3 secondes"
