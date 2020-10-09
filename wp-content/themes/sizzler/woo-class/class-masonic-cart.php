<?php 
/*Minicart class */

class Masonic_Cart extends Custom_Commerce
{
public function __construnct()
{
parent::__construct();
add_action( 'masonic_wc_cart_totals_order_total_html_gdb_hook', array($this,'masonic_wc_cart_totals_order_total_html'), 20 );
add_action( 'wp_footer', array($this, 'masonic_shipping_toggle' )); 
add_shortcode( '[custom-techno-mini-cart]', array($this, 'masonic_custom_mini_cart' ));
add_filter( 'woocommerce_add_to_cart_fragments', array($this, 'wc_refresh_mini_cart_count')); //Show cart contents / total Ajax
}

public function wc_refresh_mini_cart_count($fragments){
ob_start();
?>
<div id="mini-cart-count">
  <?php echo WC()->cart->get_cart_contents_count(); ?>
</div>
<?php
$fragments['#mini-cart-count'] = ob_get_clean();
return $fragments;
}
// Automatically Update Cart on Quantity Change - WooCommerce
public function masonic_shipping_toggle()
{
if (is_cart()) { 
?> 
<script type="text/javascript"> 
  jQuery(document).ready(function(){
    jQuery(document).on('click', '.ship-frm-btn', function(e) {
      alert(1);
      // jQuery(".shp-frm").toggle();
    });
  });
</script> 
<?php 
} 
}
public function masonic_wc_cart_totals_order_total_html() {
$fk = 'test';
echo $fk;
}
public function masonic_custom_mini_cart() { 
echo '<a href="#" class="dropdown-back" data-toggle="dropdown"> ';
echo '<i class="fa fa-shopping-cart" aria-hidden="true"></i>';
echo '<div class="basket-item-count" style="display: inline;">';
echo '<span class="cart-items-count count">';
echo WC()->cart->get_cart_contents_count();
echo '</span>';
echo '</div>';
echo '</a>';
echo '<ul class="dropdown-menu dropdown-menu-mini-cart">';
echo '<li> <div class="widget_shopping_cart_content">';
woocommerce_mini_cart();
echo '</div></li></ul>';
}
}

?>