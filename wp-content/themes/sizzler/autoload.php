<?php
define("THEME_DIR", __DIR__);
spl_autoload_register(function($className){
	$className = strtolower($className);
	$file = THEME_DIR.'/classes/class-'.$className.'.php';
  if( file_exists($file) ) { //very important
		include($file); 
	}

});

?>