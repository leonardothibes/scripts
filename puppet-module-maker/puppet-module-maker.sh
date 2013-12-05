#!/bin/bash

# REFERENCE:
#	http://docs.puppetlabs.com/puppet/2.7/reference/modules_fundamentals.html#example
#	https://github.com/leonardothibes/puppet-memcached

# Author
WHO=`whoami`
read -p "Input the author[${WHO}]: " AUTHOR
[ -z ${AUTHOR} ] && AUTHOR=${WHO}
# Author


