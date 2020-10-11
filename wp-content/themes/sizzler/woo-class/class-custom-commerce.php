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
	remove_action( 'woocommerce_before_shop_loop_item', 'woocommerce_template_loop_product_link_open', 10 );
	remove_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_rating', 5 );
	add_action( 'gdb_woocommerce_short_desc', array($this, 'wc_add_short_description' ));
	add_action( 'woocommerce_after_shop_loop_item', 'woocommerce_template_loop_rating', 10 );

	// add_filter( 'woocommerce_breadcrumb_defaults', array($this,'masonic_woocommerce_breadcrumbs') );
	//change order status to pending payment for cod in dashbord order
	// add_filter( 'woocommerce_cod_process_payment_order_status', 'change_cod_payment_order_status', 10, 2 );
	// add_action('wp_head', array($this, 'remove_woo_elements'));

	// if( current_user_can( 'administrator' ) ){
	// remove_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_price', 10 );
	// remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 10 );
	// }
	// add_filter( 'the_title', array($this, 'bk_title_order_received'), 10, 2 );
	// add_filter( 'woocommerce_sale_flash', array($this, 'masonic_rename_sale_badge'), 9999 );
 
	//custom hot attribute like sale
	// Display Fields
	add_action( 'woocommerce_product_options_general_product_data', array($this, 'woo_add_custom_general_field') );
	// Save Fields
	add_action( 'woocommerce_process_product_meta', array($this, 'woo_add_custom_general_fields_save' ));
	//show field data
	add_action('woocommerce_before_shop_loop_item_title', array($this, 'custom_hot_product'));

	}
	
	public function woo_add_custom_general_field() {

		global $woocommerce, $post;
		echo '<div class="options_group">';
		// Checkbox
		woocommerce_wp_checkbox( 
	   array( 
	   'id'            => '_checkbox', 
	   'wrapper_class' => 'show_if_simple', 
	   'label'         => __('HOT Product', 'woocommerce' ), 
	   'description'   => __( 'Check for Hot Product', 'woocommerce' )
	   )
	   );
	   
	   echo '</div>';
	   
	}
	   
	public function woo_add_custom_general_fields_save( $post_id ){
		 $woocommerce_checkbox = isset( $_POST['_checkbox'] ) ? 'yes' : 'no';
		 update_post_meta( $post_id, '_checkbox', $woocommerce_checkbox );
	}

	public function custom_hot_product(){
		global $product;
		$is_hot = get_post_meta( $product->id, '_checkbox', true );
		if ( 'yes' == $is_hot ) {
		  echo '<span class="tag2 hot">HOT</span> ';
		}
	}
	public function wc_add_short_description() {
		global $product;
	
		?>
			<div class="description">
				<?php echo apply_filters( 'woocommerce_short_description', $product->post->post_excerpt ) ?>
			</div>
		<?php
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