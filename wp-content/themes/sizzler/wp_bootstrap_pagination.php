<?php
function wp_bootstrap_pagination( $args = array() ) {
$text_domain = null;    
$defaults = array(
    'range'           => 4,
    'custom_query'    => FALSE,
    'previous_string' => __( '&laquo;', $text_domain ),
    'next_string'     => __( '&raquo;', $text_domain ),
    // 'first_string'    => __( 'First', $text_domain),
    // 'last_string'     => __( 'Last', $text_domain),
    'before_output'   => '<div class="pagination">',//customize according to your class
    'after_output'    => '</div>'//customize according to your class
);

$args = wp_parse_args(
    $args,
    apply_filters( 'wp_bootstrap_pagination_defaults', $defaults )
);

$args['range'] = (int) $args['range'] - 1;
if ( !$args['custom_query'] )
    $args['custom_query'] = @$GLOBALS['wp_query'];
$count = (int) $args['custom_query']->max_num_pages;
$page  = intval( get_query_var( 'paged' ) );
$ceil  = ceil( $args['range'] / 2 );

if ( $count <= 1 )
    return FALSE;

if ( !$page )
    $page = 1;

if ( $count > $args['range'] ) {
    if ( $page <= $args['range'] ) {
        $min = 1;
        $max = $args['range'] + 1;
    } elseif ( $page >= ($count - $ceil) ) {
        $min = $count - $args['range'];
        $max = $count;
    } elseif ( $page >= $args['range'] && $page < ($count - $ceil) ) {
        $min = $page - $ceil;
        $max = $page + $ceil;
    }
} else {
    $min = 1;
    $max = $count;
}

$echo = '';
$previous = intval($page) - 1;
$previous = esc_attr( get_pagenum_link($previous) );

//$firstpage = esc_attr( get_pagenum_link(1) );
// if ( $firstpage && (1 != $page || true) )
//     $echo .= '<a class="previous'.($page == 1 ? ' disabled' : '').'" href="' . $firstpage . '" aria-label="'.__( 'First', $text_domain ).'">' . $args['first_string'] . '</a>';

if ( $previous && (1 != $page || true) )
    $echo .= '<a class="previous'.($page == 1 ? ' disabled' : '').'" href="' . $previous . '" title="' . __( 'previous', $text_domain) . '" aria-label="' . __( 'previous', $text_domain) . '">' . $args['previous_string'] . '</a></li>';

if ( !empty($min) && !empty($max) ) {
    for( $i = $min; $i <= $max; $i++ ) {
        if ($page == $i) {
            //$echo .= '<li class="active"><span class="active">' . str_pad( (int)$i, 2, '0', STR_PAD_LEFT ) . '</span></li>';
            $echo .= sprintf( '<a class="active" href="%s">%d</a>', esc_attr( get_pagenum_link($i) ), $i );
        } else {
            $echo .= sprintf( '<a href="%s">%d</a>', esc_attr( get_pagenum_link($i) ), $i );
        }
    }
}

$next = intval($page) + 1;
$next = esc_attr( get_pagenum_link($next) );
if ($next && ($count != $page || true) )
    $echo .= '<a '.($page == $count ? ' class="disabled"' : '').' href="' . $next . '" title="' . __( 'next', $text_domain) . '" aria-label="' . __( 'next', $text_domain) . '">' . $args['next_string'] . '</a>';

//$lastpage = esc_attr( get_pagenum_link($count) );
// if ( $lastpage ) {
//     $echo .= '<li class="next'.($page == $count ? ' disabled' : '').'"><a href="' . $lastpage . '" aria-label="' . __( 'Last', $text_domain) . '">' . $args['last_string'] . '</a></li>';
// }
if ( isset($echo) )
    echo $args['before_output'] . $echo . $args['after_output'];
}