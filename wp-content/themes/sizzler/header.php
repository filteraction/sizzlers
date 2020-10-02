<?php
  if( class_exists('acf') ) {
      $twitter_url = get_field('twitter_url', 'option');
      $facebook_url = get_field('facebook_url', 'option');
      $printerest_url =  get_field('printerest_url', 'option');
  }
  ?>

<!Doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php wp_title();?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="">
    <link rel="shortcut icon" type="image/x-icon" href="">
    <?php wp_head();?>
</head>
<body>
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="<?php echo get_template_directory_uri();?>/assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div> 
    <!-- Preloader Start-->
    <header>
        <!-- Header Start -->
       <div class="header-area">
            <div class="main-header ">
                <div class="header-top ">
                   <div class="container-fluid">
                       <div class="col-xl-12">
                            <div class="row d-flex justify-content-lg-between align-items-center">
                                <div class="header-info-left">
                                    <!-- <li class="d-none d-lg-block">
                                        <div class="form-box f-right ">
                                            <input type="text" name="Search" placeholder="Search your interest...">
                                            <div class="search-icon">
                                                <i class="ti-search"></i>
                                            </div>
                                        </div>
                                     </li> -->
                                    <div class="header-social">
                                        <a href="<?php echo $twitter_url; ?>"><i class="fab fa-twitter"></i></a>
                                        <a href="<?php echo $facebook_url; ?>"><i class="fab fa-facebook-f"></i></a>
                                        <a href="<?php echo $printerest_url; ?>"><i class="fab fa-pinterest-p"></i></a>
                                    </div>
                                </div>
                                <div class="header-info-mid">
                                    <!-- logo -->
                                    <div class="logo">
                                        <a href="<?php echo home_url(); ?>">
                                            <!-- <img src="<?php echo get_template_directory_uri();?>/assets/img/logo/logo.png" alt=""> -->
                                            <h2>Sizzler</h2>
                                        </a>
                                    </div>
                                </div>
                                <div class="header-info-right d-flex align-items-center">
                                   <ul>                                          
                                       <li><a href="<?php echo site_url('about');?>">About</a></li>
                                       <li><a href="<?php echo site_url('blog');?>">Blog</a></li>
                                       <li><a href="<?php echo site_url('contact');?>">Contact</a></li>
                                       <?php if(is_user_logged_in()) {?>
                                        <li>
                                        <a href="<?php echo site_url('wp-admin/profile.php');?>">
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                           <?php  $current_user = current_user_can('administrator')? "admin":wp_get_current_user()->user_login;
                                           printf( __( 'Hi %s ', 'textdomain' ), esc_html( ucwords($current_user )) );
                                           ?>
                                        </a>
                                        </a></li>
                                       <?php } else{?>
                                       <li><a href="<?php echo site_url('login');?>">Log In / Sign Up</a></li>
                                   <?php } ?>
                                   </ul>
                                   <!-- Social -->
                                </div>
                            </div>
                       </div>
                   </div>
                </div>
               <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-12">
                                <!-- logo 2 -->
                                <div class="logo2">
                                    <a href="<?php echo home_url(); ?>">
                                        <!-- <img src="<?php echo get_template_directory_uri();?>/assets/img/logo/logo.png" alt=""> -->
                                        <h2>Sizzler</h2>
                                    </a>
                                </div>
                                <!-- logo 3 -->
                                <div class="logo3 d-block d-sm-none">
                                    <a href="<?php echo home_url(); ?>">
                                        <!-- <img src="<?php echo get_template_directory_uri();?>/assets/img/logo/logo-mobile.png" alt=""> -->
                                        <h2>Sizzler</h2>
                                    </a>
                                </div>
                                <!-- Main-menu -->
                                <div class="main-menu text-center d-none d-lg-block">
                                    <nav>                                                
                                        <ul id="navigation">
                                            <?php
                                              $taxonomy = 'category';
                                              $parent_terms = get_terms( array( 'taxonomy' => $taxonomy,'parent'  => 0,'hide_empty'   => false, 'exclude'=>1) );
                                             
                                              foreach ($parent_terms as $pterm) {

                                                $pterm_id = $pterm->term_id;
                                                $pterm_link = get_term_link( $pterm );
                                                $pterm_link = esc_url( $pterm_link );//print the link
                                                $pterm_name = $pterm->name;//print the name of the parent term
                                                $sub_terms = get_terms( $taxonomy, array( 'parent' => $pterm_id, 'hide_empty' => false ) );
                                                // echo "<pre>";
                                                // print_r($sub_terms);
                                            if($sub_terms){ 
                                                    
                                            ?>
                                            <li class="dropdown">
                                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $pterm_name;?><span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                <?php 
                                                foreach($sub_terms as $sterm) {
                                                    $sterm_id = $sterm->term_id;
                                                    $sterm_link = get_term_link( $sterm );
                                                    $sterm_link = esc_url( $sterm_link );//print the link
                                                    $sterm_name = $sterm->name;//print the name of the parent term
                                                ?>
                                                <li><a href="<?php echo $sterm_link ?>"><?php echo $sterm_name; ?></a></li>
                                                <?php } ?>
                                                </ul>
                                             </li>
                                            <?php } //end if subterms
                                            else { 
                                                echo
                                                '<li><a href="'.$pterm_link.'">'.$pterm_name.'</a></li>';
                                                } 
                                            } //end for each
                                            ?>
                                        </ul>
                                    </nav>
                                </div>
                            </div> 
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        <!-- Header End -->
    </header>