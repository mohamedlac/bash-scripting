#!/bin/bash

PS3="Selectionner une option :"

options=("Lister le contenu du repertoire(ls -l)" "Lister les processus en cours déxecution(ps aux)"  "la date d'aujourd'hui(date)" "quitter")

select opt in "${options[@]}"
do
	case $REPLY in 
	1) ls -l
	;;
	2) ps aux
	;;
	3) date
	;;
	4) break
	;;
	*) echo "option non definie"
	;;
	esac


done 

