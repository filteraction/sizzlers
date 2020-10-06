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
<footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding">
            <div class="header-area">
                <div class="main-header ">
                    <div class="header-top d-none d-lg-block">
                       <div class="container">
                           <div class="col-xl-12">
                                <div class="row d-flex justify-content-between align-items-center">
                                    <div class="header-info-left d-flex">
                                        <!-- Social -->
                                        <div class="header-social">
                                        <a href="<?php echo $twitter_url; ?>"><i class="fab fa-twitter"></i></a>
                                        <a href="<?php echo $facebook_url; ?>"><i class="fab fa-facebook-f"></i></a>
                                        <a href="<?php echo $printerest_url; ?>"><i class="fab fa-pinterest-p"></i></a>
                                        </div>
                                    </div>
                                    <div class="header-info-mid">
                                        <!-- logo -->
                                        <div class="logo">
                                          <?php the_custom_logo();?>
                                           <!--  <a href="<?php echo home_url(); ?>">
                                                <img src="assets/img/logo/logo.png" alt="">
                                                <h2>Sizzler</h2>
                                            </a> -->
                                        </div>
                                    </div>
                                    <div class="header-info-right d-flex align-items-center">
                                       <ul>                                          
                                           <li><a href="<?php echo site_url('about');?>">About</a></li>
                                           <li><a href="<?php echo site_url('blog');?>">Blog</a></li>
                                           <li><a href="<?php echo site_url('contact');?>">Contact</a></li>
                                       </ul>
                                    </div>
                                </div>
                           </div>
                       </div>
                    </div>
                   <div class="header-bottom header-bottom2 ">
                        <div class="container-fluid">
                            <div class="row align-items-center">
                                <div class="col-12">
                                    <!-- Main-menu -->
                                    <div class="main-menu text-center">
                                        <nav>                                                
                                            <ul>     
                                            <?php
                                              $taxonomy = 'category';
                                              $parent_terms = get_terms( array( 'taxonomy' => $taxonomy,'parent'  => 0,'hide_empty'   => false, 'exclude'=>1) );
                                             
                                              foreach ($parent_terms as $pterm) {
                                                $pterm_id = $pterm->term_id;
                                                $pterm_link = get_term_link( $pterm );
                                                $pterm_link = esc_url( $pterm_link );//print the link
                                                $pterm_name = $pterm->name;//print the name of the parent term
                                                echo '<li><a href="'.$pterm_link.'">'.$pterm_name.'</a></li>';
                                              }                                                                                                                                
                                            ?>
                                            </ul>
                                        </nav>
                                    </div>
                                </div> 
                            </div>
                        </div>
                   </div>
                </div>
           </div>
        </div>
 <!-- footer-bottom area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-xl-9 col-lg-8">
                            <div class="footer-copy-right text-center">
                                <p><?php echo $footer_copyright;?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>

    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!-- JS here -->

    <?php wp_footer();?>
    </body>
</html>