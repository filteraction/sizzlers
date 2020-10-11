<?php 
/*Customize product details page*/
// class Product_Single_Page extends Custom_Commerce
class Product_Single_Page 
{
  public function __construct()
  {
  // parent::__construct();
  //remove_action('woocommerce_before_single_product_summary', 'woocommerce_show_product_sale_flash', 10); #remove sale flash
  add_action( 'woocommerce_product_thumbnails', 'woocommerce_show_product_thumbnails', 20 );
  remove_action('woocommerce_before_single_product_summary','woocommerce_show_product_images',20);
  //remove_action('woocommerce_single_product_summary','woocommerce_template_single_rating',10);
  remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_price', 10);
  remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 20);
  // add_action('woocommerce_single_product_summary', 'woocommerce_show_product_sale_flash', 10);
  add_action('woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 10);
  add_action('woocommerce_single_product_summary', 'woocommerce_template_single_price', 20);
  add_action('woocommerce_before_add_to_cart_form', array($this, 'masonic_print_hr'), 10 );
  add_action('woocommerce_before_add_to_cart_button', array($this, 'masonic_quantity_label'), 10 );
  add_action( 'wp_head', array($this, 'masonic_woocommerce_quntity_field_css' ));
  add_action( 'wp_footer', array($this, 'masonic_woocommerce_quntity_field_script' ));
  add_action('woocommerce_single_product_summary', array($this, 'masonic_woocommerce_template_single_add_to_cart_wrapper_open'), 30);
  add_action('woocommerce_single_product_summary', array($this, 'masonic_woocommerce_template_single_add_to_cart_wrapper_close'), 30);
  add_action('woocommerce_before_add_to_cart_button', array($this, 'masonic_woocommerce_before_add_to_cart_button_wrapper_open'), 30);
  add_action('woocommerce_before_add_to_cart_button', array($this, 'masonic_woocommerce_before_add_to_cart_button_wrapper_close'), 30);
  //remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_meta', 40);
  add_action('woocommerce_after_add_to_cart_form', array($this, 'masonic_print_hr'), 10 );
  remove_action('woocommerce_after_single_product_summary','woocommerce_output_related_products',20);
  add_action('woocommerce_after_single_product',array($this, 'masonic_woocommerce_output_related_products'),20);
  }
  public function masonic_quantity_label()
  {
  // 	echo '<label for="quantity">Qty: </label>';
  }
  public function masonic_woocommerce_output_related_products()
  {
  include_once('related-products.php');
  }
  public function masonic_woocommerce_before_add_to_cart_button_wrapper_open()
  {
  echo '<div class="form-group">';
  }
  public function masonic_woocommerce_before_add_to_cart_button_wrapper_close()
  {
  echo '</div>';
  }
  public function masonic_woocommerce_template_single_add_to_cart_wrapper_open()
  {
  echo '<div class="form-area"> <div class="form-wrap">';
  }
  public function masonic_woocommerce_template_single_add_to_cart_wrapper_close()
  {
  echo '</div></div>';
  }
  public function masonic_print_hr()
  {
  echo '';
  }
  public function masonic_woocommerce_quntity_field_css()
  {
  ?>
  <style>
    .quantity input::-webkit-outer-spin-button,
    .quantity input::-webkit-inner-spin-button {
      display: none;
      margin: 0;
    }
    .quantity input.qty {
      appearance: textfield;
      -webkit-appearance: none;
      -moz-appearance: textfield;
    }
    .single-product div.product form.cart .quantity {
      float: none;
      margin: 0;
      display: inline-block;
    }
  </style>
  <?php
  }
  public function masonic_woocommerce_quntity_field_script()
  {
  if( ! is_cart()  ) { ?>
  <script>
    jQuery(document).ready(function($){
      $(document).on('change', 'input.qty', function(e) {
        // $input = $(this).val();
        $input = $(this).val();
        // console.log($input);
        // return false;
        var val = parseInt($input);
        if (get_min_quantity>0 && val>0){
          if(val< get_min_quantity){
            alert('Minimum quantity required to proceed!');
            $(".single_add_to_cart_button").addClass('disbl');
          }
          else{
            $(".single_add_to_cart_button").removeClass('disbl');
          }
        }
      });

      $(document).on('click', '.plus', function(e) {
        // replace '.quantity' with document (without single quote)
        $input = $(this).prev('input.qty');
        var val = parseInt($input.val());
        var step = $input.attr('step');
        // alert(val+'step: '+step);
        step = 'undefined' !== typeof(step) ? parseInt(step) : 1;
        // $input.val( val + step ).change();
        //if wholesale user and variable product
        if (get_min_quantity>0){
          if(val< get_min_quantity){
            alert('Minimum quantity required to proceed!');
            $(".single_add_to_cart_button").addClass('disbl');
          }
          else{
            $(".single_add_to_cart_button").removeClass('disbl');
          }
        }
      });
      $(document).on('click', '.minus',  // replace '.quantity' with document (without single quote)
                     function(e) {
        $input = $(this).next('input.qty');
        var val = parseInt($input.val());
        var step = $input.attr('step');
        step = 'undefined' !== typeof(step) ? parseInt(step) : 1;
        if (val > 0) {
          // $input.val( val - step ).change();
          //if wholesale user and variable product
          if (get_min_quantity>0){
            if(val< get_min_quantity){
              alert('Minimum quantity required to proceed!');
              $(".single_add_to_cart_button").addClass('disbl');
            }
            else{
              $(".single_add_to_cart_button").removeClass('disbl');
            }
          }
        }

      });
    });
  </script>
  <?php
  }

  else{
  ?>
  <script>
    jQuery(document).ready(function($){
      $(document).on('click', '.plus', function(e) {
        // replace '.quantity' with document (without single quote)
        $input = $(this).prev('input.qty');
        var val = parseInt($input.val());
        var step = $input.attr('step');
        // alert(val+'step: '+step);
        step = 'undefined' !== typeof(step) ? parseInt(step) : 1;
        $input.val( val + step ).change();
        //.change() is very important to enable update cart button on cart page
      }
                    );
      $(document).on('click', '.minus',  // replace '.quantity' with document (without single quote)
                     function(e) {
        $input = $(this).next('input.qty');
        var val = parseInt($input.val());
        var step = $input.attr('step');
        step = 'undefined' !== typeof(step) ? parseInt(step) : 1;
        if (val > 0) {
          $input.val( val - step ).change();
          //.change() is very important to enable update cart button on cart page
        }
      });
    });
  </script>
  <?php
  }
  }

}

?>