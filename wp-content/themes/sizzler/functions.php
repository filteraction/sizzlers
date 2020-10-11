<?php 
/*Auther: GDB
* version: v-25.9
*/

use Nextend\SmartSlider3\Form\Element\WidgetArea;

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

//woocommerce customization by gdb
$custom_commerce = new Custom_Commerce(); // Base class for custom woo
//woo customized by gdb
$shop_page = new Product_Page(); // Child class to customize product page
//$shop_details = new Product_Single_Page(); // Child class to customize product single page
// $mr_cart = new Masonic_Cart(); // Child class to customize minicart page
//$mr_checkout = new Masonic_Checkout(); // Child class to customize checkout page
//$mr_myaccount = new My_Account(); // Base class to customize woo myaccount page

