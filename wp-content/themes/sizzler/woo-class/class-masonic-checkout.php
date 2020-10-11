<?php 
/* Customize checkout page*/
// class Masonic_Checkout extends Custom_Commerce {
class Masonic_Checkout {
	public function __construnct()
	{
	// parent::__construct();
	remove_action( 'woocommerce_checkout_order_review', 'woocommerce_order_review', 10 );
	//add_filter( 'woocommerce_product_tabs', array($this,'sb_woo_remove_reviews_tab'), 98);
	add_filter('bootstrap_woocommerce_form_field', array($this, 'wc_form_field_args',10,3));
	add_action('wp_footer', array($this, 'wpb_hook_javascript_footer'));
	}
	public function wpb_hook_javascript_footer(){
		if (is_page ('checkout')) { 

    ?>
        <script type="text/javascript">
       
          $(".pass-2").addClass('disbl'); 
          $('.woocommerce-billing-fields .input-text').keyup(function() {

             let Disabled = true;
             // alert(1);
              $(".woocommerce-billing-fields .validate-required .input-text ").each(function() {
                let value = this.value
                if ((value)&&(value.trim() !=''))
                    {
                      Disabled = false
                    }else{
                      Disabled = true
                      return false
                    }
              });

              if (Disabled) {
                  $(".pass-2").addClass('disbl'); 
                  $(".shipping").removeAttr('id');
                  $(".payment").removeAttr('id');

                  console.log('button disabled');
             
              } else {
                 $(".pass-2").removeClass('disbl');
                 $(".shipping").attr('id', 'contArea2');
                 $(".payment").attr('id', 'contArea3'); 

              }

        })
         
    

        $('.pass-1').on('click', function(){
          $('#customerCotainer').slideToggle("slow");
        })

        $(".pass-2").on('click', function(){
          $(".inner-form").slideToggle("slow");
          $(".inner-form-2").slideToggle("slow");
         })


        $(".line-1").click(function(){
            $('#customerCotainer').slideToggle("slow");
          });

        $("#contArea1").click(function(){
            $(".inner-form").slideToggle("slow");
          });
        $(".shipping").click(function(){
            $(".inner-form-2").slideToggle("slow");
          });
        $(".payment").click(function(){
            $(".payment-form").slideToggle("slow");
          });

      </script>
    <?php
  }

	}
	public function wc_form_field_args($args, $key, $value){
	$args['input_class'][] = 'form-control'; 
	return $args; 
	}
	public function sb_woo_remove_reviews_tab($tabs) { 
	unset($tabs[‘reviews’]);
	return $tabs;
	}
}

?>