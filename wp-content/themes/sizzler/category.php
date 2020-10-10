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

    <main>
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

        <!-- Top Posts Start -->
        <div class="top-post-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Top Posts</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-lg-between">
                    <div class="col-lg-8 col-md-8">
                        
                    	<?php 
							if (get_query_var('paged')) {
			                    $paged = get_query_var('paged');
			                    } elseif (get_query_var('page')) { 
			                        $paged = get_query_var('page');
			                    } else {
			                        $paged = 1;
			                    } 
			                    $args = array(
									'post_type' => 'post',
									'tax_query' => array(
														array(
														'taxonomy' => $category['taxonomy'],
														'field' => 'id',
														'terms' => $category['id']
														 )
													  ),
									'numberposts' => -1,
									'posts_per_page' => 5,
									'post_status'     => 'publish',
									'post_parent' => null,
									'paged' => $paged,
									'order' => 'DESC'
									);
			                  
						// echo "<pre>";
						// print_r($args);
						$custom_query = new WP_Query($args);
						//var_dump($custom_query);
						if ($custom_query->have_posts()) :
							while ($custom_query->have_posts()) : 
								$custom_query->the_post();
		    			 		$url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
						?>
						<!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="<?php the_permalink(); ?>">
                                       <img src="<?php echo $url;?>">
                                    </a>
                                </div>
                                <div class="job-tittle">
                                    <span>Trending</span>
                                    <a href="<?php the_permalink(); ?>"><h4><?php the_title(); ?></h4></a>
                                    <p><?php echo substr(get_the_excerpt(), 0, 110); ?>..</p>
                                </div>
                            </div>
                        </div>

                        <?php endwhile;

                     	if ($custom_query->max_num_pages > 1) {
				          $orig_query = $wp_query;
				          $wp_query = $custom_query;
				          ?>
					        <div class="row mb-20">
							<!-- <div class="pagination">
								<a href="#">&laquo;</a>
								<a href="#">1</a>
								<a href="#" class="active">2</a>
								<a href="#">3</a>
								<a href="#">4</a>
								<a href="#">5</a>
								<a href="#">6</a>
								<a href="#">&raquo;</a>
								</div> -->
				              <?php
				              if (function_exists('wp_bootstrap_pagination'))
				              	// echo "hi";
				                  wp_bootstrap_pagination();
				              ?>
					        </div>
	          			<?php $wp_query = $orig_query; ?>
		      			<?php }
		      			wp_reset_query();
		          		wp_reset_postdata();
		      			else: echo '<h2 style="text-align:center">' . __('Sorry, post not found!') . '</h2>'; ?>
			      
                        <!-- single-job-content -->
                    <?php endif; ?>

                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="google-add mb-40">
                            <img src="<?php echo get_template_directory_uri();?>/assets/img/gallery/Ad.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <style type="text/css">
        	.company-img img{
        		width:264px;
        		height: 214px;
        	}
        	.pagination>li>a, .pagination>li>span { border-radius: 50% !important;margin: 0 5px;}
        </style>
        <!-- Top Posts End -->
<?php get_footer(); ?>