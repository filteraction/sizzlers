<?php 
/*Base class for Sizzler theming*/
class Sizzler{
	public function __construct()
	{
	global $wpdb;
	$this->db = $wpdb;
	$this->user_table =  $wpdb->prefix . "users";
	$this->version_degrade(); 
	#hooks
	add_action( 'after_setup_theme', array($this,'sizzler_theme_setup'));
	add_theme_support('post-thumbnails'); #thumbnail support
	set_post_thumbnail_size( 1200, 9999 );
	// add_filter('show_admin_bar', '__return_false'); #remove admin bar
	add_action( 'init', array( $this,'Sizzler_create_menu' ) ); 
	add_action( 'init', array($this, 'codex_magazine_init') );
	add_action('wp_footer', array($this,'show_template'), 999); #template debuging for dev env.
	// add_action( 'widgets_init', array($this, 'Sizzler_multiple_widget_init' ));
	add_action( 'widgets_init', array($this, 'footer_widget_1' ));
	add_filter('manage_users_columns', array($this, 'Sizzler_add_user_id_column'));
	add_action('manage_users_custom_column',  array($this, 'Sizzler_show_user_id_column_content'), 10, 3);
	add_action( 'admin_menu', array($this,'Sizzler_register_custom_menu_page' ));
	// add_action('pre_current_active_plugins', array($this,'Sizzler_plugin_hide'));
	add_action('wp_logout',array($this, 'Sizzler_redirect_after_logout'));
	// add_action( 'user_register', array($this,'Sizzler_auto_login_user' ));
	//remove unnessary pages
	add_action( 'admin_init', function () { 
	remove_menu_page( 'deactivate-user' ); 
	remove_menu_page( 'activate-user' ); 
	remove_menu_page( 'xoo_cp' ); 
	remove_menu_page( 'asl_settings' ); 
	remove_menu_page( 'tinvwl' ); 
	remove_menu_page( 'edit.php?post_type=acf-field-group' ); 

	});
	add_action('wp_enqueue_scripts', array($this, 'Sizzler_enqueue_scripts'));
	if (!is_user_logged_in()) {
		add_action('init', array($this, 'ajax_login_init'));
	}

	add_action('customize_register', array($this, 'themeslug_theme_customizer')); //custom logo
	// acf generate option page
	if( function_exists('acf_add_options_page') ) {
		acf_add_options_page(array(
		'page_title' 	=> 'Sizzler General Settings',
		'menu_title'	=> 'Sizzler Settings',
		'menu_slug' 	=> 'Sizzler-general-settings',
		'capability'	=> 'edit_posts',
		'redirect'		=> false
		));
		}

	if(current_user_can('subscriber')){
      add_action('admin_menu', array($this, 'remove_menus'));
  	}

  	//add_filter( 'login_redirect', array($this, 'wpdocs_my_login_redirect', 10, 3 ));

	}

	public function sizzler_theme_setup(){
    // Add <title> tag support
    add_theme_support( 'title-tag' );  
    // Add custom-logo support
    add_theme_support( 'custom-logo' );
	}


	public function wpdocs_my_login_redirect( $url, $request, $user ) {
    if ( $user && is_object( $user ) && is_a( $user, 'WP_User' ) ) {
        if ( $user->has_cap( 'administrator' ) ) {
            $url = admin_url();
        } else {
            $url = home_url();
        }
    }
    return $url;
}
public function remove_menus(){
      remove_menu_page('index.php');
  }

public function themeslug_theme_customizer($wp_customize)
	{
	$wp_customize->add_section('themeslug_logo_section', array(
	'title' => __('Logo', 'themeslug'),
	'priority' => 30,
	'description' => 'Upload a logo to replace the default site name and description in the header',
	));
	$wp_customize->add_setting('themeslug_logo');
	$wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'themeslug_logo', array(
	'label' => __('Logo', 'themeslug'),
	'section' => 'themeslug_logo_section',
	'settings' => 'themeslug_logo',
	)));
	}

