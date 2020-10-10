<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'sizzler' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '4YX0wxG~L%8=?M$:,8B;d2wrETVFxnF#!yOgQD+9;%kaYwUm`8O!dk)Sk|T0~pSQ' );
define( 'SECURE_AUTH_KEY',  '/@CW.&$*@+<4zM?T?Lb}kB1./cshgJ^+zqoHy<&jiM/W2{bv;+yUitTE+%8o8D;K' );
define( 'LOGGED_IN_KEY',    'd$7,$7q!AO)Z2K`mXlpC/)A]1wwL.N}Gh6TNZbiz|@?o>vYis8L:UN0!d(-yAGA ' );
define( 'NONCE_KEY',        'jRvcL|a}@x+p+5mmA])9CCVojE$gfzE?)5(x5JPtX1Hj]__/0`NMefg#p+uZ^2!q' );
define( 'AUTH_SALT',        'Sm@_%k&|OYwnA vpWa#_(:gi_% c18o+B9$]p#H_$NEO5xh-vIM`cj=p5JFXDMTz' );
define( 'SECURE_AUTH_SALT', 'MPB-h)?f[]>3rGB{]ddjECZ#gW0qbxmraSW1W0_{M[e)Wv1+%}cK:]pK,o)zp[~x' );
define( 'LOGGED_IN_SALT',   'u*=T{zwOl@tpAztKHI8UnQq!#)abBiODh1F%?ma/kg6etDv5a2p9hu3P84AZ`Xt=' );
define( 'NONCE_SALT',       'U(sNCgQw &irbk5Iz2Y+K~2OY !~t,`O.9j@|ywN>8boD181+,TN78Wb55ijzn)Y' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
// Enable WP_DEBUG mode
define('WP_DEBUG', true);
if ( WP_DEBUG ) {
    @error_reporting( E_ALL );
    @ini_set( 'log_errors', true );
    @ini_set( 'log_errors_max_len', '0' );

    define( 'WP_DEBUG_LOG', true ); // Enable Debug logging to the /wp-content/debug.log file
    define( 'WP_DEBUG_DISPLAY', false );
    @ini_set( 'display_errors', 0 );
    define( 'CONCATENATE_SCRIPTS', false );
    define( 'SAVEQUERIES', true );
    define( 'SCRIPT_DEBUG', false );
}

define('FS_METHOD','direct');

@ini_set( 'upload_max_size' , '64M' );
@ini_set( 'post_max_size', '64M');
@ini_set( 'max_execution_time', '300' );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
