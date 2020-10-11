<?php
/**
 * Single Product Price
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/price.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $product;

?>

<!-- Todo: get the product type and add more price format -->
<?php if(current_user_can('wholesale_customer')){ ?>
<h4 class="price"><span class="new <?php echo esc_attr( apply_filters( 'woocommerce_product_price_class', 'price' ) ); ?>"><?php echo $product->get_price_html(); ?></span></h4> 
<?php }
else if (empty($product->sale_price)){ #edited ?> 
 <h4 class="price"><span class="new <?php echo esc_attr( apply_filters( 'woocommerce_product_price_class', 'price' ) ); ?>"><?php echo $product->get_price_html(); ?></span></h4> 
<?php } else{ 
	$percentage = round( ( ( $product->regular_price - $product->sale_price ) / $product->sale_price ) * 100 );
	?>

<h4 class="price"><span class="offer">Save <?php echo $percentage ?>%</span> <span class="new"><?php echo get_woocommerce_currency_symbol(). '' .$product->sale_price;?></span><span class="old"> <?php echo get_woocommerce_currency_symbol(). '' .$product->regular_price ?></span></h4>
<?php } ?>