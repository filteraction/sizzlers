<?php 
/*Template Name: Wholesale-Registration */
get_header();
// ob_start();
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);
$path = 'user.php';
include_once $path;

$user = new Register();
if (isset($_POST['trade_user'])) {
$user->create_trade_user_info($_POST);
}

?>

<!-- sidebar-social-media-area-starts -->
<div class="s-media">
    <a href="#" class="s-item facebook">
        <i class="fab fa-facebook-f"></i>
    </a>

    <a href="#" class="s-item twitter">
        <i class="fab fa-twitter"></i>
    </a>


    <a href="#" class="s-item pinterest">
        <i class="fab fa-pinterest"></i>
    </a>
    <a href="#" class="s-item email">
        <i class="fas fa-envelope"></i>
    </a>
    <a href="#" class="s-item share">
        <i class="fas fa-share-alt"></i>
    </a>

    <a id="sm-close" class="s-item print">
        <span class="fa fa-arrow-left"></span>
    </a>

</div>
<a id="sm-open" class="s-item print sm-collapse">
    <span class="fa fa-arrow-right"></span>
</a>

<!-- sidebar-social-media-area-end -->

<!-- breadcrumb-area-starts -->
<section id="breadcrumb">
    <div class="container">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><span>/</span></li>
            <li class="active">
                Request A Trade Account
            </li>
        </ul>
    </div>
</section>
<!-- breadcrumb-area-ends -->



