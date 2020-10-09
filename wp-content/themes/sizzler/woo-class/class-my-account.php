<?php 
/* Customize woo myaccount page*/
class My_Account{
	public function __construnct()
	{
	add_action( 'init', array($this, 'primer_add_wishlist_endpoint' )); //Register new wishlist endpoint
	add_filter( 'query_vars', array($this, 'primer_wishlist_query_vars'), 0 );
	add_filter ( 'woocommerce_account_menu_items', array($this, 'wpb_woo_my_account_order' )); //Change the order of the endpoints that appear in My Account Page
	add_action( 'woocommerce_account_wish-list_endpoint', 'woocommerce_wishlist_content' ); //Add Wishlist Shortcode - https://wordpress.org/plugins/ti-woocommerce-wishlist/
	}

	public function woocommerce_wishlist_content() {
		echo do_shortcode( '[ti_wishlistsview]' );
	}
	public function wpb_woo_my_account_order() {
		$myorder = array(
		'dashboard'          => __( 'Dashboard', 'woocommerce' ),
		'orders'             => __( 'Order History', 'woocommerce' ),
		'wish-list'           => __( 'Wishlist', 'woocommerce' ),
		'edit-address'       => __( 'Addresses', 'woocommerce' ),
		'edit-account'       => __( 'Profile Setting', 'woocommerce' ),
		'customer-logout'    => __( 'Logout', 'woocommerce' ),
		);
		return $myorder;
	}
	public function primer_wishlist_query_vars( $vars ) {
	$vars[] = 'wish-list';
	return $vars;
	}
	public function primer_add_wishlist_endpoint() {
	add_rewrite_endpoint( 'wish-list', EP_ROOT | EP_PAGES );
	}


}

?>