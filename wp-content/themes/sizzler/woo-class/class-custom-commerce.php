<?php 
/* Base class for woo templating */
class Custom_Commerce{
	public function __construct()
	{
	add_action( 'after_setup_theme', array( $this,'woocommerce_support' ) );
	add_filter( 'woocommerce_show_page_title', '__return_false' );
	remove_action( 'woocommerce_before_shop_loop', 'wc_print_notices', 10 );
	remove_action( 'woocommerce_before_shop_loop', 'woocommerce_result_count', 20 );
	remove_action( 'woocommerce_before_shop_loop', 'woocommerce_catalog_ordering', 30 );
	add_filter( 'woocommerce_breadcrumb_defaults', array($this,'masonic_woocommerce_breadcrumbs') );
	//change order status to pending payment for cod in dashbord order
	add_filter( 'woocommerce_cod_process_payment_order_status', 'change_cod_payment_order_status', 10, 2 );
	add_action('wp_head', array($this, 'remove_woo_elements'));

	if( current_user_can( 'administrator' ) ){
	remove_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_price', 10 );
	remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 10 );
	}
	add_filter( 'the_title', array($this, 'bk_title_order_received'), 10, 2 );
	add_filter( 'woocommerce_sale_flash', array($this, 'masonic_rename_sale_badge'), 9999 );
 
		

	}
	public function masonic_rename_sale_badge() {
		   return '<div class="header-area"><h2>sale!</h2></div>';
	}

	public function bk_title_order_received( $title, $id ) {
	if ( is_order_received_page() && get_the_ID() === $id ) {
	$title = "Order Confirmation!";
	}
	return $title;
	}

	public function remove_woo_elements(){
	// Remove the product description
	remove_action( 'woocommerce_archive_description', 'woocommerce_taxonomy_archive_description', 10 );
	}

	public function woocommerce_support() 
	{
	/**support woocommerce*/
	add_theme_support( 'woocommerce' );
	}
	public function masonic_woocommerce_breadcrumbs() 
	{
	return array(
	'delimiter'   => '<span> &#47; </span>',
	'wrap_before' => '<ul>',
	'wrap_after'  => '</ul>',
	'before'      => '<li>',
	'after'       => '</li>',
	'home'        => _x( 'Home', 'breadcrumb', 'woocommerce' ),
	);
	}
	public function change_cod_payment_order_status( $order_status, $order ) {
	return 'wc-pending';
	}
}

?>