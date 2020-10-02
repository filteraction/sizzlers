<?php 

class User{
    private $conn;
    public function __construct() {
        // error_reporting(E_ALL);
        session_start();

    }

    // public function __destruct() {
    //   $this->conn = null; 
    // }

}








// -----------------------------------------------------------------------



class Login extends User{
    public function __construct()
    {
        parent::__construct();
    }


    public function user_login_func($post_data=array()){
        // check_ajax_referer( 'ajax-nonce', 'security' );
      // print_r($post_data);
      if(isset($post_data['user_login'])){
        // if($post_data['user_login']) {
        global $wpdb;
        //We shall SQL escape all inputs
        $username = $wpdb->escape($post_data['login_username']);
        $password = $wpdb->escape($post_data['login_password']);
        $remember = $wpdb->escape($post_data['remember_me_checkbox']);
  
        // $username= trim($post_data['login_username']);
        // $password= trim($post_data['login_password']);
        // $remember= trim($post_data['remember_me_checkbox']);

        if($remember) $remember = "true";
        else $remember = "false";
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
          $results = $wpdb->get_row( "SELECT * FROM $user_table WHERE user_email='".$username."'");
          // var_dump($results);
                if($results->ID){

                  $activation_id = $results->ID;
                  $activation_key =  get_user_meta( $activation_id, 'has_to_be_activated', true );
                  $user_meta=get_userdata($results->ID);
                  
                  $user_roles=$user_meta->roles;
                    // print_r($results->user_status); 
                    if( $results->user_status == 0 ){
                    $response = array('return'=>'inactive','msg'=> '<div class="alert alert-danger alert-dismissable fade in">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Your account is inactive.</strong> Please contact to site the admin.</div> ');
                    }
                    else{ 
                    $user_verify = wp_signon( $login_data, $secure_cookie = '' ); 
                        wp_set_current_user($user_verify->ID);
                        wp_set_auth_cookie( $user_verify->ID, true, false );
                        do_action( 'wp_login', $username );
                        //wp_set_current_user($user->ID);
                            if ( is_wp_error($user_verify) ){
                            //loging falis
                            $response = array('return'=>'invalid','msg'=> '<div class="alert alert-danger alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong></strong>Invalid Username or Password...!</div> ');
                            } 
                            else {
                            //login success
                                  $post_id = esc_attr( get_option('login_redirect') ); //specify post id here
                                  $post = get_post($post_id); 
                                  $slug = $post->post_name;
                                  $page_slug = site_url($slug);
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

}