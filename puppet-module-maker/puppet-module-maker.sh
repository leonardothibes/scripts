#!/bin/bash

# Author
WHO=`whoami`
read -p "Input the author[${WHO}]: " AUTHOR
[ -z ${AUTHOR} ] && AUTHOR=${WHO}
# Author


