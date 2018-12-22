#!/bin/bash

[ $# -le 3 ] && echo il faut plus de troix arguments && exit 127

max=$1

for i in $@
do
	[ $i -gt $max ]	&& max=$i
done

echo "max : $max"
