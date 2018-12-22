#!/bin/bash

usage()
{
	echo "$0 filesrc filedst"
	exit
}

[ $# -ne 2 ] && usage

cp $1 $2
