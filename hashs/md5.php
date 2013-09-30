#!/usr/bin/php
<?php

if (!isset($argv[1]) or !strlen($argv[1])) {
	echo "Informe um valor a ser convertido em MD5 \n";
	exit(1);
}

echo md5($argv[1]) . "\n";
