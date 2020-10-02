<?php 
/*Template Name: Register*/
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
                                <li class="breadcrumb-item"><a href="#">Sign Up</a></li> 
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb End -->

        <!-- Register Area Start -->
        <div class="register-form-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-lg-8">
                        <div class="register-form text-center">
                            <!-- Login Heading -->
                            <div class="register-heading">
                                <span>Sign Up</span>
                                <p>Create your account to get full access</p>
                                 <?php if(isset($_SESSION['err_msg'])){?>
                                    <div id="signupalert" style="display:block" class="alert alert-danger">
                                        <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
                                          &times;
                                       </button>
                                        <?php echo $_SESSION['err_msg'];?>
                                    </div>
                                <?php } ?>
                                <?php if(isset($_SESSION['succ_msg'])){?>
                                    <div id="signupalert" style="display:block" class="alert alert-success">
                                        <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
                                          &times;
                                       </button>
                                        <?php echo $_SESSION['succ_msg'];?>
                                    </div>
                                <?php } 

                                $userName = $_POST['uname']?? "";
                                $userEmail = $_POST['uemail']?? "";
                                $password = $_POST['password']?? "";
                                $cpassword = $_POST['cpassword']?? "";
                                ?>
                            </div>
                            <!-- Single Input Fields -->
                            <form action="" method="post">
                            <div class="input-box">
                                <div class="single-input-fields">
                                    <label>Full name</label>
                                    <input type="text" name="uname" placeholder="Enter full name" value="<?php echo $userName; ?>">
                                </div>
                                <div class="single-input-fields">
                                    <label>Email Address</label>
                                    <input type="email" name="uemail" placeholder="Enter email address" value="<?php echo $userEmail; ?>">
                                </div>
                                <div class="single-input-fields">
                                    <label>Password</label>
                                    <input type="password" name="password" placeholder="Enter Password" value="<?php echo $password; ?>">
                                </div>
                                <div class="single-input-fields">
                                    <label>Confirm Password</label>
                                    <input type="password" name="cpassword" placeholder="Confirm Password" value="<?php echo $cpassword; ?>">
                                </div>
                            </div>
                            <!-- form Footer -->
                            <div class="register-footer">
                                <p> Already have an account? <a href="<?php echo site_url('login');?>"> Login</a> here</p>
                                <input type="submit" name="sizzler_create_user" class="submit-btn3" value="Sign Up" style="width: inherit;">
                            </div>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Register Area End -->
    </main>



<?php
if(isset($_SESSION['err_msg']) || isset($_SESSION['succ_msg'])){
    unset($_SESSION['err_msg']);
    unset($_SESSION['succ_msg']);
// session_destroy();
}
get_footer();
 ?>