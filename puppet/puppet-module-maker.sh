#!/bin/bash

# Modulename
read -p "Module Name: " NAME
if [ -z "$NAME" ]; then
	echo "Error: Input the module name!"
	exit 1
fi
# Modulename

# Module Directory
if [ -d ./${NAME} ]; then
	echo "ERROR: Directory \"${NAME}\" exists!"
	exit 1
fi
# Module Directory

# Description
read -p "Module Description: " DESCRIPTION
if [ -z "$DESCRIPTION" ]; then
	echo "Error: Input the module description!"
	exit 1
fi
# Description

# Author
WHO=`whoami`
read -p "Author[${WHO}]: " AUTHOR
[ -z $AUTHOR ] && AUTHOR=${WHO}
# Author

# Creating skeleton of module
[ -d ./${NAME} ]           || mkdir ./${NAME}
[ -d ./${NAME}/files ]     || mkdir ./${NAME}/files
[ -d ./${NAME}/lib ]       || mkdir ./${NAME}/lib
[ -d ./${NAME}/templates ] || mkdir ./${NAME}/templates
[ -d ./${NAME}/spec ]      || mkdir ./${NAME}/spec

[ -d ./${NAME}/tests ] || mkdir ./${NAME}/tests
echo "include ${NAME}" > ./${NAME}/tests/init.pp

[ -d ./${NAME}/manifests ] || mkdir ./${NAME}/manifests
echo "class ${NAME} {

}" > ./${NAME}/manifests/init.pp
# Creating skeleton of module

# Modulefile
FILE="./${NAME}/Modulefile"
echo "name '${AUTHOR}-${NAME}'"               > $FILE
echo "version '0.0.0'"                       >> $FILE
echo "author '${AUTHOR}'"                    >> $FILE
echo "license 'MIT'"                         >> $FILE
echo "summary 'UNKNOWN'"                     >> $FILE
echo "description '${DESCRIPTION}'"          >> $FILE
echo "source 'git://github.com/${AUTHOR}/puppet-${NAME}.git'"        >> $FILE
echo "project_page 'http://documentup.com/${AUTHOR}/puppet-${NAME}'" >> $FILE
# Modulefile
