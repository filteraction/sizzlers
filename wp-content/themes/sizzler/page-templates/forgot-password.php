<?php 
/*Template Name: Forgot Password*/
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
                                <span>Forgot Password</span>
                                <p>Enter your email to get access</p>
                            </div>
                            <form method="post" action="">
                                <?php 
                                if (isset($_SESSION['msg']))
                                    echo $_SESSION['msg'];
                                // if (isset($_SESSION['err_msg']))
                                //     echo 
                                // '<div class = "alert alert-danger alert-dismissable">
                                //    <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
                                //       &times;
                                //    </button>'.$_SESSION['err_msg'].'
                                // </div>';
                                $username = $_POST['login_username']?? "";
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
                                    <label>Email Address</label>
                                    <input type="email" name="login_username" placeholder="Email address" value="<?php echo $username; ?>">
                                </div>
                            
                            </div>
                            <!-- form Footer -->
                            <div class="login-footer">
                                <p>Don’t have an account? <a href="<?php echo site_url('register'); ?>">Sign Up</a>  here</p>
                                <input type="submit" name="sizzler_forgot_password" class="submit-btn3" value="Reset Password" style="width:inherit;">
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- login Area End -->
<div class="clearfix"></div>

<?php
if(isset($_SESSION['msg']) ){
    unset($_SESSION['msg']);
}
get_footer();
 ?>