public function ajax_login_init(){
	wp_register_script('ajax-login-script', get_template_directory_uri() . '/js/ajax-login-script.js', array('jquery') );
	wp_enqueue_script('ajax-login-script');
	wp_localize_script( 'ajax-login-script', 'ajax_login_object', array(
	'ajaxurl' => admin_url( 'admin-ajax.php' ),
	'redirecturl' => home_url(),
	'loadingmessage' => __('Sending user info, please wait...')
	));
	add_action( 'wp_ajax_nopriv_ajaxlogin', array($this, 'ajax_login' ));
	}


public function ajax_login(){
// First check the nonce, if it fails the function will break
check_ajax_referer( 'ajax-login-nonce', 'security' );
// Nonce is checked, get the POST data and sign user on
$info = array();
$info['user_login'] = $_POST['username'];
$info['user_password'] = $_POST['password'];
$info['remember'] = true;
if( empty($_POST['username']) ||  empty($_POST['password']) ){
$response = array('loggedin'=>false,'message'=> __('Username and Password is required.'));
echo json_encode($response);
die();
}
global $wpdb;
$user_table = $wpdb->prefix . 'users';
$username = $_POST['username'];
$query = "SELECT * FROM $user_table WHERE user_email = '$username' OR user_login = '$username'";
$results = $wpdb->get_row($query);
if($results){
if( $results->user_status == 0 ){
$response = array('loggedin'=>false,'message'=> __('Your account is inactive. Please contact to the site admin.'));
echo json_encode($response);
die();
}
$user_signon = wp_signon( $info, false );
if ( is_wp_error($user_signon) ){
echo json_encode(array('loggedin'=>false, 'message'=>__('Wrong username or password.')));
die();
} else {
echo json_encode(array('loggedin'=>true, 'message'=>__('Login successful, redirecting...')));
die();
}
}else{
echo json_encode(array('loggedin'=>false, 'message'=>__('User not found!')));
die();
}
}


