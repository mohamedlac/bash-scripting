#!/bin/bash

usage()
{
	echo $0 start step end
	exit 127
}

[ $# -eq 0 ] && usage

[ $# -eq 3 ] && seq $1 $2 $3

[ $# -eq 2 ] && seq $1 $2

[ $# -eq 1 ] && seq $1
