<?php 
/*Auther: GDB
* version: v-25.9
*/
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
ob_start();
// error_reporting(0);
define('sys_template_dir', get_template_directory()); // Template Directory
define('sys_template_uri', get_template_directory_uri()); // Template Directory URI
define('sys_theme_plugins', sys_template_dir.'/inc/plugins'); // get plugins directory
define('sys_theme_plugins_uri', sys_template_uri.'/inc/plugins'); // get plugins uri
require_once('wp_bootstrap_pagination.php');
include('walker.php');
include 'autoload.php';

$theme_obj = new Sizzler(); // Theme base class

//User login
if(isset($_POST['sizzler_user_login'])){
	$user = new User(); //file is loaded via autoloader
	$user->sizzler_user_login($_POST);
}
//forgot password
if(isset($_POST['sizzler_forgot_password'])){
$user = new User(); 
$user->sizzler_forgot_password($_POST);
}
//create user
if(isset($_POST['sizzler_create_user'])){
	$user = new User(); 
	$user->sizzler_create_user($_POST);
}

?>