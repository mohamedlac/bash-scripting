#!/bin/bash

[ $# -eq 0 ] && echo le script doit prendre en argument un fichier

desc="est accessible par $USER en "

[ -f $1 ] && echo "le fichier $1 est un fichier"
[ -d $1 ] && echo "le fichier $1 est un repertoire"

[ -r $1 ] && desc="$desc lecture"
[ -w $1 ] && desc="$desc ecriture"
[ -x $1 ] && desc="$desc execution"

echo $desc
