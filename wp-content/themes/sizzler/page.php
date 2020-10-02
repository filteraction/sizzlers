<?php get_header(); $pagename = get_query_var('pagename');?>


 <!-- breadcrumb Start-->
        <div class="page-notification">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-left">
                                <li class="breadcrumb-item"><a href="<?php echo home_url(); ?>">Home</a></li>
                                <li class="breadcrumb-item"><?php the_title(); ?></a></li> 
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb End -->

<div class="top-post-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2><?php the_title() ?></h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-lg-between">
                    <div class="col-lg-12 col-md-12" style="text-align:center">
                        
                        <?php if(have_posts()): while(have_posts()): the_post()?>
                            <?php the_content();?> 
                        <?php endwhile; endif;?>
                        
                    <br>
                    </div>
                    
                </div>
            </div>
        </div>

<?php get_footer(); ?>