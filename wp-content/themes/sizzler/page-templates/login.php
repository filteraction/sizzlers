<?php 
/*Template Name: Login*/
if(is_user_logged_in()){
wp_redirect( home_url() ); exit;   
}
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
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Login</a></li> 
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb End -->

        <!-- login Area Start -->
        <div class="login-form-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8">
                        <div class="login-form">
                            <!-- Login Heading -->
                            <div class="login-heading">
                                <span>Login</span>
                                <p>Enter Login details to get access</p>
                            </div>
                            <form method="post" action="">
                                <?php 
                                if (isset($_SESSION['succ_msg']))
                                    echo $_SESSION['succ_msg'];
                                if (isset($_SESSION['err_msg']))
                                    echo 
                                '<div class="alert alert-danger alert-dismissable">
                                   <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
                                      &times;
                                   </button>'.$_SESSION['err_msg'].'
                                </div>';
                                $username = $_POST['login_username']?? "";
                                $password = $_POST['login_password']?? "";
                                $remember_me_checkbox = !empty($_POST['remember_me_checkbox'])? 'checked': '';
                                ?>
                            <!-- Single Input Fields -->
                           <!--  <div class = "alert alert-success alert-dismissable">
                               <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
                                  &times;
                               </button>
                               Success! Well done its submitted.
                            </div> -->
                            <div class="input-box">
                                <div class="single-input-fields">
                                    <label>Username or Email Address</label>
                                    <input type="text" name="login_username" placeholder="Username / Email address" value="<?php echo $username; ?>">
                                </div>
                                <div class="single-input-fields">
                                    <label>Password</label>
                                    <input type="password" name="login_password" placeholder="Enter Password" value="<?php echo $password; ?>">
                                </div>
                                <div class="single-input-fields login-check">
                                    <input type="checkbox" id="fruit1" name="remember_me_checkbox" <?php echo $remember_me_checkbox ?>>
                                    <label for="fruit1">Keep me logged in</label>
                                <a href="<?php echo site_url('forgot-password');?>" class="f-right">Forgot Password?</a>
                                </div>
                            </div>
                            <!-- form Footer -->
                            <div class="login-footer">
                                <p>Don’t have an account? <a href="<?php echo site_url('register'); ?>">Sign Up</a>  here</p>
                                <input type="submit" name="sizzler_user_login" class="submit-btn3" value="Login" style="width:inherit;">
                            </div>
                            <?php wp_nonce_field( 'ajax-login-nonce', 'security' ); ?>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- login Area End -->
<div class="clearfix"></div>

<?php 
if(isset($_SESSION['err_msg']) || isset($_SESSION['succ_msg'])){
    unset($_SESSION['err_msg']);
    unset($_SESSION['succ_msg']);
    // session_destroy();
}
get_footer(); 
?>