<!-- trade-account-new-area-starts -->
<section class="update-trade-wrap">
    <div class="container">
        <div class="header-area">
            <h2>Request A Trade Account</h2>
            <p>To become a trade customer, please complete and submit the form below.</p>
              
        </div>
        <div class="trade-form-new">
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
            <form method="post" action="">
                <input type="hidden" name="action" value="my_action" />
                <input type="hidden" name="role" value="wholesaller">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-single">
                            <h4>Step 1</h4>
                           <div class="form-group">
                               <label>First Name*</label>
                                <input type="text" name="fname" value="<?php echo isset($_POST['fname']) ? $_POST['fname'] : '' ;?>" class="form-control" placeholder="">
                           </div>
                            <div class="form-group">
                                <label>Last Name*</label>
                                <input type="text" name="lname" class="form-control" placeholder="" value="<?php echo isset($_POST['lname']) ? $_POST['lname'] : '' ;?>">
                            </div>
                            <div class="form-group">
                                <label>Email Address*</label>
                                <input type="text" name="email" class="form-control" value="<?php echo isset($_POST['email']) ? $_POST['email'] : '' ;?>">
                            </div>
                            <div class="form-group">
                                <label>Password*</label>
                                <input type="password" name="password" class="form-control" value="<?php echo isset($_POST['password']) ? $_POST['password'] : '' ;?>">
                            </div>
                            <div class="form-group">
                                <label>Telephone*</label>
                                <input type="number" name="phone" value="<?php echo isset($_POST['phone']) ? $_POST['phone'] : '' ;?>" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-single">
                            <h4>Step 2</h4>
                            <div class="form-group">
                                <label>Business/Company Name*</label>
                                <input type="text" name="company" class="form-control" value="<?php echo isset($_POST['company']) ? $_POST['company'] : '' ;?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Company Website*</label>
                                <input type="text" name="web" value="<?php echo isset($_POST['web']) ? $_POST['web'] : '' ;?>" class="form-control" placeholder="">
                            </div>

                            <div class="form-group">
                                <label>Company Type*</label>
                                <select class="form-control" name="company_type">
                                    <option>Select Company Type</option>
                                    <option value="Limited" <?php echo (isset($_POST['company_type']) && $_POST['company_type'] === 'Limited') ? 'selected' : '';?>>Limited</option>
                                    <option value="Sole Trader" <?php echo (isset($_POST['company_type']) && $_POST['company_type'] === 'Sole Trader') ? 'selected' : '';?>>Sole Trader</option>
                                    <option value="Partnership" <?php echo (isset($_POST['company_type']) && $_POST['company_type'] === 'Partnership') ? 'selected' : '';?>>Partnership</option>
                                    <option value="Limited Partnership" <?php echo (isset($_POST['company_type']) && $_POST['company_type'] === 'Limited Partnership') ? 'selected' : '';?>>Limited Partnership</option>
                                    <option value="Public" <?php echo (isset($_POST['company_type']) && $_POST['company_type'] === 'option1') ? 'selected' : '';?>>Public</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Company Business Description</label>
                                <textarea class="form-control" name="msg" value="<?php echo isset($_POST['msg']) ? $_POST['msg'] : '' ;?>" placeholder=""></textarea>
                            </div>
                            <div class="form-group">
                                <label>Job Title </label>
                                <input type="text" name="job_title" value="<?php echo isset($_POST['job_title']) ? $_POST['job_title'] : '' ;?>" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-single">
                            <h4>Step 3</h4>
                            <h5>Registered Address</h5>
                            <div class="form-group">
                                <label>Address Line 1*</label>
                                <input type="text" name="add_line1" id="add_line1" class="form-control" value="<?php echo isset($_POST['add_line1']) ? $_POST['add_line1'] : '' ;?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Address Line 2</label>
                                <input type="text" name="add_line2" id="add_line2" class="form-control" value="<?php echo isset($_POST['add_line2']) ? $_POST['add_line2'] : '' ;?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Country/Province*</label>
                                <input type="text" name="country" id="country" class="form-control" value="<?php echo isset($_POST['country']) ? $_POST['country'] : '' ;?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Town</label>
                                <input type="text" name="town" id="town" class="form-control" value="<?php echo isset($_POST['town']) ? $_POST['town'] : '' ;?>" placeholder="">
                            </div>
                            <!-- <div class="form-group">
                                <label>Country*</label>
                                <input type="text" name="country" id="country" class="form-control" placeholder="">
                            </div> -->
                            <div class="form-group">
                                <label>Post Code*</label>
                                <input type="text" name="post_code" id="post_code" class="form-control" value="<?php echo isset($_POST['post_code']) ? $_POST['post_code'] : '' ;?>" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-single">
                            <h4>Step 4</h4>
                            <h5>Trading Address</h5>
                            <div class="form-group same-checkbox">
                                <label><input type="checkbox" name="checkShipping"  id="myCheck" onclick="myFunction()">Same as registered address</label>
                            </div>

                            <div class="form-group">
                                <label>Address Line 1*</label>
                                <input type="text" name="shipping_add_line1" class="form-control" id="shipping_add_line1" value="<?php echo isset($_POST['shipping_add_line1']) ? $_POST['shipping_add_line1'] : '' ;?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Address Line 2</label>
                                <input type="text" name="shipping_add_line2" class="form-control" id="shipping_add_line2" value="<?php echo isset($_POST['shipping_add_line2']) ? $_POST['shipping_add_line2'] : '' ;?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Country/Province*</label>
                                <input type="text" name="shipping_country" class="form-control" id="shipping_country" value="<?php echo isset($_POST['shipping_country']) ? $_POST['shipping_country'] : '' ;?>" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Town</label>
                                <input type="text" name="shipping_town" class="form-control" id="shipping_town" value="<?php echo isset($_POST['shipping_town']) ? $_POST['shipping_town'] : '' ;?>" placeholder="">
                            </div>
                            <!-- <div class="form-group">
                                <label>Country*</label>
                                <input type="text" class="form-control" placeholder="">
                            </div> -->
                            <div class="form-group">
                                <label>Post Code*</label>
                                <input type="text" name="shipping_post_code" value="<?php echo isset($_POST['shipping_post_code']) ? $_POST['shipping_post_code'] : '' ;?>" id="shipping_post_code" class="form-control" placeholder="">
                            </div>

                        </div>
                    </div>
                </div>
                <div class="btn-area">
                    <input type="submit" name="trade_user" class="btn-trade" value="Apply Now">
                </div>
            </form>
        </div>
    </div>
</section>
<!-- trade-account-new-area-end -->


<script type="text/javascript">
    

function myFunction() {
      // Get the checkbox
      var checkBox = document.getElementById("myCheck");
      // Get the output text
      var add_line1 = document.getElementById("add_line1").value;
      var add_line2 = document.getElementById("add_line2").value;
      var country = document.getElementById("country").value;
      var town = document.getElementById("town").value;
      var post_code = document.getElementById("post_code").value;

      // If the checkbox is checked, display the output text
    if (checkBox.checked == true){
        document.getElementById("shipping_add_line1").value = add_line1;
        document.getElementById("shipping_add_line2").value = add_line2;
        document.getElementById("shipping_country").value = country;   
        document.getElementById("shipping_town").value = town;
        document.getElementById("shipping_post_code").value = post_code;
    } else {
        document.getElementById("shipping_add_line1").value = "";
        document.getElementById("shipping_add_line2").value = "";
        document.getElementById("shipping_country").value = "";   
        document.getElementById("shipping_town").value = "";
        document.getElementById("shipping_post_code").value = "";
    }
}



</script>

<?php 

unset($_SESSION['err_msg']);
unset($_SESSION['succ_msg']);
session_destroy();
// ob_flush();
get_footer();?>