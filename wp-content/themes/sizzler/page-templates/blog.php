<?php 
/*Template Name: Blog*/
get_header(); 
?>

    <main>
        <!-- breadcrumb Start-->
        <div class="page-notification">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-left">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Blog</a></li> 
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb End -->
        
        <!--? Blog Area Start-->
        <section class="blog_area section-padding">
            <div class="container">
                <div class="row">

                    
                    <?php 
                    /**
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
                        $post_categories = wp_get_post_categories( $post->ID );
                        $lastElement = end($array);

                    ?>
                                 
                        <div class="col-lg-4 mb-5 mb-lg-0">
                            <div class="blog_left_sidebar">
                                <article class="blog_item">
                                    <div class="blog_item_img">
                                        <img class="card-img rounded-0" src="<?php echo $url;?>" alt="">
                                        <a class="blog_item_date">
                                            
                                            
                                            <h3><?php echo get_the_date( 'd' ); ?></h3>
                                            <p><?php echo get_the_date( 'M' ); ?></p>
                                        </a>
                                    </div>
                                    <div class="blog_details">
                                        <a class="d-inline-block" href="<?php the_permalink(); ?>">
                                            <h2 class="blog-head" style="color: #2d2d2d;"><?php the_title(); ?></h2>
                                        </a>
                                        <p><?php echo substr(get_the_excerpt(), 0, 200).'..';  ?></p>
                                        <ul class="blog-info-link">
                                            <li><a href="#"><i class="fa fa-user"></i><?php the_author(); ?></a></li>
                                            <li><a href="#"><i class="fa fa-tag"></i> <?php 
                                            foreach($post_categories as $c){
                                                $delim = ($c == $lastElement) ? '' : ', ';
                                                $cat = get_category( $c );
                                                echo $cat->name.$delim;
                                                
                                            } ?>
                                            </a></li>
                                            <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
                                        </ul>
                                    </div>
                                </article>
                            </div>
                        </div>

                    <?php endwhile; wp_reset_query();
                        wp_reset_postdata();?>
                    

                </div>
            </div>
        </section>
        <!-- Blog Area End -->

       
<?php get_footer();?>