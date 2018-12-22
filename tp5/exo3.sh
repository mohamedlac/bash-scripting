#!/bin/bash

[ $# -ne 2 ] && echo sahbi ili9 deux arguments && exit 127

echo "$1 + $2 "| bc

