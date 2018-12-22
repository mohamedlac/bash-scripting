#!/bin/bash

[ $# -lt 1 ] && echo ce script doit prendre en argument un fichier && exit 127

#$FILE=$1

if [ -f $1 ] && [ -n $1 ]
then
	RESULT="$(tr a-z A-Z < $1)"
	echo $RESULT
else
	echo "l'argument donné en entrer n'est pas un fichier ou est vide "

fi




