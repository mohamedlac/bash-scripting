#!/bin/bash

binary()
{
if [ $1  -eq 0 ]
then
	echo "0"
else
	r=0
	val=$1
	b=""
	while [ $val -ne 0 ]
	do
		r=$((val%2))
		val=$(($val/2))
		b="$b $r"
	done
echo  "bin : $(echo $b | rev )"
fi
}

octal()
{
if [ $1 -eq 0 ]
then
	echo "0"
else
	r=0
	val=$1
	o=""
	while [ $val -ne 0 ]
	do
		r=$(($val%8))
		val=$(($val/8))
		o="$o $r"
	done
	echo "Octale : $(echo $o | rev)"

fi
}

hexa()
{
tab=(0 1 2 3 4 5 6 7 8 9 A B C D E F)
if [ $1 -eq 0 ]
then
	echo "0"
else
	r=0
	val=$1
	h=""
	while  [ $val -ne 0 ]
	do
		r=$(($val%16))
		val=$(($val/16))
		h="$h ${tab[$r]}"
	done
	echo  "hexa : $(echo $h | rev)"

fi
}

binary $1
hexa $1
octal $1
