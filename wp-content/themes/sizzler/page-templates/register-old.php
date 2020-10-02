<?php
/*Template Name: Register Old*/
get_header();
$path = 'user.php';
include_once $path;
if(isset($_GET['page'])=='checkout'){
    $redirect =  $_GET['page'];
}
$user = new Register();
if (isset($_POST['normal_user'])) {
$user->create_user_info($_POST);
}

?>
<section id="login-area">
    <div class="container">
        <div class="header-area">
           <a href="checkout.html" class="backbtn"><i class="fa fa-angle-double-left pr-1" aria-hidden="true"></i> Back</a>
         
            <h2>
               Create Account
            </h2>
        </div>
        <div class="row">
            <div class="col-md-12">
            <?php if(isset($_SESSION['err_msg'])){?>
                <div id="signupalert" style="display:block" class="alert alert-danger">

                    <span><?php echo $_SESSION['err_msg'];?></span>
                </div>
            <?php } ?>
            <?php if(isset($_SESSION['succ_msg'])){?>
                <div id="signupalert" style="display:block" class="alert alert-success">

                    <span><?php echo $_SESSION['succ_msg'];?></span>
                </div>
            <?php } ?>
        </div>

        <div class="col-lg-6 offset-lg-3">
            <div class="login-info area3">
                <form action="" method="post">
                    <input type="hidden" name="role" value="subscriber">
                    <input type="hidden" name="redirect" value="<?php echo $redirect;?>">
                    <div class="form-area">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>
                                        First name 
                                        <span class="required">*</span>
                                    </label>
                                    <div class="input-wrap">
                                        <input type="text" class="form-control" placeholder="" name="fname" value="<?php echo isset($_POST['fname']) ? $_POST['fname'] : '' ;?>">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>
                                        Last name 
                                        <span class="required">*</span>
                                    </label>
                                    <div class="input-wrap">
                                        <input type="text" class="form-control" placeholder="" name="lname" value="<?php echo isset($_POST['lname']) ? $_POST['lname'] : '' ;?>">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>
                                        Email Address
                                        <span class="required">*</span>
                                    </label>
                                    <div class="input-wrap">
                                        <input type="email" class="form-control" placeholder="Email" name="email" value="<?php echo isset($_POST['email']) ? $_POST['email'] : '' ;?>">
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
                                        <input type="password" class="form-control" placeholder="" name="password" value="<?php echo isset($_POST['password']) ? $_POST['password'] : '' ;?>">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>
                                        Confirm Password
                                        <span class="required">*</span>
                                    </label>
                                    <div class="input-wrap">
                                        <input type="password" class="form-control" placeholder="" name="cpassword" value="<?php echo isset($_POST['cpassword']) ? $_POST['cpassword'] : '' ;?>">
                                    </div>
                                </div>
                            </div>
                           
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>
                                        Phone Number 
                                        <span class="required">*</span>
                                    </label>
                                    <div class="input-wrap">
                                        <input type="text" class="form-control" placeholder="" name="phone" value="<?php echo isset($_POST['phone']) ? $_POST['phone'] : '' ;?>">
                                    </div>
                                </div>
                            </div>
                           

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>
                                        Company Name
                                    </label>
                                    <div class="input-wrap">
                                        <input type="text" class="form-control" placeholder="" name="company" value="<?php echo isset($_POST['company']) ? $_POST['company'] : '' ;?>">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <h2>Enter your Shipping Address</h2>
                            </div>


                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>
                                        Country
                                        <span class="required">*</span>
                                    </label>
                                    <select name="country" id="" class="form-control">
                                        <option selected hidden>United Kingdom</option>
                                        <option>India</option>
                                        <option>Australia</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="">Region</label>
                                    <select name="state" id="" class="form-control">
                                        <option selected hidden>United Kingdom</option>
                                        <option>W.B</option>
                                        <option>Australia</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-12">
                            <div class="form-group">
                                <label for="">Address 1</label>
                                <input type="text" class="form-control" placeholder="House / Apartment Number" name="add_line1" value="<?php echo isset($_POST['add_line1']) ? $_POST['add_line1'] : '' ;?>">
                            </div>
                        </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="">Address 2</label>
                                    <input type="text" class="form-control" placeholder="Lane Name" name="add_line2" value="<?php echo isset($_POST['add_line2']) ? $_POST['add_line2'] : '' ;?>">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="">Postcode</label>
                                    <input type="text" class="form-control" name="post_code" value="<?php echo isset($_POST['post_code']) ? $_POST['post_code'] : '' ;?>">
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group checkBox">
                                    <input type="checkbox" id="isShippingAddress" name="chkShippingAddress" checked>
                                    <label for="isShippingAddress">My shipping is the same as my billing address.</label>
                                </div>
                            </div>

                            <div class="col-sm-12 shippingAddressBody">
                                    <h2>Enter your Billing Address</h2>
                                <div class="form-group">
                                    <label>
                                        Country
                                        <span class="required">*</span>
                                    </label>
                                    <select name="" id="" class="form-control">
                                        <option selected hidden>United Kingdom</option>
                                        <option>India</option>
                                        <option>Australia</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Region</label>
                                    <select name="" id="" class="form-control">
                                        <option selected hidden>United Kingdom</option>
                                        <option>W.B</option>
                                        <option>Australia</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Address 1</label>
                                    <input type="text" class="form-control" placeholder="House / Apartment Number">
                                </div>
                                <div class="form-group">
                                    <label for="">Address 2</label>
                                    <input type="text" class="form-control" placeholder="Lane Name">
                                </div>
                                <div class="form-group">
                                    <label for="">Postcode</label>
                                    <input type="text" class="form-control">
                                </div>
                            </div>

                         
                            <div class="col-lg-12">
                                <div class="btn-new">
                                    <button type="submit" name="normal_user" class="btn btn-primary">Create Account</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

</div>
</div>
</div>
</div>
</div>
<?php 
unset($_SESSION['err_msg']);
unset($_SESSION['succ_msg']);
session_destroy();
// ob_flush();
get_footer();
?>
