#!/bin/bash

if [ "$1" == "" ]; then
	PRG="program"
else
	PRG=$1
fi

#PRG=$(echo $1 | sed 's/\.m//g')
gcc -o $PRG *.m -framework Foundation