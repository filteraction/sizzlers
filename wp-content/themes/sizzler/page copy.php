<?php get_header(); $pagename = get_query_var('pagename');?>


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


<section id="<?php echo $pagename; ?>-sec">
    <div class="container">
        <div class="heading">
            <h3><?php the_title();?></h3>
        </div>
        <div class="<?php echo $pagename; ?>-main">
        
            <?php if(have_posts()): while(have_posts()): the_post()?>
                <?php the_content();?> 
            <?php endwhile; endif;?>
        
      </div>                     
    </div>
</section>
<?php get_footer(); ?>