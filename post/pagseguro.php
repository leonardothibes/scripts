#!/usr/bin/php
<?php

require_once 'Zend/Http/Client.php';

$url    = 'http://telesena.desenv.local/pagseguro/request';
$client = new Zend_Http_Client($url);
$result = $client->setParameterPost('transid', rand(1000,5000))
	             ->request(Zend_Http_Client::POST);

if($result->isError()) {
	echo sprintf('[%d] Error: %s', $result->getStatus(), $result->getMessage());
}

$rs = $result->getBody();
print_r($rs);
