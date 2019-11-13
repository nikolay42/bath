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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'bath');

/** MySQL database username */
define('DB_USER', 'mysql');

/** MySQL database password */
define('DB_PASSWORD', 'mysql');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '^6<iLoAewz[YMn# pV#^B)}>0>T%(lT|W<=@2rz0F]^jXC; DnZ:l0HekBz#qVN9');
define('SECURE_AUTH_KEY',  '*BP -@SMPJ+]?*b,c%#,o5M<{A5Wk[K pky[jZ >^&aVd(hCk,K*.#t]T@iL)qit');
define('LOGGED_IN_KEY',    '6n_t?JLHTlB=b&iX{BU^7NJ/_rbS)o>#7&rb}{rsWG]{Ykt~[(L`@|)wJSF-0/}j');
define('NONCE_KEY',        ')E24(;ws]a!U*Dpz:W66+3,HRI=2ME^.uv1w(#^}VgqjVvTRuk0TXb+_|+_?^[/g');
define('AUTH_SALT',        '%EB}v_U~Y=+4/]#:_}7Istb0Bzv:X{wl_0nirtgb$|tP>{$c(76ipLKL;deo[SgF');
define('SECURE_AUTH_SALT', 'PI<s[Ian6/MI@s8)Y#sZMn3XMVQiK;Q)0N^$x~4%+8P7p}w:0X#x**y$Er 2()b/');
define('LOGGED_IN_SALT',   '~}CQt?I3v4<Vc?$EUe<Z|3XG.bD`4=mO,{X5`!y[FHE%ilNj(n*[%bfDZw|r729x');
define('NONCE_SALT',       ';,kEv4I`G[(9LwSV0Tb!( bZi6vnhHgurq|a13qJAh@YMe@n988:x}ehi>5bG^BZ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
