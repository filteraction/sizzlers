<?php 
/*Template Name: Login old*/
get_header();  ?>


<!-- login-area-starts -->
<section id="login-area">
    <div class="container">
        <div class="header-area">
            <h2>
                My Account
            </h2>
        </div>
        <div class="row">
        <div class="col-lg-6">
            <div class="login-info">
                <div class="login-header">
                    <h2>
                        Login
                    </h2>
                </div>
                <form id="login" action="login" method="post">
                    <div class="form-area">
                        <div class="row">
                            <div class="col-sm-12">
                              <p class="status"></p>
                                <div class="form-group">
                                    <label>
                                        Username 
                                        <span class="required">*</span>
                                    </label>
                                    <div class="input-wrap">
                                        <input type="text" id="username"  name="username" class="form-control" placeholder="Username or email">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>
                                        Password 
                                        <span class="required">*</span>
                                    </label>
                                    <div class="input-wrap">
                                        <input type="password"  id="password" name="password" class="form-control" placeholder="Password">
                                    </div>
                                </div>
                            </div>
                            <div class="forgot-area">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group-1 form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                                          </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 col-lg-5">
                                <div class="btn-new">
                                    <!-- <button type="button" class="btn btn-primary"  value="Login" name="submit">Login</button> -->
                                    <input class="submit_button btn btn-primary" type="submit" value="Login" name="submit">
                                </div>
                            </div>
                            <div class="col-md-7 col-lg-7">
                                <div class="forgot-link">
                                <p class="line3">First time logging into our new site?</p>
                                <a href="forgot-password.html">Create a new password</a>

                                <p>Or can't remember your password?</p>
                                <a href="forgot-password.html">Reset password</a>
                            </div>
                            </div>
                        </div>
                    </div>
                    <?php wp_nonce_field( 'ajax-login-nonce', 'security' ); ?>
                </form>
            </div>
        </div>
        <div class="col-lg-6">

        

        <div class="login-info-2">
            <div class="area-1">
                <h4>New Customer?</h4>
                <p>Create an account with us and you'll be able to:</p>

               <ul>
                   <li>Check out faster</li>
                   <li>Save multiple shipping addresses</li>
                   <li>Track new orders</li>
                   <li>Access your order history</li>
                   <li>Save items to your favourites</li>
               </ul>
                     <div class="button-area">
                         <a href="<?php echo site_url('register');?>" class="btn-3">Create New Account</a>
                     </div> 

            </div>
        </div>


        </div>
        </div>
    </div>
</section>
<!-- login-area-end -->
<?php 
unset($_SESSION['err_msg']);
unset($_SESSION['succ_msg']);
session_destroy();
get_footer();?>