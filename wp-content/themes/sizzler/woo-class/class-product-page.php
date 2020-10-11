<?php 
/* Customize product page */
// class Product_Page extends Custom_Commerce{
class Product_Page {
	public function __construct()
	{
	// parent::__construct();
	//add_action( 'woocommerce_archive_description', array($this,'woocommerce_catalog_page_ordering'), 20 ); //sort by perpage view 
	//add_action( 'woocommerce_after_shop_loop', array($this,'woocommerce_catalog_page_ordering'), 20 );
	//add_filter('loop_shop_per_page',array($this, 'woo_sort_by_page'));// now we set our cookie if we need to
	add_filter( 'loop_shop_per_page', array($this, 'new_loop_shop_per_page'), 20 );
	// remove_action('woocommerce_before_shop_loop_item', 'woocommerce_template_loop_product_link_open', 10);

	//add_action('woocommerce_before_shop_loop_item_title','woocommerce_template_loop_product_link_close', 10);
	//add_action('woocommerce_before_shop_loop_item_title', 'woocommerce_template_loop_product_link_open', 10);
	// remove_action('woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_rating', 5);
	// add_action('woocommerce_shop_loop_item_title', 'woocommerce_template_loop_rating', 10);
	// remove_action('woocommerce_before_shop_loop_item_title', 'woocommerce_show_product_loop_sale_flash', 10);
	// remove_action('woocommerce_after_shop_loop_item', 'woocommerce_template_loop_product_link_close', 5);
	// add_action('woocommerce_after_shop_loop_item_title','woocommerce_template_loop_product_link_close', 5);
	// remove_action('woocommerce_shop_loop_item_title', 'woocommerce_template_loop_product_title', 10);
	// add_action('woocommerce_shop_loop_item_title', array($this, 'masonic_woocommerce_template_loop_product_title'), 10);
	// remove_action('woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart', 10);
	// add_action('woocommerce_after_shop_loop_item', array($this, 'masonic_woocommerce_template_loop_add_to_cart_wrapper'), 10);
	// add_action('woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart', 10);
	// add_action('woocommerce_after_shop_loop_item', array($this, 'masonic_woocommerce_template_loop_add_to_cart_warraper_close'), 10);
	
	//Replace WooCommerce Default Pagination with WP-PageNavi Pagination
	remove_action('woocommerce_after_shop_loop', 'woocommerce_pagination', 10);
	add_action( 'gdb_woo_header',  array($this, 'woocommerce_pagination'), 1 ); // < 2.0+ @called woocommerce.php
	add_action( 'gdb_woo_footer',  array($this, 'woocommerce_pagination'), 1); // < 2.0+



	}
	public function new_loop_shop_per_page( $cols ) {
	  // $cols contains the current number of products per page based on the value stored on Options -> Reading
	  // Return the number of products you wanna show per page.
	  $cols = 6;
	  return $cols;
	}
	public function woocommerce_pagination() {
	?>
	<style type="text/css">
	  .wp-pagenavi {
	    width: 100%;
	  }
	</style>
	<?php
	echo '<div class="row"><div class="col-md-6">';
	wp_pagenavi();  
	woocommerce_result_count();  
	echo '</div><div class="col-md-6">';
	woocommerce_catalog_ordering();
	echo '</div></div>'; 
	}

	public function woocommerce_catalog_page_ordering() {
	?>
	<?php echo '<span class="itemsorder main-odr"><label>View: </label>' ?>
	<form action="" method="POST" name="results" class="woocommerce-ordering woo-odr">
	  <select name="woocommerce-sort-by-columns" id="woocommerce-sort-by-columns" class="sortby" onchange="this.form.submit()">
	    <?php
	//Get products on page reload
	if  (isset($_POST['woocommerce-sort-by-columns']) && (($_COOKIE['shop_pageResults'] <> $_POST['woocommerce-sort-by-columns']))) {
	$numberOfProductsPerPage = $_POST['woocommerce-sort-by-columns'];
	} else {
	$numberOfProductsPerPage = $_COOKIE['shop_pageResults'];
	}
	$shopCatalog_orderby = apply_filters('woocommerce_sortby_page', array(
	'15'   => __('Default', 'woocommerce'),
	'9'   => __('9', 'woocommerce'),
	'15'  => __('15', 'woocommerce'),
	'30'  => __('30', 'woocommerce'),
	'-1'  => __('All', 'woocommerce'),
	));
	foreach ( $shopCatalog_orderby as $sort_id => $sort_name )
	echo '<option value="' . $sort_id . '" ' . selected( $numberOfProductsPerPage, $sort_id, true ) . ' >' . $sort_name . '</option>';
	?>
	  </select>
	</form>
	<?php echo ' </span>' ?>
	<?php
	}

	public function woo_sort_by_page($count) {
	if (isset($_COOKIE['shop_pageResults'])) { // if normal page load with cookie
	$count = $_COOKIE['shop_pageResults'];
	}
	if (isset($_POST['woocommerce-sort-by-columns'])) { //if form submitted
	setcookie('shop_pageResults', $_POST['woocommerce-sort-by-columns'], time()+1209600, '/', site_url(), false); //this will fail if any part of page has been output- hope this works!
	$count = $_POST['woocommerce-sort-by-columns'];
	}
	// else normal page load and no cookie
	return $count;
	}
	public function masonic_woocommerce_template_loop_add_to_cart_wrapper()
	{
	echo '<div class="btn-new-2 text-center">';
	}
	public function masonic_woocommerce_template_loop_add_to_cart_warraper_close()
	{
	echo '</div>';
	}
	public function masonic_woocommerce_template_loop_product_title()
	{
	echo'<h4>'.get_the_title().'</h4>';
	}
}

?>