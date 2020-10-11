<?php
/**
 * The template for displaying product content in the single-product.php template
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-single-product.php.
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
// echo "<pre>";
// print_r($product);

$min_quantity = get_post_meta($product->id, 'wholesale_customer_wholesale_minimum_order_quantity', true);
if($min_quantity){
	// echo $min_quantity ;
	?>
<script type="text/javascript">
	var get_min_quantity = '<?php echo  $min_quantity;?>';
</script>
	<?php

}

if($product->is_type( 'variable' )){
$variations = $product->get_available_variations();
// echo "<pre>";
// print_r($variations);
$arr = [];
$sku_arr = [];
foreach ( $variations as $variable_array ){
	//print_r($variable_array);
	$arr[$variable_array['attributes']['attribute_select-quality']] = $variable_array['input_value'];
	$sku_arr[$variable_array['attributes']['attribute_select-quality']] = $variable_array['sku'];
}


?>
<script type="text/javascript">
	var variation_arr = <?php echo json_encode($arr, JSON_PRETTY_PRINT) ?>;
	var sku_arr = <?php echo json_encode($sku_arr, JSON_PRETTY_PRINT) ?>;
	console.log(variation_arr);
	console.log(sku_arr);
</script>
<style>
.price-box h6 span {
     font-size: 18px !important;
    font-weight: 800 !important;
    color: #fff !important;
}
</style>

<?php
}
/**
 * Hook: woocommerce_before_single_product.
 *
 * @hooked woocommerce_output_all_notices - 10
 */
do_action( 'woocommerce_before_single_product' );

if ( post_password_required() ) {
	echo get_the_password_form(); // WPCS: XSS ok.
	return;
}

$attachment_ids = $product->get_gallery_image_ids();


?>
<section id="details-sec" class="section">
    <div class="container">
    <div class="row">
	<div class="col-md-5">
        <div class="product-details-area">
             <?php
                 if(get_current_user_role() != 'wholesale_customer'){ ?>
            <div class="price-box price-box-details">
                <?php
                     if (empty($product->sale_price)){ ?> 
                     <h6><?php echo $product->get_price_html(); ?></h6>
                    <?php } else{ ?>
        
                     <h6><?php echo get_woocommerce_currency_symbol(). '' .$product->sale_price;?><del> <?php echo get_woocommerce_currency_symbol(). '' .$product->regular_price ?></del></h6>
                    <?php } 
                
                ?>
            </div>
            <?php } ?>
        	<div class="exzoom" id="exzoom">
				    <div class="exzoom_img_box">
					    <ul class='exzoom_img_ul'>
					    <?php 
					    if ($attachment_ids){
					    	foreach( $attachment_ids as $attachment_id ) {
					    
					    $image_link = wp_get_attachment_url( $attachment_id );
					    echo '<li><img src="'.$image_link.'" /></li>';
							}
						}else{
							echo '<li><img src="'.wp_get_attachment_url( $product->get_image_id() ).'" /></li>'; 
						}
							?>
					    </ul>
				    </div>
				    <div class="exzoom_nav"></div>
			    </div>
				<?php
				/**
				 * Hook: woocommerce_before_single_product_summary.
				 *
				 * @hooked woocommerce_show_product_sale_flash - 10
				 * @hooked woocommerce_show_product_images - 20
				 */
				do_action( 'woocommerce_before_single_product_summary' );

				?>
			</div>
		</div>
    
     <div class="col-md-7">
				<?php
				/**
				 * Hook: woocommerce_single_product_summary.
				 *
				 * @hooked woocommerce_template_single_title - 5
				 * @hooked woocommerce_template_single_rating - 10
				 * @hooked woocommerce_template_single_price - 10
				 * @hooked woocommerce_template_single_excerpt - 20
				 * @hooked woocommerce_template_single_add_to_cart - 30
				 * @hooked woocommerce_template_single_meta - 40
				 * @hooked woocommerce_template_single_sharing - 50
				 * @hooked WC_Structured_Data::generate_product_data() - 60
				 */
				do_action( 'woocommerce_single_product_summary' );



				?>
    		</div>
    	</div>
    </div>
</section>

<div class="pdt-dscrp">
    <div class="container">
		<?php
		/**
		 * Hook: woocommerce_after_single_product_summary.
		 *
		 * @hooked woocommerce_output_product_data_tabs - 10
		 * @hooked woocommerce_upsell_display - 15
		 * @hooked woocommerce_output_related_products - 20
		 */
		do_action( 'woocommerce_after_single_product_summary' );
		?>
	</div>
</div>

	<?php do_action( 'woocommerce_after_single_product' ); ?>

<style type="text/css">

span.woocommerce-Price-currencySymbol {
    float: none;
}
.product_meta {
    margin-top: 10px;
}
button.submit-btn.single_add_to_cart_button.button.alt.disbl {
    text-decoration: none !important;
    cursor: not-allowed !important;
    opacity: 0.5 !important;
    pointer-events: none !important;
}
</style>