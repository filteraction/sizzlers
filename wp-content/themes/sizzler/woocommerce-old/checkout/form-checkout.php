<?php
/**
 * Checkout Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-checkout.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.5.0
 */

if ( ! defined( 'ABSPATH' ) ) {
exit;
}

?>

<!-- <section id="checkout-sec">
    <div class="container">
        <div class="checkout-main">
        <div class="row"> -->

<?php

do_action( 'woocommerce_before_checkout_form', $checkout );

?>

<div class="row">
<div class="col-lg-7">
  <div class="left-area">


<form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url( wc_get_checkout_url() ); ?>" enctype="multipart/form-data">

<?php if ( $checkout->get_checkout_fields() ) : ?>
<!-- Customer hook -------------------------------------------------------------------------------------------------------->
<div class="contArea">
    <?php if(is_user_logged_in()){ 
        $current_user = wp_get_current_user();
        printf( __( '<h3 class="line-1"><span id="gdb">1</span>Hi %s !</h3>', 'textdomain' ), esc_html( ucwords($current_user->user_login )) );
    }
else{?>
 <h3 class="line-1"><span id="gdb">1</span>Customer </h3>
<?php } ?>

 <div class="hide-class" id="customerCotainer">
<?php do_action( 'woocommerce_checkout_before_customer_details' ); ?>

<?php
// If checkout registration is disabled and not logged in, the user cannot checkout.
if ( ! $checkout->is_registration_enabled() && $checkout->is_registration_required() && ! is_user_logged_in() ) {
echo esc_html( apply_filters( 'woocommerce_checkout_must_be_logged_in_message', __( 'You must be logged in to checkout.', 'woocommerce' ) ) );
return;
}
?>
             <?php if(!is_user_logged_in()){ ?>
<div class="newsleterSection">
                 
                    <p>Checking out as a Guest? You'll be able to save your details to create an account with us later</p>
                    <div class="form-group">
                        <div class="area-1">
                            <input type="email" placeholder="Email Id..." class="form-control">
                            <div class="button-area">
                                <a class="btn pass-1">CONTINUE AS GUEST</a>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" id="Checkbox-1" name="example2">
                        <label for="Checkbox-1">Subscribe to our newsletter.</label>
                    </div>
                   
                    <p>Already have an account?
                        <a class="loginButton" value="Click" onclick="fnGotoLogin();">Sign in</a>
                        now or <a href="<?php echo site_url('register');?>/?page=checkout">create account</a>
                    </p>
                 

                </div>
                <?php }else{ ?>
                  <script type="text/javascript">

                    jQuery(document).ready(function($) {

                      $("#gdb").html('✔');
                      $("#gdb").css('background-color', 'green');
                      $("#checkout-sec .checkout-main .inner-form").addClass("active");

                    });
                  </script>
               

                <?php }?>
                <!-- Login section -->
                <div class="loginSection login-frm3" id="loginSection">
                    <!-- <form id="login" action="login" method="post"> -->
                        <div class="row">
                            <div class="col-lg-6 lg-offset-3">
                              <p class="status"></p>
                                <div class="form-group">
                                    <label for="name-1">Username</label>
                                    <input type="text" class="form-control" required id="username"  name="username">
                                </div>
                                <div class="form-group">
                                    <label for="name-1">Password</label>
                                    <input type="password" class="form-control" id="password" name="password" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="forgetPasswordLink">
                                <a href="<?php echo site_url();?>/my-account/lost-password/" target="_blank"><p>Forgot Password</p></a>
                            </div>
                        </div>
                          <?php wp_nonce_field( 'ajax-login-nonce', 'security' ); ?>
                        <div class="button-area">
                          <button class="btn" type="submit" id="login" name="submit">Sign In</button>
                            <!-- <a class="btn" type="submit">Sign In</a> -->
                            <button class="borderbtn backToNewsLetter" id="Button1" type="button" value="Click" onclick="backToNewsLetter();">Back</button>
                        </div>
                    <!-- </form> -->
                </div>
                <!-- Forgot Password section -->
                <div class="forgetPasswordContent">
                    <!-- <form action="#"> -->
                        <div class="row">
                            <div class="col-lg-6 lg-offset-3">
                                <div class="form-group">
                                    <label for="name-1">Email Id</label>
                                    <input type="email" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="button-area">
                            <a class="btn" type="submit">Continue</a>
                            <button class="borderbtn backToLogin" id="Button1" type="button" value="Click" onclick="backToLogin();">Back</button>
                        </div>
                    <!-- </form> -->
                </div>





