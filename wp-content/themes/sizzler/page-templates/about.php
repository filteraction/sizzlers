<?php
/*Template Name: About*/
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
                                <li class="breadcrumb-item"><a href="#">about</a></li> 
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb End -->

        <!-- About Details -->
        <div class="psot-details pb-80">
            <div class="container">
                <div class="row">
                    <?php the_content(); ?>
                   
                </div>
            </div>
        </div>
        <!-- About Details End -->

<?php get_footer();?>