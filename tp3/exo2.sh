#!/bin/bash

read -p "Nom du fichier/repertoire : " file

[ -e $file ] && echo "le fichier $file existe"
[ -r $file ] && echo "le fichier a la permission de lecture"
[ -w $file ] && echo "le fichier a la permission de modification"
 
