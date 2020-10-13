<?php
/**
 * Single Product tabs
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/tabs/tabs.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.8.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * Filter tabs and allow third parties to add their own.
 *
 * Each tab is an array containing title, callback and priority.
 *
 * @see woocommerce_default_product_tabs()
 */
$product_tabs = apply_filters( 'woocommerce_product_tabs', array() );

if ( ! empty( $product_tabs ) ) : ?>
<div class="row">
	<div class="col col-xs-12">
		<div class="product-info">
			<nav>
			<!-- <div class="woocommerce-tabs wc-tabs-wrapper"> -->
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<!-- <ul class="tabs wc-tabs" role="tablist"> -->
					<?php $k=1; foreach ( $product_tabs as $key => $product_tab ) : $class = ($k==1)? 'active' : '';?>
						<!-- <li class="<?php echo esc_attr( $key ); ?>_tab" id="tab-title-<?php echo esc_attr( $key ); ?>" role="tab" aria-controls="tab-<?php echo esc_attr( $key ); ?>"> -->
							<a href="#tab-<?php echo esc_attr( $key ); ?>" id="nav-<?php echo esc_attr( $key ); ?>-tab" class="nav-item nav-link <?php echo $class;?>" data-toggle="tab" role="tab" aria-controls="nav-<?php echo esc_attr( $key ); ?>" aria-selected="true">
								<?php echo wp_kses_post( apply_filters( 'woocommerce_product_' . $key . '_tab_title', $product_tab['title'], $key ) ); ?>
							</a>
						<!-- </li> -->
					<?php $k++; endforeach; ?>
				<!-- </ul> -->
			</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
					
				<?php $i=1; foreach ( $product_tabs as $key => $product_tab ) : $class = ($i==1)? 'active' : '';?>
					<!-- <div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--<?php echo esc_attr( $key ); ?> panel entry-content wc-tab" id="tab-<?php echo esc_attr( $key ); ?>" role="tabpanel" aria-labelledby="tab-title-<?php echo esc_attr( $key ); ?>"> -->
					<div class="tab-pane fade show  <?php echo $class;?>" id="tab-<?php echo esc_attr( $key ); ?>" role="tabpanel" aria-labelledby="nav-home-tab">
						<?php
						if ( isset( $product_tab['callback'] ) ) {
							call_user_func( $product_tab['callback'], $key, $product_tab );
						}
						?>
					</div>
					<!-- </div> -->
				<?php $i++; endforeach; ?>
			</div>

				<?php do_action( 'woocommerce_product_after_tabs' ); ?>
			<!-- </div> -->
			
		</div>
	</div>
</div>

<?php endif; ?>
