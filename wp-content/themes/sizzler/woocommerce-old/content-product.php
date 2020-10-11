<?php
/**
 * The template for displaying product content within loops
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.6.0
 */

defined( 'ABSPATH' ) || exit;

global $product;

// Ensure visibility.
if ( empty( $product ) || ! $product->is_visible() ) {
	return;
}
?>
<style type="text/css">
.price-box h6 span{display:flex;}    
.woocommerce .star-rating {
    width: 100% !important;
}
</style>
<!-- <li <?php wc_product_class( '', $product ); ?>> -->
	 <div class="col-md-6 col-lg-4">
	<div class="add-area cstm-product">
	    <?php
	    if(get_current_user_role() != 'wholesale_customer'){ ?>
	       <div class="price-box">
                 <?php if (empty($product->sale_price)){ #edited ?> 
                 <h6><?php echo $product->get_price_html(); ?></h6>
                <?php } else{ ?>
    
                 <h6><?php echo get_woocommerce_currency_symbol(). '' .$product->sale_price;?><del> <?php echo get_woocommerce_currency_symbol(). '' .$product->regular_price ?></del></h6>
                <?php } ?>
            </div>
        <?php }
            
	/**
	 * Hook: woocommerce_before_shop_loop_item.
	 *
	 * @hooked woocommerce_template_loop_product_link_open - 10
	 */
	do_action( 'woocommerce_before_shop_loop_item' );

	/**
	 * Hook: woocommerce_before_shop_loop_item_title.
	 *
	 * @hooked woocommerce_show_product_loop_sale_flash - 10
	 * @hooked woocommerce_template_loop_product_thumbnail - 10
	 */
	do_action( 'woocommerce_before_shop_loop_item_title' );

	/**
	 * Hook: woocommerce_shop_loop_item_title.
	 *
	 * @hooked woocommerce_template_loop_product_title - 10
	 */
	do_action( 'woocommerce_shop_loop_item_title' );

	/**
	 * Hook: woocommerce_after_shop_loop_item_title.
	 *
	 * @hooked woocommerce_template_loop_rating - 5
	 * @hooked woocommerce_template_loop_price - 10
	 */
	do_action( 'woocommerce_after_shop_loop_item_title' );

	?>


<!--<div class="icons">-->
<!--	    <ul>-->
<!--	         <li>-->
<!--			<a href="<?php echo $product->add_to_cart_url() ?>" value="<?php echo esc_attr( $product->get_id() ); ?>" class="ajax_add_to_cart add_to_cart_button" data-product_id="<?php echo get_the_ID(); ?>" data-product_sku="<?php echo esc_attr($sku) ?>" aria-label="Add <?php the_title_attribute() ?>” to your cart"> -->
<!--		       <i class="fa fa-shopping-cart ajax_add_to_cart" aria-hidden="true"></i>-->
<!--		   </a>					-->
<!--			</li>-->
<!--	        <li>  <?php echo do_shortcode('[ti_wishlists_addtowishlist]'); ?>-->
<!--	        </li>-->
<!--	    </ul>-->
<!--	</div>-->

	<?php

	/**
	 * Hook: woocommerce_after_shop_loop_item.
	 *
	 * @hooked woocommerce_template_loop_product_link_close - 5
	 * @hooked woocommerce_template_loop_add_to_cart - 10
	 */
	do_action( 'woocommerce_after_shop_loop_item' );


	?>
<!-- </li> -->
	</div>
</div>