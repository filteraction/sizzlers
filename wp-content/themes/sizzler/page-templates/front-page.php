<?php 
/*Template Name: Front Page */
 get_header();

if( class_exists('acf') ) {
  $promotional_slider = get_field('promotional_banner', 'option');
  $page_desc = get_field('home_page_description', 'option');

  $b_image1 = get_field('banner_image_1', 'option');
  $b_image2 = get_field('banner_image_2', 'option');
  $b_image3 = get_field('banner_image_3', 'option');
  $b_image4 = get_field('banner_image_4', 'option');
}
?>
<main>
 <div class="container-fluid">
	<div class="row">
        <?php
        echo do_shortcode('[smartslider3 slider="4"]');
        ?>
	</div>
</div>


  
        <!-- Banner News Area Start -->
        <!-- <div class="banner-news">
            <div class="container-fluid p-0">
                <div class="banner-slider-active no-gutters ">
                    <?php /**
                     * Custom Slug Name post
                     
                            global $post;
                                $args = array( 
                                    'posts_per_page'  =>   -1 ,
                                    'orderby'         => 'date',
                                    'order'           => 'DESC',
                                    'post_type'       => 'post',
                                    'post_status'     => 'publish'
                                );
                                $the_query = new WP_Query( $args );
                                while ( $the_query->have_posts() ) :
                                    $the_query->the_post();
                                        $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                                        $video_url  = get_field('video_url');
                                        */
                                    ?>
                    
                                    
                    <div class="single-sliders">
                        <div class="single-baner-nw mb-30 text-center">
                            <div class="banner-img-cap">
                                <div class="banner-img">
                                    <img src="<?php //echo $url;?>" alt="">
                                    <?php //if(!empty($video_url)) {?>
                                
                                    <div class="video-icon">
                                        <a class="popup-video btn-icon" href="<?php// echo $video_url; ?>" data-animation="bounceIn" data-delay=".4s"><i class="fas fa-play"></i></a>
                                    </div>
                                <?php //} ?>
                                </div>
                                <div class="banner-cap">
                                    <p>Trending</p>
                                    <h3><a href="<?php// the_permalink(); ?>"><?php// the_title(); ?></a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php //endwhile; wp_reset_postdata();wp_reset_query();?>

                </div>
            </div>
        </div> -->
        <!-- Banner News Area End -->

        <!-- Video Area Start -->

       
        <div class="video-area">
            <div class="container pt-20 pb-20">
                <div class="row video-wrapper">
                    <div class="col-md-8">
                        <iframe autoplay width="100%" height="480" src="https://www.youtube.com/embed/D7WNjCBLaU4?autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="col-md-4">
                    <div class="single-baner-nw2">
                            <div class="banner-img-cap2 mb-10">
                                <div class="banner-img">
                                    <img src="http://localhost/wp/sizzlers/wp-content/uploads/2020/09/single_blog_4.png" alt="">
                                </div>
                                
                            </div>
                        </div>
                        <div class="single-baner-nw2 mb-10">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="http://localhost/wp/sizzlers/wp-content/uploads/2020/09/single_blog_4.png" alt="">
                                </div>
                               
                            </div>
                        </div>
                    </div>
                            
                </div>
            </div>
        </div>
         <!-- Video Area End -->
         <!-- 3 box section start -->
         <section class="blog_area section-padding pt-20 pb-20">
            <div class="container">
                <div class="row">
                    <div class="single-job-items mb-30 col-md-4 col-sm-12">
                        <div class="company-img magimg">
                            <a href="https://issuu.com/caribbeanposh/docs/posh-body-issue-web4" target="_blank">
                                <img class="image" src="http://localhost/wp/sizzlers/wp-content/uploads/2020/10/Posh-Body-Issue-WEB3-cover.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="overlay">
                                <div class="text"><a href="#">Sizzle Talk</a></div>
                            </div>
                        </div>
                       
                    </div>
                                                
                                    
                    <div class="single-job-items mb-30 col-md-4 col-sm-12">
                        <div class="company-img magimg">
                            <a href="https://issuu.com/caribbeanposh/docs/posh_body_issue_2015-final-print" target="_blank">
                                <img class="image" src="http://localhost/wp/sizzlers/wp-content/uploads/2020/10/Posh-Body-Issue-2015-Final.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="overlay">
                                <div class="text"><a href="#">Sizzle Girl</a></div>
                            </div>
                        </div>
                        
                    </div>
                                                
                                    
                    <div class="single-job-items mb-30 col-md-4 col-sm-12">
                        <div class="company-img magimg">
                            <a href="https://issuu.com/caribbeanposh/docs/posh_2016_summer_issue" target="_blank">
                                <img class="image" src="http://localhost/wp/sizzlers/wp-content/uploads/2020/10/Posh-2016-Summer-Issue-Final.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="overlay">
                                <div class="text"><a href="#">Hair</a></div>
                            </div>
                        </div>
                        
                    </div>
                                                      
                </div>
            </div>
        </section>

