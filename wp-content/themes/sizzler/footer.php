<?php
  if( class_exists('acf') ) {
      $footer_phone = get_field('phone_number22', 'option');
      $footer_email = get_field('email_address22', 'option');
      $footer_fax =   get_field('fax', 'option');
      $footer_head1 = get_field('footer_section_1_headeing', 'option');
      $footer_head2 = get_field('footer_section_2_headeing', 'option');
      $footer_head3 = get_field('footer_section_3_headeing', 'option');
      $footer_head4 = get_field('footer_section_4_headeing', 'option');
      $footer_copyright = get_field('copyright_text', 'option');
      
      $newsletter_head1 = get_field('heading1', 'option');
      $newsletter_head2 = get_field('sub_heading', 'option');



      $twitter_url = get_field('twitter_url', 'option');
      $facebook_url = get_field('facebook_url', 'option');
      $printerest_url =  get_field('printerest_url', 'option');
  
  }
?>
<?php if(!is_page('login') && !is_page('register') && !is_page('forgot-password')): ?>
 <!-- Want To work -->
        <section class="wantToWork-area gray-bg ">
            <div class="container">
                <div class="wants-wrapper w-padding2">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-xl-6 col-lg-7 col-md-10">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <h2>Subscribe for latest updates</h2>
                                <p>Indie folks start out by making something they want to read, that tell stories they want told..</p>
                            </div>
                        </div>
                        <div class="col-xl-5 col-lg-5 col-md-12">
                          <div class="newsletter-form">
                          <form action="<?php echo site_url();?>/?na=s" method="post" class="search-box">
                            <div class="tnp-field tnp-field-email form-group input-form">
                              <input type="email" class="tnp-email" name="ne" value="" required placeholder="Enter your email">
                            </div>
                            <div class="tnp-field tnp-field-submit form-group search-form">
                              <button type="submit" class="tnp-submit theme-btn btn-submit" ><span class="fa fa-envelope-o"></span> Subscribe</button> 
                            </div>
                          </form>
                          </div>

                            <!-- <form action="#" class="search-box">
                                <div class="input-form">
                                    <input type="text" placeholder="Enter your email">
                                </div>
                                <div class="search-form">
                                    <a href="#">Subscribe</a>
                                </div>  
                            </form> -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Want To work End -->
    </main>
<?php endif; ?>
<!-- Footer Start-->
<footer>
<!-- Footer -->
<div class="page-footer font-small unique-color-dark header-area">

  <div class="header-bottom header-bottom2 ">
    <div class="container">

      <!-- Grid row-->
      <div class="row py-4 d-flex align-items-center">

        <!-- Grid column -->
        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
          <h6 class="mb-0">Get connected with us on social networks!</h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-6 col-lg-7 text-center text-md-right gdb header-social">
        <a href="<?php echo $twitter_url; ?>" class="fw-ic"><i class="fab fa-twitter"></i></a>
        <a href="<?php echo $facebook_url; ?>" class="fb-ic"><i class="fab fa-facebook-f"></i></a>
        <a href="<?php echo $printerest_url; ?>" class="ptr-ic"><i class="fab fa-pinterest-p"></i></a>
 

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->

    </div>
  </div>

  <!-- Footer Links -->
  <div class="container text-center text-md-left mt-5">

    <!-- Grid row -->
    <div class="row mt-3 gdb-foo">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <!-- <h6 class="text-uppercase font-weight-bold">Company name</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;"> -->
        <div class="logo">
        <?php the_custom_logo();?>
        </div>
        <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
          consectetur
          adipisicing elit.</p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Categories</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <?php
            $taxonomy = 'category';
            $parent_terms = get_terms( array( 'taxonomy' => $taxonomy,'parent'  => 0,'hide_empty'   => false, 'exclude'=>1) );
            
            foreach ($parent_terms as $pterm) {
              $pterm_id = $pterm->term_id;
              $pterm_link = get_term_link( $pterm );
              $pterm_link = esc_url( $pterm_link );//print the link
              $pterm_name = $pterm->name;//print the name of the parent term
           
              echo '<p><i class="fa fa-angle-right"></i> <a href="'.$pterm_link.'">'.$pterm_name.'</a></p>';
            }                                                                                                                                
          ?>
        

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="<?php echo home_url();?>"><i class="fa fa-angle-right"></i> Home</a>
        </p>
        <p>
          <a href="<?php echo site_url('about');?>"><i class="fa fa-angle-right"></i> About</a>
        </p>
        <p>
          <a href="<?php echo site_url('shop');?>"><i class="fa fa-angle-right"></i> Shop</a>
        </p>
        <p>
          <a href="<?php echo site_url('contact');?>"><i class="fa fa-angle-right"></i> Contact</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Contact</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
        <p>
          <i class="fas fa-envelope mr-3"></i> info@example.com</p>
        <p>
          <i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
        <p>
          <i class="fas fa-print mr-3"></i> + 01 234 567 89</p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->

   <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-xl-9 col-lg-8">
                        <div class="footer-copyright text-center py-3"><?php echo $footer_copyright;?>
                        </div>
                            <!-- <div class="footer-copy-right footer-copyright text-center py-3">
                                <p><?php echo $footer_copyright;?></p>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
  <!-- Copyright -->
  </div>
  
</footer>
<!-- Footer End-->

    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!-- JS here -->
    
    <?php wp_footer();?>
    </body>
</html>