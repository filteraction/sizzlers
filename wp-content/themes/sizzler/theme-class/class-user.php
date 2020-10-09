<?php
class User{
    public function __construct()
    {
        session_start();
    }
    // User Registration
    public function sizzler_create_user($post_data=array()){
      if(isset($post_data['sizzler_create_user'])){
        $save_value = array();
        $from_name = get_bloginfo('name');
        $from_email = get_bloginfo('admin_email');
        $uname= trim($post_data['uname'])??"";
        if(!empty($uname)){
        $name = explode(" ",$uname);
        $fname= trim($name[0]);
        $lname= trim($name[1]);
        }
        $email= trim($post_data['uemail'])??"";
        $password= trim($post_data['password'])??"";
        $cpassword= trim($post_data['cpassword'])??"";
        if (empty($uname)) {
            $err_msg = "User full name is required";
        } elseif (empty($email)) {
            $err_msg = "Email is required";
        } elseif (empty($password)) {
            $err_msg = "Password is required";
        }elseif (empty($cpassword)) {
            $err_msg = "Confirm password is required";
        }elseif ($cpassword!=$password) {
            $err_msg = "Password doesn't match";
        }elseif(email_exists($email)){
        $err_msg = '<div class="alert alert-danger" role="alert">
        <button style="width: 50px" type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <strong>Oh snap!</strong> This email already exists.
        </div>';
        // return $save_value;
        }elseif(username_exists($fname)){
        $err_msg = '<div class="alert alert-danger" role="alert">
        <button style="width: 50px" type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <strong>Oh snap!</strong> User already exists.
        </div>';
        // return $save_value;
        }

        if (!isset($err_msg)) {
            $user_id = wp_insert_user(array(
                            'user_login'    =>  $fname,
                            'user_pass'     =>  $password,
                            'first_name'    =>  $fname,
                            'user_email'    =>  $email,
                            'display_name'  =>  $fname,
                            'nickname'      =>  $fname,
                            'user_status'   =>  0,
                            'role'      =>  'subscriber'
                            )
                            );

            if ($user_id) {
                    $code = sha1( $user_id . time() );
                    // $activation_link = add_query_arg( array( 'key' => $code, 'user' => $user_id ), get_permalink(288));
                    // add_user_meta( $user_id, 'has_to_be_activated', $code, true );
                    $user_name=  sanitize_title_with_dashes($fname);
               
                    global $wpdb;
                    $status = 1;
                    $user_table =  $wpdb->prefix . "users";
                    $wpdb->update($user_table, array('user_status'=>$status), array('ID'=>$user_id));
                    /*******************first mail to user - start **************************/
                    $full_name = $fname . ' ' . $lname;
                    $fullname = ucwords(strtolower($user_name));
                    $subject = "Welcome to ".$from_name;
                    $message = '<p>Dear '. $full_name.'!</p><p></p><p>You have successfully created an account to our Website.<br>Your Email: '.$email.'<br> Your password is : '.$password;
                    // if('yes' == get_option('alrl_email_activation')){

                    // $message .='<br>To activate your acount click on the folowing link: '.$activation_link;
                    // }
                    //Headers
                    $headers  = 'MIME-Version: 1.0' . "\r\n";
                    $headers .= 'Content-type: text/html; charset=UTF-8' . "\r\n";
                    if(!empty($from_email) && filter_var($from_email,FILTER_VALIDATE_EMAIL))//Validating From
                    $headers .= "From: ".$from_name." <".$from_email."> \r\n";
                    $reply_email = $from_email;
                    if($reply_email){
                    $headers .= "Reply-To: {$reply_email}\r\n";
                    $headers .= "Return-Path: {$from_name}\r\n";
                    }
                    wp_mail($email, $subject, $message , $headers);
                    /******************* ! Mail to user - end **********************/
                    /*************** Mail to admin - start ****************************/
                    $subject = $from_name."- New customer registration request";
                    $message    = '<p>Dear Admin,</p><p>'.$full_name.' is registered in our website!</p><br>User Details are:<br> Name: '.$full_name.'<br>Email: '.$email.'<br>'
                    . '<p>Best Wishes,<br>Team '.$from_name;
                    wp_mail($from_email, $subject, $message , $headers);
                    /**************** Mail to admin - end ****************************/
                  
                    // $reg_msg = (!empty(get_option('reg_success_msg'))) ? esc_attr( get_option('reg_success_msg') ): 'Registration successfull. Please check your mail for confirmation.'; 
                    $reg_msg = 'Registration successfull. Please check your mail for confirmation.';
                    $save_value[0]='success';
                    $save_value[1] = '<div class="alert alert-success" role="alert">
                    <button style="width: 50px" type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'.$reg_msg.'</div>';
                    // $save_value[3]= $activation_link;


                $_SESSION['succ_msg']=$save_value[1];


                //auto login after registration
                    // $user = get_user_by( 'id', $user_id );
                    // wp_set_current_user($user_id); // set the current wp user
                    // wp_set_auth_cookie($user_id, true, false); 
                    // do_action( 'wp_login', $user->user_login );


                $post_data=array();
                unset($post_data);


                // header("refresh:1, index.php");
                // $redirect = isset( $_SERVER['HTTP_REFERER'] ) ? $_SERVER['HTTP_REFERER'] : home_url( '/' );

                /*if(!empty($redirect_to_checkout)){
                    ?>
                    <script type="text/javascript">
                        
                        window.location.replace("<?php echo site_url('checkout');?>");
                    </script>
                    <?php
                     
                }*/
                

            } else {
                $err_msg = "Oops! Something went wrong";
            }
            
        }
        else{
          $_SESSION['err_msg']=$err_msg;

        }
              
        
      } //end outer most if

    } //end function