</div>
  </div>

<!-- Billing hook --------------------------------------------------------------------------------------->
<div class="contArea" >
      <h3 class="billing" id="contArea1"><span>2</span> Billing</h3>
          <div class="inner-form">
<?php do_action( 'woocommerce_checkout_billing' ); ?>
      <!--   <?php if(!is_user_logged_in()){?>
<div class="col-md-12">
                <input type="checkbox" id="defaultCheck" name="example2" class="checkbox-1" >
                <label for="defaultCheck">My billing address is the same as my shipping address.</label>
            </div>
          <?php } ?> -->
<div class="button-area">
              <a class="btn pass-2">Continue</a>
          </div>
</div>
  </div>


<!-- Shipping hook --------------------------------------------------------------------------------------->
<div class="contArea" >
    <h3 class="shipping"><span>3</span>Shipping </h3>
        <div class="inner-form-2">
            <div class="inner-forms">
                <h5 id="ship-to-same-address">
            <label class="woocommerce-form__label woocommerce-form__label-for-checkbox checkbox">
                <input id="ship-to-same-address-checkbox" class="woocommerce-form__input woocommerce-form__input-checkbox input-checkbox" type="checkbox" name="ship_to_same_address" /> <?php esc_html_e( 'Same as billing address?', 'woocommerce' ); ?>
            </label>
        </h5>
<?php do_action( 'woocommerce_checkout_shipping' ); ?>

<div class="button-area">
                  <a class="btn pass-3">Continue</a>
              </div>

</div>
</div>
</div>

<?php do_action( 'woocommerce_checkout_after_customer_details' ); ?>

<?php endif; ?>



<div class="contArea" >
    <h3 class="payment" ><span>4</span>Payment </h3>
      <div class="payment-form">

    <?php do_action( 'woocommerce_checkout_before_order_review_heading' ); ?>
    
    <!-- <h3 id="order_review_heading"><?php esc_html_e( 'Your order', 'woocommerce' ); ?></h3> -->
    
    <?php do_action( 'woocommerce_checkout_before_order_review' ); ?>
    
    <div id="order_review" class="woocommerce-checkout-review-order table-hide">
    <?php do_action( 'woocommerce_checkout_order_review' ); ?>
    </div>
    
    <?php do_action( 'woocommerce_checkout_after_order_review' ); ?>
    
    <?php do_action( 'woocommerce_after_checkout_form', $checkout ); ?>
</div>
</div>
</div>
</div>

 <div class="col-lg-5">
        <div class="right-area">
            	
        	<?php do_action( 'woocommerce_checkout_before_order_review' ); ?>
        
        	<div id="order_review" class="woocommerce-checkout-review-order pymt-hide">
        		<?php do_action( 'woocommerce_checkout_order_review' ); ?>
        	</div>
        
        	<?php do_action( 'woocommerce_checkout_after_order_review' ); ?>
        </div>


    </div>
</form>
</div>
<script type="text/javascript">
   jQuery(document).ready(function($) {
       // Perform AJAX login on form submit
    $('#login').on('click', function(e){
    $('#loginSection p.status').show().text(ajax_login_object.loadingmessage);
    $.ajax({
    type: 'POST',
    dataType: 'json',
    url: ajax_login_object.ajaxurl,
    data: {
    'action': 'ajaxlogin', //calls wp_ajax_nopriv_ajaxlogin
    'username': $('#loginSection #username').val(),
    'password': $('#loginSection #password').val(),
    'security': $('#loginSection #security').val() },
    success: function(data){
    $('#loginSection p.status').text(data.message);
    if (data.loggedin == true){
    document.location.href = '<?php echo site_url('checkout');?>';
    }
    }
    });
    e.preventDefault();
    });
  });

  jQuery(document).ready(function($) {

     $(".woocommerce-shipping-fields").hide();

       $('#ship-to-different-address-checkbox').change(function() {
        if($(this).is(":checked")) {
          $(".woocommerce-shipping-fields").show();  // checked
        }else{
          $(".woocommerce-shipping-fields").hide();  // checked

        }  
    });




 });
</script>