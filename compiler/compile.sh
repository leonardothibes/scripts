#!/bin/bash

#if [ "$1" == "" ]; then
#	echo "Um arquivo de entrada deve ser informado."
#	exit 1
#fi

#PRG=$(echo $1 | sed 's/\.m//g')
#gcc -o $PRG $PRG.m -framework Foundation
gcc -o $1 *.m -framework Foundation