<?php
/**
 * My Account Dashboard
 *
 * Shows the first intro screen on the account dashboard.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/dashboard.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see         https://docs.woocommerce.com/document/template-structure/
 * @package     WooCommerce/Templates
 * @version     2.6.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}
?>

<p>
	<?php
	printf(
		/* translators: 1: user display name 2: logout url */
		__( 'Hello %1$s (not %1$s? <a href="%2$s">Log out</a>)', 'woocommerce' ),
		'<strong style="text-transform: capitalize;">' . esc_html( $current_user->display_name ) . '</strong>',
		esc_url( wc_logout_url() )
	);
	?>
</p>

<div class="dashboard-block">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="dash_item dash_item_blue">
                                <a href="#">
                                    <span><img src="<?php echo site_url(); ?>/wp-content/uploads/2020/08/ic_dash_1.png"> </span>
                                    <h3>5</h3>
                                    <h6>Orders</h6>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="dash_item dash_item_red">
                                <a href="#">
                                    <span><img src="<?php echo site_url(); ?>/wp-content/uploads/2020/08/ic_dash_2.png"> </span>
                                    <h3>0</h3>
                                    <h6>Account</h6>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="dash_item dash_item_green">
                                <a href="#">
                                    <span><img src="<?php echo site_url(); ?>/wp-content/uploads/2020/08/ic_dash_3.png"> </span>
                                    <h3>2</h3>
                                    <h6>Notification</h6>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="dash_item dash_item_yellow">
                                <a href="#">
                                    <span><img src="<?php echo site_url(); ?>/wp-content/uploads/2020/08/ic_dash_4.png"> </span>
                                    <h3>0</h3>
                                    <h6>Settings</h6>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

<p>
	<?php
	printf(
		__( 'From your account dashboard you can view your <a href="%1$s">recent orders</a>, manage your <a href="%2$s">shipping and billing addresses</a>, and <a href="%3$s">edit your password and account details</a>.', 'woocommerce' ),
		esc_url( wc_get_endpoint_url( 'orders' ) ),
		esc_url( wc_get_endpoint_url( 'edit-address' ) ),
		esc_url( wc_get_endpoint_url( 'edit-account' ) )
	);
	?>
</p>

<?php
	/**
	 * My Account dashboard.
	 *
	 * @since 2.6.0
	 */
	do_action( 'woocommerce_account_dashboard' );

	/**
	 * Deprecated woocommerce_before_my_account action.
	 *
	 * @deprecated 2.6.0
	 */
	do_action( 'woocommerce_before_my_account' );

	/**
	 * Deprecated woocommerce_after_my_account action.
	 *
	 * @deprecated 2.6.0
	 */
	do_action( 'woocommerce_after_my_account' );

/* Omit closing PHP tag at the end of PHP files to avoid "headers already sent" issues. */
