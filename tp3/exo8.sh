#!/bin/bash

usage()
{
	echo "la fonction doit prendre des fichiers en parametres"
	exit 127
}
[ $# -eq 0 ] && usage

PS3="choisissez un algorithme de compression : "

options=("extension .tar.gz" "extension .tar.bz2" "extension .tar.xz" "quitter")

select opt in "${options[@]}"
do
	case $REPLY in
	1) tar cvzf archive.tar.gz $*
	;;
	2) tar cvjf archive.tar.bz2 $*
	;;
	3) tar cvJf archive.tar.xz $*
	;;
	4) break
	;;
	*) echo "option non definie"
	;;
	esac
done
