#!/bin/bash


[ $# -ne 1 ] && echo cet argument doit prendre en argument un parametre && exit 127

ANS="$(echo $1 | rev)"

if [ "$ANS" = $1 ]; then
	echo "$1 est un palindrome"
else
	echo "$1 n'est pas un palindrome"
fi



