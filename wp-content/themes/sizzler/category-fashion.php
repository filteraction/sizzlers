<?php get_header(); 
global $post;
global $wpdb;
$term = get_queried_object();//get the current term
// var_dump($term);
$taxonomy = $term->taxonomy;
$term_id = $term->term_id;//get the currnet term ID
$term_name = $term->name;//get the current term name
$parent_id = empty( $term_id ) ? 0 : $term_id;//get the parent id of the currnet term
$term_parent = get_term($term->parent);//get the parent term from the child term

$parent_term_link = get_term_link($term_parent);//get the parent term link
$product_categories = get_categories(array(
										'parent'       => $parent_id,
										//'menu_order'   => 'ASC',
										'hide_empty'   => 0,
										'hierarchical' => 1,
										'taxonomy'     => $taxonomy,
										'pad_counts'   => 1,
										'order'        => 'DESC',
										'orderby'      => 'name'
										)
									);
$product_categories = wp_list_filter( $product_categories );//get the sub categories of a parent category 


$term_parent_details = NULL;
$category = array();
$category['id'] = $term->term_id;
$category['name'] = $term->name;
$category['parent_id'] = $term->parent;
if($category['parent_id'] != 0){
	$term_parent_details = get_term($category['parent_id']);
	$term_parent_link = get_term_link($term_parent_details);//get the parent term link
	$category['parent_name'] = $term_parent_details->name;
}
$category['taxonomy'] = $term->taxonomy;
// echo "<pre>";
// print_r($category);

?> 
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

.area {
  padding: 1rem;
  background: white;
  height: 450px;
  overflow: auto;
}
/* width */
.area::-webkit-scrollbar {
  width: 6px;
}

/* Track */
.area::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px grey;
  border-radius: 10px;
}

/* Handle */
.area::-webkit-scrollbar-thumb {
  background: gray;
  border-radius: 10px;
  height: 10px;
}
</style>        
 <!-- breadcrumb Start-->
 <div class="page-notification">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-left">
                                <li class="breadcrumb-item"><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a></li>
                                <?php if($term_parent_details!=NULL){ ?> 
				               <li class="breadcrumb-item"><a href="<?php echo esc_url( $term_parent_link ); ?>"><?php echo $category['parent_name']; ?></a></li>
				               <?php } ?>
				               <li class="breadcrumb-item"><?php echo $category['name']; ?></li>
                               
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
                    <div class="col-lg-3">
                        <div class="blog_right_sidebar">
                            <aside class="single_sidebar_widget popular_post_widget">
                                <h3 class="widget_title" style="color: #2d2d2d;">Top Shows</h3>
                                <div class="area">
                        <?php /**
                         * Custom Slug Name post
                         */
                        global $post;
                            $args = array( 
                                'posts_per_page'  =>   -1,
                                'orderby'         => 'date',
                                'order'           => 'ASC',
                                'post_type'       => 'post',
                                'post_status'     => 'publish',
                                'tax_query' => array(
                                        array(
                                            'taxonomy' => 'category',
                                            'field' => 'slug',
                                            'terms' => array( 'fashion', 'streetstyle', 'accesories',  'runway',  'designer' ),
                                        )
                                )
                            );
                            $the_query = new WP_Query( $args );
                            while ( $the_query->have_posts() ) :
                                $the_query->the_post();
                                    $url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
                        ?>                 
                                <div class="media post_item">
                                    <div class="media-body">
                                        <a href="<?php the_permalink(); ?>">
                                            <h3 style="color: #2d2d2d;"><?php the_title(); ?></h3>
                                        </a>
                                    </div>
                                </div>
                                <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                               
                                                                
                                
                                </div>
                            </aside>
                            
                        </div>
                    </div>
                    <div class="col-lg-9 posts-list">
                        <div class="row">
                        <?php /**
                         * Custom Slug Name post
                         */
                        global $post;
                            $args = array( 
                                'posts_per_page'  =>   -1,
                                'orderby'         => 'date',
                                'order'           => 'DESC',
                                'post_type'       => 'post',
                                'post_status'     => 'publish',
                                'tax_query' => array(
                                        array(
                                            'taxonomy' => 'category',
                                            'field' => 'slug',
                                            'terms' => array( 'fashion', 'streetstyle', 'accesories',  'runway',  'designer' ),
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
                                        <!-- <p class="blog-text" style="text-transform: normal !important;"> <?php echo substr(get_the_excerpt(), 0, 109); ?>[..] </p> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php endwhile; wp_reset_postdata(); wp_reset_query(); ?> 
                        
                    
                        <!-- <div class="row text-center">
                            <button class="submit-btn3 mzeroauto">Load More</button>
                        </div> -->
                      </div>
                    </div>
                </div>

            </div>

        </div>
        <!-- Latest Posts End-->

<?php get_footer();?>