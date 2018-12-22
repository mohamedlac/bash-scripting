#!/bin/bash

read -p "tableau : " -a tab


N=${#tab[*]}
for j in $(seq 0 $((N-1)))
do
for i in $(seq 1 $((N-1)))
do
	if [ ${tab[$(($i-1))]} -gt ${tab[$i]} ]
	then
		temp=${tab[$((i-1))]}
		tab[$((i-1))]=${tab[$i]}
		tab[$i]=$temp
		 
	fi

done
done
echo ${tab[*]}
