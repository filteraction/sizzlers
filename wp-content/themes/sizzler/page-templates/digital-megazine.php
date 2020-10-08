<?php 
/*Template Name: Digital Megazine*/
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
                                <li class="breadcrumb-item"><a href="<?php echo home_url(); ?>">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Digital Megazine</a></li> 
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
        </section>
        <!-- Blog Area End -->

<?php get_footer(); ?>