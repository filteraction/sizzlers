
               <div class="left-main-area">
                <div class="product-content">
                    <div class="header-area">
                        <h2>
                            product categories
                        </h2>
                    </div>
                    <!--  <div class="srch-pdt">
                        <form action="#">
                            <input type="text" class="form-control" id="tags"  placeholder="Search here...">
                            <div class="btn-area">
                                <i class="fas fa-search"></i>
                            </div>
                        </form>
                    </div> -->

                </div>

                <div id="accordion" class="myaccordion">

              <?php 
              $taxonomy = 'product_cat';
              $pterms = get_terms( array( 
              'taxonomy' => $taxonomy,
              'parent'   => 0
              ) );
                  // echo '<pre>';
                  // var_dump($terms);
                  foreach ($pterms as $myterm) {
                    $term_id = $myterm->term_id;
                    $term_link = get_term_link( $myterm );
                    $thumbnail_id = get_woocommerce_term_meta($term_id, 'thumbnail_id', true);
                    $url =  wp_get_attachment_url($thumbnail_id);//print the image
                    $link = esc_url( $term_link );//print the link
                    $name = $myterm->name;//print the name of the parent term
                    $accordion_id = 'collapse'.$term_id;
                    $card_id = 'heading'.$term_id;
                    //get the child terms
                    $termchildren = get_term_children( $term_id, $taxonomy );

                  
                  echo '<div class="card">
                      <div class="card-header" id="'.$card_id.'">
                        <h2 class="mb-0">
                          <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#'.$accordion_id.'" aria-expanded="false" aria-controls="'.$accordion_id.'">'. $name.'
                            <span class="fa-stack fa-sm">
                              <i class="fas fa-circle fa-stack-2x"></i>
                              <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
                            </span>
                          </button>
                        </h2>
                      </div>
                      <div id="'.$accordion_id.'" class="collapse" aria-labelledby="'.$card_id.'" data-parent="#accordion">
                        <div class="card-body">';

                       echo '<ul>';
                      foreach ( $termchildren as $child ) {
                          $term = get_term_by( 'id', $child, $taxonomy );
                          echo '<li><a href="' . get_term_link( $child, $taxonomy ) . '">' . $term->name . '</a></li>';
                      }
                    
                      echo '</ul>';
                      echo ' </div>
                      </div>
                    </div>';

                    } ?>
                  

                      <div class="card">
                        <div class="card-header" id="headingSeven">
                          <h2 class="mb-0">
                            <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                              More+
                              <span class="fa-stack fa-2x">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
                              </span>
                            </button>
                          </h2>
                        </div>
                        <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                          <div class="card-body">
                            <ul>
                              <!-- <li><a href="#"> Mark Members </a></li>
                              <li><a href="#"> Mark Provincial </a></li>
                              <li><a href="#"> Mark Grand Rank </a></li>
                              <li><a href="#"> Mark Collar Chains </a></li>
                              <li><a href="#"> Mark Furnishings </a></li> -->
                            </ul>
                          </div>
                        </div>
                      </div>


                  </div>


                  



<!-- range slider -->
<div class="range-slider-main">
    <h2>Price Range</h2>
                  <div class="range-slider">

                  <?php dynamic_sidebar('footer_1');?>
                 <!--    <span>from
                    <input type="number" value="25000" min="0" max="120000"/>to
                    <input type="number" value="50000" min="0" max="120000"/></span>
                  <input value="25000" min="0" max="120000" step="500" type="range"/>
                  <input value="50000" min="0" max="120000" step="500" type="range"/>
                  <svg width="100%" height="24">
                    <line x1="4" y1="0" x2="300" y2="0" stroke="#444" stroke-width="12" stroke-dasharray="1 28"></line>
                  </svg> -->



                </div>

            </div>



            





            

          </div>