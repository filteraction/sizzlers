<?php get_header();?>
<style>
.page-notification {
    margin-bottom: 0px !important;
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
                            <?php woocommerce_breadcrumb(); ?>
                                <!-- <li class="breadcrumb-item"><a href="<?php echo home_url(); ?>">Home</a></li>
                                <li class="breadcrumb-item"><?php the_title(); ?></a></li>  -->
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb End -->

        <!-- Top Posts Start -->
        <div class="top-post-area pt-40 pb-40" style="background: #eee;">
            <div class="container">
                <!-- <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2><?php the_title() ?></h2>
                        </div>
                    </div>
                </div> -->
                <?php do_action('gdb_woo_header'); ?><!-- @hooked wp_pagenavi , woocommerce_result_count, woocommerce_catalog_ordering  @class Product_Page -->
                <div class="row justify-content-lg-between">
                <?php woocommerce_content();?>
                    
                </div>
                <?php do_action('gdb_woo_header'); ?><!-- @hooked wp_pagenavi , woocommerce_result_count, woocommerce_catalog_ordering  @class Product_Page -->
            
            </div>
        </div>
</main>

<?php get_footer(); ?>