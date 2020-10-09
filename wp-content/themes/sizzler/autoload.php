<?php
define("THEME_DIR", __DIR__);
spl_autoload_register(function($class){
	$class = strtolower($class);
	$path = get_file_name_from_class($class);
	// echo $path;
	if ( $path && is_readable( $path ) ) {  //very important
		include_once $path; 
		return true;
	}
	return false;
});

function get_file_name_from_class( $class ) {
	$path = THEME_DIR.'/theme-class/class-'.$class.'.php';
	if(file_exists($path)){
		$path = $path;
	}
	else {
		$path = THEME_DIR.'/woo-class/class-'. str_replace( '_', '-', $class ) . '.php';
	}
	return $path;
}
?>
