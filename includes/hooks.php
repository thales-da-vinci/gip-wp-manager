<?php
// GIP WP Manager Hooks

// Adiciona o menu principal no admin
add_action('admin_menu', function() {
    add_menu_page(
        'GIP WP Manager',
        'GIP WP Manager',
        'manage_options',
        'gip-wp-manager',
        'gip_wpm_render_dashboard',
        'dashicons-admin-tools',
        2
    );
});

// Função básica de dashboard
function gip_wpm_render_dashboard() {
    echo '<div class="wrap"><h1>GIP WP Manager</h1><p>Painel central de gerenciamento de sites WordPress.</p></div>';
}