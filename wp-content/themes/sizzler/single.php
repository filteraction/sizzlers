<?php 
get_header();
?>
<style type="text/css">
    blockquote {
    padding: 30px;
    background: rgba(130, 139, 178, 0.1);
}
   blockquote p{
    background: rgba(130, 139, 178, 0.1);
    padding: 15px;
    line-height: 1.733;
    color: #888888;
    font-style: italic;
    margin-top: 25px;
    margin-bottom: 25px;
    background: #fff;
    padding: 15px 15px 15px 20px;
    border-left: 2px solid;
    line-height: 1.733;
    color: #888888;
    font-style: italic;
}
.post_item img {
    width: 80px;
    height: 80px;
}
</style>
   <main>
      <!-- breadcrumb Start-->
      <div class="page-notification">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb justify-content-left">
                        <li class="breadcrumb-item"><a href="<?php echo home_url(); ?>">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Blog Details</a></li> 
                     </ol>
                  </nav>
               </div>
            </div>
         </div>
      </div>
     <!-- breadcrumb End -->
      <!--? Blog Area Start -->
      <section class="blog_area single-post-area section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-8 posts-list">
               <?php       
                 if (have_posts()) : 
                  while (have_posts() ) :
                   the_post();
                       $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                        // wpb_set_post_views($post->ID);
                  ?>
                  <div class="single-post">
                     <div class="feature-img">
                        <img class="img-fluid" src="<?php echo $url; ?>" alt="">
                     </div>
                     <div class="blog_details">
                        <h2 style="color: #2d2d2d;"><?php the_title(); ?>
                        </h2>
                        <ul class="blog-info-link mt-3 mb-4">
                           <li><a href="#"><i class="fa fa-user"></i> Travel, Lifestyle</a></li>
                           <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
                        </ul>
                        <p class="excert">
                          <?php the_content(); ?>
                        </p>
                       <?php if ( comments_open() || get_comments_number() ) :
                        comments_template();
                        endif; 
                        ?>
                       
                     </div>
                  </div>
                  <?php endwhile; wp_reset_query();
                        wp_reset_postdata(); endif; ?>
               </div>


               <div class="col-lg-4">
                  <div class="blog_right_sidebar">
                     <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="widget_title" style="color: #2d2d2d;">Recent Post</h3>
                        <?php /**
                         * Custom Slug Name post
                         */
                          global $post;
                              $args = array( 
                                  'posts_per_page'  =>   5 ,
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
                                  
                        <div class="media post_item">
                           <img src="<?php echo $url; ?>" alt="post">
                           <div class="media-body">
                              <a href="<?php the_permalink(); ?>">
                                 <h3 style="color: #2d2d2d;"><?php the_title(); ?></h3>
                              </a>
                              <p>02 Hours ago</p>
                           </div>
                        </div>
                        <?php endwhile; wp_reset_query();
                        wp_reset_postdata();?>

                     </aside>
                     <aside class="single_sidebar_widget instagram_feeds">
                        <h4 class="widget_title" style="color: #2d2d2d;">Instagram Feeds</h4>
                        <ul class="instagram_row flex-wrap">
                           <li>
                              <a href="#">
                                 <img class="img-fluid" src="<?php echo get_template_directory_uri();?>/assets/img/post/post_5.png" alt="">
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <img class="img-fluid" src="<?php echo get_template_directory_uri();?>/assets/img/post/post_6.png" alt="">
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <img class="img-fluid" src="<?php echo get_template_directory_uri();?>/assets/img/post/post_7.png" alt="">
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <img class="img-fluid" src="<?php echo get_template_directory_uri();?>/assets/img/post/post_8.png" alt="">
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <img class="img-fluid" src="<?php echo get_template_directory_uri();?>/assets/img/post/post_9.png" alt="">
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <img class="img-fluid" src="<?php echo get_template_directory_uri();?>/assets/img/post/post_10.png" alt="">
                              </a>
                           </li>
                        </ul>
                     </aside>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Blog Area End -->

   </main>

<?php get_footer(); ?>