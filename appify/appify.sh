#!/bin/bash

if [ -z $1 ]; then
	echo 'App name could not be blank'
	exit 1
fi

NAME=$(echo ${1} | cut -d. -f1)
FILE=${NAME}.sh
DIR="$NAME.app/Contents/MacOS"

if [ -d "${NAME}.app" ]; then
	echo "${NAME}.app already exists"
	exit 1
fi

mkdir -p $DIR
cp $FILE "${DIR}/${NAME}"
chmod +x "${DIR}/${NAME}"
