<?php
/*
Plugin Name: DB Clean Lite
Plugin URI: http://github.com/filteraction/
Description: DB Clean Lite can help you to clean up the wordpress database by removing revision, draft, auto, draft, moderated, comments, spam comments, trash comments, orphan postmeta, orphan commentmeta, orphan relationships, dashboard transient feed. It allows you to optimize your WordPress database without phpMyAdmin.
Version: 1.0.0
Author: Gopal Dasbairagya
Author URI: http://filteraction.com/
*/
function wp_dcl_settings_link($action_links,$plugin_file){
if($plugin_file==plugin_basename(__FILE__)){
$wcu_settings_link = '<a href="options-general.php?page=' . dirname(plugin_basename(__FILE__)) . '/dcl-admin.php">' . __("Settings") . '</a>';
array_unshift($action_links,$wcu_settings_link);
}
return $action_links;
}
add_filter('plugin_action_links','wp_dcl_settings_link',10,2);
if(is_admin()){require_once('dcl-admin.php');}
?>