    //User Login
    public function sizzler_user_login($post_data=array()){
        // check_ajax_referer( 'ajax-nonce', 'security' );
      // print_r($post_data);
      // die;
      if(isset($post_data['sizzler_user_login'])){
        global $wpdb;
        $username= trim($post_data['login_username']);
        $password= trim($post_data['login_password']);
        $remember= !empty($post_data['remember_me_checkbox']) ? true : false;
        $login_data = array();
        $response =array();
        
        if (empty($username)) {
            $err_msg = "Username is required";
        } elseif (empty($password)) {
            $err_msg = "Password is required";
        } 
        if (!isset($err_msg)) {
          $login_data['user_login'] = $username;
          $login_data['user_password'] = $password;
          $login_data['remember'] = $remember;

          $user_table = $wpdb->prefix . 'users';
          $query = "SELECT * FROM $user_table WHERE user_email = '$username' OR user_login = '$username'";
          $results = $wpdb->get_row($query);
                if($results){
                  $activation_id = $results->ID;
                  $activation_key =  get_user_meta( $activation_id, 'user_activation_key', true );
                  $user_meta=get_userdata($results->ID);
               
                  $user_roles=$user_meta->roles;
                    
                    if( $results->user_status == 0 ){
                    $response = array('return'=>'inactive','msg'=> '<div class = "alert alert-danger alert-dismissable">
                                   <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
                                      &times;
                                   </button><strong>Your account is inactive.</strong> Please contact to site the admin.</div>');
                       // print_r($response); 
                    }
                    else{ 
                        $user_verify = wp_signon( $login_data, $secure_cookie = '' ); 
                        if ( is_wp_error($user_verify) ){
                        //loging falis
                        $response = array('return'=>'invalid','msg'=> '<div class="alert alert-danger alert-dismissable">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong></strong>Invalid Username or Password</div> ');
                        } 
                        else {
                        //login success
                              wp_set_current_user($user_verify->ID);
                              wp_set_auth_cookie( $user_verify->ID, true, false );
                              do_action( 'wp_login', $username );
                              $page_slug = site_url('home');
                              $login_redirect = (!empty(get_option('login_redirect'))) ? $page_slug : home_url();
                              $msg = (!empty(get_option('log_success_msg'))) ? esc_attr( get_option('log_success_msg') ): 'Login successfull. Redirecting...!';
                          $response = array('return'=>'true','redirect' => $login_redirect, 'msg'=> '<div class="alert alert-success alert-dismissable fade in">
                          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                          <strong></strong>'.$msg.'</div>');
                          
                          }
                    }

                    // print_r($response);

                    $_SESSION['succ_msg'] = $response['msg'];
                // unset($post_data['create_user']);


                }//end result if


                else{
                  $err_msg = "User does not exits! ";
                  $_SESSION['err_msg'] = $err_msg;
                }
      
        }

        else{
          $_SESSION['err_msg'] = $err_msg;
        }

      } //end $_post if
  }
//forgot password
public function sizzler_forgot_password($post_data=array()){
var_dump($post_data);
// die;
global $wpdb;
    $error = '';
    $success = '';
    $response =array();
    // check if we're in reset form
    if( isset( $post_data['sizzler_forgot_password'] ))
    {
    $email = trim($_POST['login_username']);
    if( empty( $email ) ) {
    $err_msg = 'Enter a username or e-mail address..';
    $response = array('return'=>'invalid','msg'=> '<div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong></strong>Enter a username or e-mail address..!</div> ');
    } else if( ! is_email( $email )) {
    $err_msg = 'Invalid username or e-mail address.';
    $response = array('return'=>'invalid','msg'=> '<div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong></strong>Invalid username or e-mail address </div>');
    } else if( ! email_exists( $email ) ) {
    $err_msg = 'There is no user registered with that email address.';
    $response = array('return'=>'invalid','msg'=> '<div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong></strong>There is no user registered with that email address.</div> ');
    } else {
    $random_password = wp_generate_password( 12, false );
    $user = get_user_by( 'email', $email );
    $update_user = wp_update_user( array (
    'ID' => $user->ID,
    'user_pass' => $random_password
    )
    );
    // if  update user return true then lets send user an email containing the new password
    if( $update_user ) {
    $to = $email;
    $subject = 'Your new password';
    $sender = get_option('name');
    $message = 'Your new password is: '.$random_password;
    $headers[] = 'MIME-Version: 1.0' . "\r\n";
    $headers[] = 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
    $headers[] = "X-Mailer: PHP \r\n";
    $headers[] = 'From: '.$sender.' < '.$email.'>' . "\r\n";
    $mail = wp_mail( $to, $subject, $message, $headers );
    if( $mail )
    $success = 'Check your email address for you new password.';
    $response = array('return'=>'ok','msg'=> '<div class="alert alert-success alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong></strong>Check your email address for you new password.</div> ');
    } else {
    $error = 'Oops something went wrong updaing your account.';
    $response = array('return'=>'updatefailed','msg'=> '<div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong></strong>Oops something went wrong updaing your account.</div> ');
    }
    }

}
print_r($response);
$_SESSION['msg'] = $response['msg'];
}

} //end class

?>