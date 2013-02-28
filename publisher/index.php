<?php

//Definindo caminho absoluto no disco.
define('ROOT_DIR', realpath(dirname(__FILE__)));

//Definindo caminho http.
define('HTTP_DIR', str_replace(basename(__FILE__), '', $_SERVER['REQUEST_URI']));

//Listando o conteúdo do diretório.
$directory = new DirectoryIterator(ROOT_DIR);
foreach($directory as $content) {
	echo $content->getFilename() . '<br />';
}
//Listando o conteúdo do diretório.