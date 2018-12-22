#!/bin/bash
usage()
{
	echo $0 table
	exit 127
}

[ $# -eq 0 ] && usage
echo "teams : "
while read line
do
	
	echo $line | cut -d" " -f1
	
done < $1
