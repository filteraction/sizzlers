<?php 


function get_current_user_role() {
if(is_user_logged_in()) {
$user = wp_get_current_user();
$role = (array) $user->roles;
return $role[0];
if($role != 'wholesale_customer'){
remove_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_price', 10 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 10 );
}
} else {
remove_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_price', 10 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 10 );
return false;
}
}


//add_action( 'woocommerce_single_product_summary', 'dev_designs_show_sku', 5 );
function dev_designs_show_sku(){
global $product;
if ( $product->is_type( 'variable' ) ) {
$available_variations = $product->get_available_variations();
// echo '<pre>';
// print_r($available_variations);
echo '</pre>';
for ($i = 0; $i <  count($available_variations); $i++ ) {    
echo 'SKU: ' . ($available_variations[$i]['sku']) . '<br>';
}
} else {
echo 'SKU: ' . $product->get_sku();
}
}





 ?>