#!/bin/bash

[ $# -ne 1 ] && echo vous devez passer en argument le fichier /etc/passwd && exit 127

BASH="$(grep $USER $1 | cut -d: -f 7)"

echo "utilisateur : $USER"
echo "Bash : $BASH" 