<style>
.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  /* background-color: #008CBA; */
  overflow: hidden;
  width: 0;
  height: 100%;
  transition: .9s ease;
}
.magimg:hover .image {
  opacity: 0.3;
}
.magimg:hover .overlay {
  width: 100%;
  opacity: 1;
}
.overlay{
background: linear-gradient(#655b5b0d, #11111336), url(https://fashionsizzle.com/wp-content/uploads/2017/12/blake-lively-style-brandon-maxwell-yellow-top-trousers-664x1024-1.jpg) !important;
    background-size: cover !important;
    background-position: center;
    background-repeat: no-repeat;
    }
.text {
  white-space: nowrap; 
  color: white;
  font-size: 20px;
  position: absolute;
  overflow: hidden;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  font-weight: 700;
}
</style>
        <!-- 3 box section end -->

        <!-- Latest Posts Area -->
        <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Celebrity</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php /**
                     * Custom Slug Name post
                     */
                    global $post;
                        $args = array( 
                            'posts_per_page'  =>   6,
                            'orderby'         => 'date',
                            'order'           => 'DESC',
                            'post_type'       => 'post',
                            'post_status'     => 'publish',
                            'tax_query' => array(
                                    array(
                                        'taxonomy' => 'category',
                                        'field' => 'slug',
                                        'terms' => 'celebrity'
                                    )
                            )
                        );
                        $the_query = new WP_Query( $args );
                        while ( $the_query->have_posts() ) :
                            $the_query->the_post();
                                $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                    ?>
            
                                    
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="<?php echo $url;?>" alt="">
                                </div>
                                <div class="banner-cap2">
                                   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;"> <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                    
                </div>
                <div class="row text-center">
                    <button class="submit-btn3 mzeroauto">Load More</button>
                </div>
            </div>
        </div>
        <!-- Latest Posts End-->


                <!-- Latest Posts Area -->
        <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Fashion</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php /**
                     * Custom Slug Name post
                     */
                    global $post;
                        $args = array( 
                            'posts_per_page'  =>   6,
                            'orderby'         => 'date',
                            'order'           => 'DESC',
                            'post_type'       => 'post',
                            'post_status'     => 'publish',
                            'tax_query' => array(
                                    array(
                                        'taxonomy' => 'category',
                                        'field' => 'slug',
                                        'terms' => 'fashion',
                                        'include_children' => false
                                    )
                                 
                            )
                        );
                        $the_query = new WP_Query( $args );
                        while ( $the_query->have_posts() ) :
                            $the_query->the_post();
                                $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                    ?>
            
                                    
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="<?php echo $url;?>" alt="">
                                </div>
                                <div class="banner-cap2">
                                   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;"> <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                    
                </div>
                <div class="row text-center">
                    <button class="submit-btn3 mzeroauto">Load More</button>
                </div>
            </div>
        </div>
        <!-- Latest Posts End-->

                        <!-- Latest Posts Area -->
        <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Beauty</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php /**
                     * Custom Slug Name post
                     */
                    global $post;
                        $args = array( 
                            'posts_per_page'  =>   6,
                            'orderby'         => 'date',
                            'order'           => 'DESC',
                            'post_type'       => 'post',
                            'post_status'     => 'publish',
                            'tax_query' => array(
                                    array(
                                        'taxonomy' => 'category',
                                        'field' => 'slug',
                                        'terms' => 'beauty'
                                    )
                            )
                        );
                        $the_query = new WP_Query( $args );
                        while ( $the_query->have_posts() ) :
                            $the_query->the_post();
                                $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                    ?>
            
                                    
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="<?php echo $url;?>" alt="">
                                </div>
                                <div class="banner-cap2">
                                   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;"> <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                    
                </div>
                <div class="row text-center">
                    <button class="submit-btn3 mzeroauto">Load More</button>
                </div>
            </div>
        </div>
        <!-- Latest Posts End-->              

         <!-- Latest Posts Area -->
        <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Health & Fitness</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php /**
                     * Custom Slug Name post
                     */
                    global $post;
                        $args = array( 
                            'posts_per_page'  =>   6,
                            'orderby'         => 'date',
                            'order'           => 'DESC',
                            'post_type'       => 'post',
                            'post_status'     => 'publish',
                            'tax_query' => array(
                                    array(
                                        'taxonomy' => 'category',
                                        'field' => 'slug',
                                        'terms' => 'life'
                                    )
                            )
                        );
                        $the_query = new WP_Query( $args );
                        while ( $the_query->have_posts() ) :
                            $the_query->the_post();
                                $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                    ?>
            
                                    
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="<?php echo $url;?>" alt="">
                                </div>
                                <div class="banner-cap2">
                                   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;"> <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                    
                </div>
                <div class="row text-center">
                    <button class="submit-btn3 mzeroauto">Load More</button>
                </div>
            </div>
        </div>
        <!-- Latest Posts End-->

         <!-- Latest Posts Area -->
        <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>LifeStyle</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php /**
                     * Custom Slug Name post
                     */
                    global $post;
                        $args = array( 
                            'posts_per_page'  =>   6,
                            'orderby'         => 'date',
                            'order'           => 'DESC',
                            'post_type'       => 'post',
                            'post_status'     => 'publish',
                            'tax_query' => array(
                                    array(
                                        'taxonomy' => 'category',
                                        'field' => 'slug',
                                        'terms' => 'life'
                                    )
                            )
                        );
                        $the_query = new WP_Query( $args );
                        while ( $the_query->have_posts() ) :
                            $the_query->the_post();
                                $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                    ?>
            
                                    
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="<?php echo $url;?>" alt="">
                                </div>
                                <div class="banner-cap2">
                                   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;"> <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                    
                </div>
                <div class="row text-center">
                    <button class="submit-btn3 mzeroauto">Load More</button>
                </div>
            </div>
        </div>
        <!-- Latest Posts End-->
         <!-- Latest Posts Area -->
        <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Art</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php /**
                     * Custom Slug Name post
                     */
                    global $post;
                        $args = array( 
                            'posts_per_page'  =>   6,
                            'orderby'         => 'date',
                            'order'           => 'DESC',
                            'post_type'       => 'post',
                            'post_status'     => 'publish',
                            'tax_query' => array(
                                    array(
                                        'taxonomy' => 'category',
                                        'field' => 'slug',
                                        'terms' => 'life'
                                    )
                            )
                        );
                        $the_query = new WP_Query( $args );
                        while ( $the_query->have_posts() ) :
                            $the_query->the_post();
                                $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                    ?>
            
                                    
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="<?php echo $url;?>" alt="">
                                </div>
                                <div class="banner-cap2">
                                   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;"> <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                    
                </div>
                <div class="row text-center">
                    <button class="submit-btn3 mzeroauto">Load More</button>
                </div>
            </div>
        </div>
        <!-- Latest Posts End-->
         <!-- Latest Posts Area -->
        <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Accessories</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php /**
                     * Custom Slug Name post
                     */
                    global $post;
                        $args = array( 
                            'posts_per_page'  =>   6,
                            'orderby'         => 'date',
                            'order'           => 'DESC',
                            'post_type'       => 'post',
                            'post_status'     => 'publish',
                            'tax_query' => array(
                                    array(
                                        'taxonomy' => 'category',
                                        'field' => 'slug',
                                        'terms' => 'life'
                                    )
                            )
                        );
                        $the_query = new WP_Query( $args );
                        while ( $the_query->have_posts() ) :
                            $the_query->the_post();
                                $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                    ?>
            
                                    
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="<?php echo $url;?>" alt="">
                                </div>
                                <div class="banner-cap2">
                                   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;"> <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                    
                </div>
                <div class="row text-center">
                    <button class="submit-btn3 mzeroauto">Load More</button>
                </div>
            </div>
        </div>
        <!-- Latest Posts End-->
         <!-- Latest Posts Area -->
        <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Travel</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php /**
                     * Custom Slug Name post
                     */
                    global $post;
                        $args = array( 
                            'posts_per_page'  =>   6,
                            'orderby'         => 'date',
                            'order'           => 'DESC',
                            'post_type'       => 'post',
                            'post_status'     => 'publish',
                            'tax_query' => array(
                                    array(
                                        'taxonomy' => 'category',
                                        'field' => 'slug',
                                        'terms' => 'life'
                                    )
                            )
                        );
                        $the_query = new WP_Query( $args );
                        while ( $the_query->have_posts() ) :
                            $the_query->the_post();
                                $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                    ?>
            
                                    
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="<?php echo $url;?>" alt="">
                                </div>
                                <div class="banner-cap2">
                                   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;"> <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                    
                </div>
                <div class="row text-center">
                    <button class="submit-btn3 mzeroauto">Load More</button>
                </div>
            </div>
        </div>
        <!-- Latest Posts End-->




         <!-- Top Posts Start -->
        <div class="top-post-area pt-40 pb-40">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle gdb-mag mb-35">
                            <h2>Digital Magazine</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-lg-between">
                    <div class="col-lg-9 col-md-9">
                        <div class="row">
                            <!-- single-job-content -->
                            <?php /**
                             * Custom Slug Name magazine
                             */
                            global $post;
                                $args = array( 
                                    'posts_per_page'  =>   6 ,
                                    'orderby'         => 'date',
                                    'order'           => 'DESC',
                                    'post_type'       => 'magazine',
                                    'post_status'     => 'publish'
                                );
                                $the_query = new WP_Query( $args );
                                while ( $the_query->have_posts() ) :
                                    $the_query->the_post();
                                        $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                                        $link = get_field('magazine_link');

                            ?>                          
                                          
                            <div class="single-job-items mb-30 col-md-4 col-sm-12">
                                <div class="company-img magimg">
                                    <a href="<?php echo $link;?>" target="_blank">
                                        <img src="<?php echo $url; ?>" alt="" class="img-responsive">
                                    </a>
                                </div>
                            </div>
                            <?php endwhile; wp_reset_postdata(); wp_reset_query();?>
                            <!-- single-job-content -->

                        </div>
                        <div class="row text-center">
                            <button class="submit-btn3 mzeroauto">View All</button>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="google-add mb-40">
                            <img src="<?php echo get_template_directory_uri();?>/assets/img/gallery/Ad.png" alt="">
                            <p class="text-center">advertisement</p>
                        </div>
                    </div>

                   
                </div>

            </div>
        </div>
        <!-- Top Posts End -->


    </main>
    
    
       
<?php get_footer();?>