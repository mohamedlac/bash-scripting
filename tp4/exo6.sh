#!/bin/bash

read -p "entrer a : " a
if [ "$a" = "." ]
then
	exit
fi

read -p "entrer  b : " b
while [ "$1" != "." ]

do

   echo "$1 + $2 " |bc

done
