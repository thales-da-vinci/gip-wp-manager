<?php
/**
 * Plugin Name: GIP WP Manager
 * Description: Gerencie e automatize backups, deploys, atualizações e integrações remotas para sites criados com o GIP Framework.
 * Version: 2.0.0
 * Author: Thales Da Vinci
 * License: Proprietária
 */

if ( ! defined( 'ABSPATH' ) ) exit;

define( 'GIP_WPM_VERSION', '2.0.0' );
define( 'GIP_WPM_PATH', plugin_dir_path( __FILE__ ) );
define( 'GIP_WPM_URL', plugin_dir_url( __FILE__ ) );

// Inclui os arquivos principais
require_once GIP_WPM_PATH . 'includes/hooks.php';
require_once GIP_WPM_PATH . 'includes/functions.php';
require_once GIP_WPM_PATH . 'admin/menu.php';
