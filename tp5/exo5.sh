#!/bin/bash


options=("Sauvegarde" "Restauration" "Fin")
PS3="votre choix : "

select opt in "${options[@]}"
do
	echo "Vous avez choisi : $REPLY"
	case $REPLY  in 
		1) echo "Vous avez choisi la sauvegarde en archive";;
		2) echo "Vous avez chosii la restauration de l'archive";;
		3) break;;
		*) echo "cette option n'existe pas"
	esac
done
