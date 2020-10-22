<?php get_header(); ?> 
<style type="text/css">
.post_item img {
    width: 80px;
    height: 80px;
}
.section-tittle::before {
    width: 74%;
}
.single-baner-nw2 .banner-img-cap2 .banner-img img {
    height: 450px !important;   
}
</style>        
     <!-- breadcrumb Start-->
     <div class="page-notification">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb justify-content-left">
                        <li class="breadcrumb-item"><a href="<?php echo home_url(); ?>">Home</a></li>
                        <li class="breadcrumb-item"><a href="#"><?php the_title(); ?></a></li> 
                     </ol>
                  </nav>
               </div>
            </div>
         </div>
      </div>
     <!-- breadcrumb End -->
         <!-- Latest Posts Area -->
         <div class="latest-posts pt-10 pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Fashion Forward</h2>
                        </div>
                    </div>
                </div>
               
                        <div class="row">
                    <?php 
                        global $post;
  
                        if ( have_posts() ) :
                            while ( have_posts() ) : the_post();
                                $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                                $images = get_field('models_galleries');
                                $size = 'full';
                                if($images):
                                    foreach( $images as $image  ):  ?>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-baner-nw2 mb-30">
                                                <div class="banner-img-cap2">
                                                    <div class="banner-img">
                                                        <img src="<?php echo esc_url($image['url']); ?>" alt="">
                                                    </div>
                                                    <div class="banner-cap2">
                                                    <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                                        <!-- <p class="blog-text" style="text-transform: normal !important;"> 
                                                            <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p> -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php endforeach; endif; ?>
                        <?php endwhile; wp_reset_postdata(); wp_reset_query(); endif; ?> 
                    
                      </div>
                

            </div>

        </div>
        <!-- Latest Posts End-->

<?php get_footer();?>