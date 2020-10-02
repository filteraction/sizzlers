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
        <!-- Banner News Area Start -->
        <div class="banner-news">
            <div class="container-fluid p-0">
                <div class="banner-slider-active no-gutters ">
                    <?php /**
                     * Custom Slug Name post
                     */
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
                                    ?>
                    
                                    
                    <div class="single-sliders">
                        <div class="single-baner-nw mb-30 text-center">
                            <div class="banner-img-cap">
                                <div class="banner-img">
                                    <img src="<?php echo $url;?>" alt="">
                                    <?php if(!empty($video_url)) {?>
                                    <!--video iocn -->
                                    <div class="video-icon">
                                        <a class="popup-video btn-icon" href="<?php echo $video_url; ?>" data-animation="bounceIn" data-delay=".4s"><i class="fas fa-play"></i></a>
                                    </div>
                                <?php } ?>
                                </div>
                                <div class="banner-cap">
                                    <p>Trending</p>
                                    <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endwhile; wp_reset_postdata();wp_reset_query();?>

                </div>
            </div>
        </div>
        <!-- Banner News Area End -->

        <!-- Video Area Start -->
         <!--  <div class="video-area">
            <div class="container-fluid">
                <div class="video-wrapper">
                    <div class="left-content">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="section-tittle section-tittle2 mb-35">
                                    <h2 class="mb-10">Videos</h2>
                                    <p>TOP OF THE WEEK PLAYLIST</p>
                                    <p class="video-cap">
                                        Calling time on<br> irresponsible junk<br> food advertising
                                    </p>
                                    <small>Business / 5.0m</small>
                                </div>
                            </div>
                          
                            <div class="col-lg-6 col-md-6">
                                <div class="single-baner-nw4 mb-30">
                                    <div class="banner-img-cap4">
                                        <div class="banner-img4">
                                            <img src="<?php echo get_template_directory_uri();?>/assets/img/gallery/video_img1.png" alt="">
                                            
                                            <div class="video-icon video-icon2">
                                                <a class="popup-video btn-icon" href="https://www.youtube.com/watch?v=D7WNjCBLaU4" data-animation="bounceIn" data-delay=".4s"><i class="fas fa-play"></i></a>
                                            </div>
                                        </div>
                                        <div class="banner-cap4">
                                            <h3><a href="#!">Editors with strong points  of view</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="single-baner-nw4 mb-30">
                                    <div class="banner-img-cap4">
                                        <div class="banner-img4">
                                            <img src="<?php echo get_template_directory_uri();?>/assets/img/gallery/video_img2.png" alt="">
                                            
                                            <div class="video-icon video-icon2">
                                                <a class="popup-video btn-icon" href="https://www.youtube.com/watch?v=D7WNjCBLaU4" data-animation="bounceIn" data-delay=".4s"><i class="fas fa-play"></i></a>
                                            </div>
                                        </div>
                                        <div class="banner-cap4">
                                            <h3><a href="#!">Dill is part of an unexpected groundswell</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="right-content">
                        <div class="video-img">
                            <iframe autoplay width="100%" height="400" src="https://www.youtube.com/embed/D7WNjCBLaU4?autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Video Area End -->

        <!-- Current Issue Start -->
        <div class="top-post-area pt-40 pb-40">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Current Issue</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-lg-between">
                <?php echo do_shortcode('[dflip id="436" ][/dflip]'); ?>
                </div>
            </div>
        </div>
        <!-- Current issue end -->     

         <!-- Top Posts Start -->
        <div class="top-post-area pt-40 pb-40">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Top Posts</h2>
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

        <!-- Latest Posts Area -->
        <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Blog Posts</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php /**
                     * Custom Slug Name post
                     */
                    global $post;
                        $args = array( 
                            'posts_per_page'  =>   3 ,
                            'orderby'         => 'date',
                            'order'           => 'DESC',
                            'post_type'       => 'post',
                            'post_status'     => 'publish'
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
            </div>
        </div>
        <!-- Latest Posts End-->
    </main>
    
    
       
<?php get_footer();?>