<?php 
// Template Name: Custom Template
get_header(); 
?>
<section id="breadcrumb">
    <div class="container">
        <ul>
            <li><a href="<?php echo home_url();?>">Home</a></li>
            <li><span>/</span></li>
            <li class="active">
                <?php the_title(); ?>
            </li>
        </ul>
    </div>
</section>
<!-- Text Area -->
<div class="text-area-wrap">
    <div class="container">
       <div class="content-sec">

           <h3><?php the_title();?></h3>

           <?php if(have_posts()): while(have_posts()): the_post()?>
                <?php the_content();?> 
            <?php endwhile; endif;?>
       </div>

    </div>
</div>

<?php get_footer(); ?>