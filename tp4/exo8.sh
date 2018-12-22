#!/bin/bash

[ $# -ne 1 ] && echo ce script prend un seul argument en parametre && exit

res=1
if [ $1 -eq 0 ] || [ $1 -eq 1 ]
then 
	echo 1
else
	for i in $( seq $1 )
	do
		((res*=i))
		
	done
	echo $res
fi