public function Sizzler_enqueue_scripts(){
	// enqueue css
	wp_register_style('bootstrap-min', sys_template_uri. '/assets/css/bootstrap.min.css');
	wp_enqueue_style('bootstrap-min');
	wp_register_style('owl-carousel-min', sys_template_uri. '/assets/css/owl.carousel.min.css');
	wp_enqueue_style('owl-carousel-min');
	wp_register_style('slicknav', sys_template_uri. '/assets/css/slicknav.css');
	wp_enqueue_style('slicknav');
	wp_register_style('flaticon', sys_template_uri. '/assets/css/flaticon.css');
	wp_enqueue_style('flaticon');
	wp_register_style('progressbar', sys_template_uri. '/assets/css/progressbar_barfiller.css');
	wp_enqueue_style('progressbar');
	wp_register_style('gijgo', sys_template_uri. '/assets/css/gijgo.css');
	wp_enqueue_style('gijgo');
	wp_register_style('animate', sys_template_uri. '/assets/css/animate.min.css');
	wp_enqueue_style('animate');
	wp_register_style('animated-headline', sys_template_uri. '/assets/css/animated-headline.css');
	wp_enqueue_style('animated-headline');
	wp_register_style('magnific-popup', sys_template_uri. '/assets/css/magnific-popup.css');
	wp_enqueue_style('magnific-popup');	
	wp_register_style('fontawesome', sys_template_uri. '/assets/css/fontawesome-all.min.css');
	wp_enqueue_style('fontawesome');	
	wp_register_style('themify-icons', sys_template_uri. '/assets/css/themify-icons.css');
	wp_enqueue_style('themify-icons');	
	wp_register_style('slick', sys_template_uri. '/assets/css/slick.css');
	wp_enqueue_style('slick');	
	wp_register_style('nice-select', sys_template_uri. '/assets/css/nice-select.css');
	wp_enqueue_style('nice-select');
	wp_register_style('style', sys_template_uri. '/assets/css/style.css');
	wp_enqueue_style('style');	
	wp_register_style('theme-style', sys_template_uri. '/style.css');
	wp_enqueue_style('theme-style');



	// enqueue js
	wp_register_script( 'modernizr', sys_template_uri. '/assets/js/vendor/modernizr-3.5.0.min.js', null, null, false );
	wp_enqueue_script('modernizr');	
	wp_register_script( 'jQueryj', sys_template_uri. '/assets/js/vendor/jquery-1.12.4.min.js', null, null, true );
	wp_enqueue_script('jQueryj');
	wp_register_script( 'popper', sys_template_uri. '/assets/js/popper.min.js', null, null, true );
	wp_enqueue_script('popper');
	wp_register_script( 'bootstrap-min', sys_template_uri. '/assets/js/bootstrap.min.js', null, null, true );
	wp_enqueue_script('bootstrap-min');	
	wp_register_script( 'slicknav-min', sys_template_uri. '/assets/js/jquery.slicknav.min.js', null, null, true );
	wp_enqueue_script('slicknav-min');
	wp_register_script( 'owl-arousel-min', sys_template_uri. '/assets/js/owl.carousel.min.js', null, null, true );
	wp_enqueue_script('owl-carousel-min');	
	wp_register_script( 'slick-min', sys_template_uri. '/assets/js/slick.min.js', null, null, true );
	wp_enqueue_script('slick-min');
	wp_register_script( 'wow-min', sys_template_uri. '/assets/js/wow.min.js', null, null, true );
	wp_enqueue_script('wow-min');
	wp_register_script( 'animated', sys_template_uri. '/assets/js/animated.headline.js', null, null, true );
	wp_enqueue_script('animated');
	wp_register_script( 'magnific-popup', sys_template_uri. '/assets/js/jquery.magnific-popup.js', null, null, true );
	wp_enqueue_script('magnific-popup');
  wp_register_script( 'sticky', sys_template_uri. '/assets/js/jquery.sticky.js', null, null, true );
	wp_enqueue_script('sticky'); 
	wp_register_script( 'plugins', sys_template_uri. '/assets/js/plugins.js', null, null, true );
	wp_enqueue_script('plugins');
	wp_register_script( 'main', sys_template_uri. '/assets/js/main.js', null, null, true );
	wp_enqueue_script('main');
	wp_register_script( 'custom-js', sys_template_uri. '/assets/js/custom.js', null, null, true );
	wp_enqueue_script('custom-js');
	}
	public function Sizzler_auto_login_user($user_id){
	$user = get_user_by( 'id', $user_id );
	wp_set_current_user($user_id); // set the current wp user
	wp_set_auth_cookie($user_id, true, false); 
	do_action( 'wp_login', $user->user_login );
	}
	public function Sizzler_redirect_after_logout(){
	wp_redirect( home_url() );
	exit();
	}
	public function Sizzler_plugin_hide(){
		global $wp_list_table;
		$hidearr = array('ajax-search-lite/ajax-search-lite.php','woocommerce-products-filter/index.php', 'advanced-custom-fields-pro/acf.php', 'added-to-cart-popup-woocommerce/xoo-cp-main.php', 'yith-woocommerce-advanced-reviews/init.php'); // replace your plugin url here
		$myplugins = $wp_list_table->items;
		  foreach ($myplugins as $key => $val) {
			if (in_array($key,$hidearr)) {
			unset($wp_list_table->items[$key]);
			}
		}
	}
	public function Sizzler_add_user_id_column($columns) 
	{
	$columns['delete'] = 'Activate/Deactivate';
	$columns['status'] = 'Status';
	return $columns;
	}
	public function Sizzler_show_user_id_column_content($value, $column_name, $user_id) {
	$user = get_userdata( $user_id );
	if ( 'delete' == $column_name ) {
	$status = get_the_author_meta( 'user_status', $user_id );
	if ($status == 1) {
	return '<a class="button button-primary button-large page-title-action" href="admin.php?page=deactivate-user&id='.$user_id.'">Deactivate</a>';
	} else {
	return '<a class="button button-info button-large page-title-action" href="admin.php?page=activate-user&id='.$user_id.'">Activate</a>';
	}
	}
	if ( 'status' == $column_name ) {
	return get_the_author_meta( 'user_status', $user_id );
	}
	return $value;
	}
	public function Sizzler_register_custom_menu_page(){
	add_menu_page('deactivate-user', 'Update User Status', 'manage_options', 'deactivate-user', array($this, 'status_deactivate_callback'), 'dashicons-groups', 70);
	add_menu_page('activate-user', 'Update User Status', 'manage_options', 'activate-user', array($this, 'status_activate_callback'), 'dashicons-groups', 70);
	}
	public function status_deactivate_callback(){
	$user_id = $_GET['id'];
	$status = 0;
	// update_user_status( $user_id, 0 );
	$result = $this->db->update($this->user_table, array('user_status'=>$status), array('ID'=>$user_id));
	// echo $result;
	if($result>0){
	wp_redirect('users.php');
	}
	}	
	public function status_activate_callback(){
	$user_id = $_GET['id'];
	$status = 1;
	// update_user_status( $user_id, 1 );
	$result = $this->db->update($this->user_table, array('user_status'=>$status), array('ID'=>$user_id));
	// echo $result;
	if($result>0){
	wp_redirect('users.php');
	}
	}
	public function show_template() 
	{
	global $template; 
	echo '<!--TEMPLATE = ' . basename($template) .'-->'; 
	}
	public function version_degrade()
	{
	#remove gutenberg editor
	if (version_compare($GLOBALS['wp_version'], '5.0-beta', '>')) {
	add_filter('use_block_editor_for_post_type', '__return_false', 10);
	} else {
	add_filter('gutenberg_can_edit_post_type', '__return_false', 10);
	}
	}
	public function Sizzler_create_menu()
	{
	#create navigation menu
	register_nav_menu('primary', 'Header Menu');
	register_nav_menu('footer1', 'Footer Menu 1');
	register_nav_menu('footer2', 'Footer Menu 2');
	}
	/* Better way to add multiple widgets areas */
	public function Sizzler_widget_registration($name, $id, $description,$beforeWidget, $afterWidget, $beforeTitle, $afterTitle){
	register_sidebar( array(
	'name' => $name,
	'id' => $id,
	'description' => $description,
	'before_widget' => $beforeWidget,
	'after_widget' => $afterWidget,
	'before_title' => $beforeTitle,
	'after_title' => $afterTitle,
	));
	}
	public function Sizzler_multiple_widget_init(){
	Sizzler_widget_registration('Footer widget 1', 'footer-sidebar-1', 'test', '', '', '', '');
	Sizzler_widget_registration('Footer widget 2', 'footer-sidebar-2', 'test', '', '', '', '');
	}
	public function footer_widget_1(){
	register_sidebar( array(
	'name' => __( 'Footer 1', 'demolition' ),
	'id' => 'footer_1',
	'description' => __( 'Add widgets here to appear in Footer', 'demolition' ),
	'before_widget' => '',
	'after_widget' => '',
	'before_title' => '<h4>',
	'after_title' => '</h4>',
	) );
	}
/**
 * Register Post Type magazine
 */

function codex_magazine_init() {
    $labels = array(
        'name'               => _x( 'Magazines', 'post type general name', 'your-plugin-textdomain' ),
        'singular_name'      => _x( 'Magazine', 'post type singular name', 'your-plugin-textdomain' ),
        'add_new'            => 'Add Magazine',
        'all_items'          => 'All Magazine',
        'edit_item'          =>'Edit Magazine',
    );
    $args = array(
        'labels'             => $labels,
        'description'        => __( 'Description.', 'your-plugin-textdomain' ),
        'public'             => true,
        'publicly_queryable' => true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'query_var'          => true,
        'rewrite'            => array( 'slug' => 'magazine' ),
        'capability_type'    => 'post',
        'has_archive'        => true,
        'menu_position'      => 5,
        'menu_icon'			 =>'dashicons-admin-page',
        'supports'           => array( 'title', 'author', 'thumbnail', 'comments' )
    );
    register_post_type( 'magazine', $args );
}


}
?>