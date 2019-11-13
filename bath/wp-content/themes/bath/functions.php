<?php
add_theme_support('post-thumbnails');
add_theme_support('menus');

add_action( 'init', 'create_post_type' );
function create_post_type(){
	register_post_type('phone_number', array(
		'labels' => array(
			'name'               => 'Номер телефона', // основное название для типа записи
			'singular_name'      => 'Номер телефона', // название для одной записи этого типа
			'add_new'            => 'Добавить номер телефона', // для добавления новой записи
			'add_new_item'       => 'Добавление номера телефона', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование номера телефона', // для редактирования типа записи
			'new_item'           => 'Новый номер телефона', // текст новой записи
			'view_item'          => 'Смотреть номер телефона', // для просмотра записи этого типа.
			'search_items'       => 'Искать номер телефона', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Номер телефона', // название меню
		),
		'public'              => true,
		'menu_position'       => 2,
		'menu_icon'           => 'dashicons-phone', 
		'supports'            => array('title'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	) );
	
	register_post_type('main_screen', array(
		'labels' => array(
			'name'               => 'Главный экран', // основное название для типа записи
			'singular_name'      => 'Главный экран', // название для одной записи этого типа
			'add_new'            => 'Добавить главный экран', // для добавления новой записи
			'add_new_item'       => 'Добавление главного экрана', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование главного экрана', // для редактирования типа записи
			'new_item'           => 'Новый главный экран', // текст новой записи
			'view_item'          => 'Смотреть главный экран', // для просмотра записи этого типа.
			'search_items'       => 'Искать главный экран', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Главный экран', // название меню
		),
		'public'              => true,

		'menu_position'       => 2,
		'menu_icon'           => 'dashicons-align-center', 
		'supports'            => array('title', 'custom-fields'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	) );
	
		register_post_type('discount', array(
		'labels' => array(
			'name'               => 'Скидка', // основное название для типа записи
			'singular_name'      => 'Скидка', // название для одной записи этого типа
			'add_new'            => 'Добавить скидку', // для добавления новой записи
			'add_new_item'       => 'Добавление скидки', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование скидки', // для редактирования типа записи
			'new_item'           => 'Новая скидка', // текст новой записи
			'view_item'          => 'Смотреть скидку', // для просмотра записи этого типа.
			'search_items'       => 'Искать скидку', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Скидка', // название меню
		),
		'public'              => true,
		'menu_position'       => 2,
		'menu_icon'           => 'dashicons-tag', 
		'supports'            => array('custom-fields'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	) );
	
	register_post_type('stock', array(
		'labels' => array(
			'name'               => 'Акция', // основное название для типа записи
			'singular_name'      => 'Акция', // название для одной записи этого типа
			'add_new'            => 'Добавить акцию', // для добавления новой записи
			'add_new_item'       => 'Добавление акции', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование акции', // для редактирования типа записи
			'new_item'           => 'Новая акция', // текст новой записи
			'view_item'          => 'Смотреть акцию', // для просмотра записи этого типа.
			'search_items'       => 'Искать акцию', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Акция', // название меню
		),
		'public'              => true,
		'menu_position'       => 2,
		'menu_icon'           => 'dashicons-megaphone', 
		'supports'            => array('title', 'editor'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	) );
	
		register_post_type('working_hours', array(
		'labels' => array(
			'name'               => 'Время работы', // основное название для типа записи
			'singular_name'      => 'Время работы', // название для одной записи этого типа
			'add_new'            => 'Добавить время работы', // для добавления новой записи
			'add_new_item'       => 'Добавление времени работы', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование времени работы', // для редактирования типа записи
			'new_item'           => 'Новое время работы', // текст новой записи
			'view_item'          => 'Смотреть время работы', // для просмотра записи этого типа.
			'search_items'       => 'Искать время работы', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Время работы', // название меню
		),
		'public'              => true,
		'menu_position'       => 3,
		'menu_icon'           => 'dashicons-clock', 
		'supports'            => array('title'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	) );
	
		register_post_type('advantages', array(
		'labels' => array(
			'name'               => 'Преимущества реставрации', // основное название для типа записи
			'singular_name'      => 'Преимущество реставрации', // название для одной записи этого типа
			'add_new'            => 'Добавить преимущество реставрации', // для добавления новой записи
			'add_new_item'       => 'Добавление преимущества реставрации', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование преимущества реставрации', // для редактирования типа записи
			'new_item'           => 'Новое преимущество реставрации', // текст новой записи
			'view_item'          => 'Смотреть преимущество реставрации', // для просмотра записи этого типа.
			'search_items'       => 'Искать преимущество реставрации', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Преимущества реставрации', // название меню
		),
		'public'              => true,
		'menu_position'       => 3,
		'menu_icon'           => 'dashicons-thumbs-up',
		'supports'            => array('editor'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	) );
	
	register_taxonomy('advantage_type', 'advantages', array(
		'label'                 => __('Type'), // определяется параметром $labels->name
		'labels'                => array(
			'name'              => 'Типы преимущества',
			'singular_name'     => 'Тип преимущества',
			'search_items'      => 'Искать тип преимущества',
			'all_items'         => 'Все типы преимущества',
			'view_item '        => 'Смотреть тип преимущества',
			'parent_item'       => 'Родительский тип преимущества',
			'parent_item_colon' => 'Родительский тип преимущества:',
			'edit_item'         => 'Редактировать тип преимущества',
			'update_item'       => 'Обновить тип преимущества',
			'add_new_item'      => 'Добавить новый тип преимущества',
			'new_item_name'     => 'Имя нового типа преимущества',
			'menu_name'         => 'Тип преимущества',
		),
		//'hierarchical'          => true,
	));
	
	register_post_type('prices', array(
		'labels' => array(
			'name'               => 'Цены', // основное название для типа записи
			'singular_name'      => 'Цена', // название для одной записи этого типа
			'add_new'            => 'Добавить цену', // для добавления новой записи
			'add_new_item'       => 'Добавление цены', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование цены', // для редактирования типа записи
			'new_item'           => 'Новая цены', // текст новой записи
			'view_item'          => 'Смотреть цену', // для просмотра записи этого типа.
			'search_items'       => 'Искать цену', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Цены', // название меню
		),
		'public'              => true,
		'menu_position'       => 3,
		'menu_icon'           => 'dashicons-cart',
		'supports'            => array('title', 'custom-fields', 'thumbnail'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	));
	
	register_post_type('work_examples', array(
		'labels' => array(
			'name'               => 'Примеры работ', // основное название для типа записи
			'singular_name'      => 'Пример работ', // название для одной записи этого типа
			'add_new'            => 'Добавить пример работ', // для добавления новой записи
			'add_new_item'       => 'Добавление примера работ', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование примера работ', // для редактирования типа записи
			'new_item'           => 'Новый пример работ', // текст новой записи
			'view_item'          => 'Смотреть пример работ', // для просмотра записи этого типа.
			'search_items'       => 'Искать пример работ', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Примеры работ', // название меню
		),
		'public'              => true,
		'menu_position'       => 3,
		'menu_icon'           => 'dashicons-image-flip-horizontal',
		'supports'            => array('custom-fields'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	));
	
	register_post_type('reviews', array(
		'labels' => array(
			'name'               => 'Отзывы', // основное название для типа записи
			'singular_name'      => 'Отзыв', // название для одной записи этого типа
			'add_new'            => 'Добавить отзыв', // для добавления новой записи
			'add_new_item'       => 'Добавление отзыва', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование отзыва', // для редактирования типа записи
			'new_item'           => 'Новый отзыв', // текст новой записи
			'view_item'          => 'Смотреть отзыв', // для просмотра записи этого типа.
			'search_items'       => 'Искать отзыв', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Отзывы', // название меню
		),
		'public'              => true,
		'menu_position'       => 3,
		'menu_icon'           => 'dashicons-media-text',
		'supports'            => array('custom-fields'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	));
	
	register_post_type('certificates', array(
		'labels' => array(
			'name'               => 'Сертификаты', // основное название для типа записи
			'singular_name'      => 'Сертификат', // название для одной записи этого типа
			'add_new'            => 'Добавить сертификат', // для добавления новой записи
			'add_new_item'       => 'Добавление сертификата', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование сертификата', // для редактирования типа записи
			'new_item'           => 'Новый сертификат', // текст новой записи
			'view_item'          => 'Смотреть сертификат', // для просмотра записи этого типа.
			'search_items'       => 'Искать сертификат', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Сертификаты', // название меню
		),
		'public'              => true,
		'menu_position'       => 3,
		'menu_icon'           => 'dashicons-pressthis',
		'supports'            => array('custom-fields'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	));
	
	register_post_type('questions', array(
		'labels' => array(
			'name'               => 'Часто задаваемые вопросы', // основное название для типа записи
			'singular_name'      => 'Вопрос', // название для одной записи этого типа
			'add_new'            => 'Добавить вопрос', // для добавления новой записи
			'add_new_item'       => 'Добавление вопроса', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование вопроса', // для редактирования типа записи
			'new_item'           => 'Новый вопрос', // текст новой записи
			'view_item'          => 'Смотреть вопрос', // для просмотра записи этого типа.
			'search_items'       => 'Искать вопрос', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Вопросы', // название меню
		),
		'public'              => true,
		'menu_position'       => 3,
		'menu_icon'           => 'dashicons-editor-help',
		'supports'            => array('custom-fields'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	));
	
	register_post_type('requests', array(
		'labels' => array(
			'name'               => 'Заявки', // основное название для типа записи
			'singular_name'      => 'Заявка', // название для одной записи этого типа
			'add_new'            => 'Добавить заявку', // для добавления новой записи
			'add_new_item'       => 'Добавление заявки', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование заявки', // для редактирования типа записи
			'new_item'           => 'Новая заявка', // текст новой записи
			'view_item'          => 'Смотреть заявку', // для просмотра записи этого типа.
			'search_items'       => 'Искать заявку', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'menu_name'          => 'Заявки', // название меню
		),
		'public'              => true,
		'menu_position'       => 3,
		'menu_icon'           => 'dashicons-groups',
		'supports'            => array('custom-fields'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
	));
}

function bath_scripts_and_styles(){
	wp_enqueue_style('bath-main', get_stylesheet_uri());
	wp_enqueue_style('bath-normalize-min', get_template_directory_uri() . '/css/normalize.min.css');
	wp_enqueue_style('bath-before-after-min', get_template_directory_uri() . '/css/before-after.min.css');
	wp_enqueue_style('bath-slick-theme', get_template_directory_uri() . '/css/slick-theme.css');
	wp_enqueue_style('bath-slick', get_template_directory_uri() . '/css/slick.css');
	wp_enqueue_style('bath-fonts', 'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;subset=cyrillic');
	
	wp_enqueue_script('bath-jquery-min', get_template_directory_uri() . '/js/jquery-3.1.1.min.js', array(), '3.1.1', true);
	wp_enqueue_script('bath-before-after-min', get_template_directory_uri() . '/js/before-after.min.js', array(), '', true);
	wp_enqueue_script('bath-slick', get_template_directory_uri() . '/js/slick.js', array(), '', true);
	wp_enqueue_script('bath-maskedInput', get_template_directory_uri() . '/js/maskedInput.js', array(), '', true);
	wp_enqueue_script('bath-main', get_template_directory_uri() . '/js/main.js', array(), '', true);
}
add_action('wp_enqueue_scripts', 'bath_scripts_and_styles');

class My_Walker_Nav_Menu extends Walker_Nav_Menu {

	/**
	 * Starts the element output.
	 *
	 * @since 3.0.0
	 * @since 4.4.0 The {@see 'nav_menu_item_args'} filter was added.
	 *
	 * @see Walker::start_el()
	 *
	 * @param string   $output Passed by reference. Used to append additional content.
	 * @param WP_Post  $item   Menu item data object.
	 * @param int      $depth  Depth of menu item. Used for padding.
	 * @param stdClass $args   An object of wp_nav_menu() arguments.
	 * @param int      $id     Current item ID.
	 */
	public function start_el( &$output, $item, $depth = 0, $args = array(), $id = 0 ) {
		if ( isset( $args->item_spacing ) && 'discard' === $args->item_spacing ) {
			$t = '';
			$n = '';
		} else {
			$t = "\t";
			$n = "\n";
		}
		$indent = ( $depth ) ? str_repeat( $t, $depth ) : '';

		$classes = empty( $item->classes ) ? array() : (array) $item->classes;
		$classes[] = 'menu-item-' . $item->ID;

		$args = apply_filters( 'nav_menu_item_args', $args, $item, $depth );

		$class_names = join( ' ', apply_filters( 'nav_menu_css_class', array_filter( $classes ), $item, $args, $depth ) );
		$class_names = $class_names ? ' class="' . esc_attr( $class_names ) . '"' : '';

		$id = apply_filters( 'nav_menu_item_id', 'menu-item-'. $item->ID, $item, $args, $depth );
		$id = $id ? ' id="' . esc_attr( $id ) . '"' : '';

		// создаем HTML код элемента меню
		$output .= $indent . '<li' . $id . $class_names .'>';

		$atts = array();
		$atts['title']  = ! empty( $item->attr_title ) ? $item->attr_title : '';
		$atts['target'] = ! empty( $item->target )     ? $item->target     : '';
		$atts['rel']    = ! empty( $item->xfn )        ? $item->xfn        : '';
		$atts['href']   = ! empty( $item->url )        ? $item->url        : '';

		$atts = apply_filters( 'nav_menu_link_attributes', $atts, $item, $args, $depth );

		$attributes = '';
		foreach ( $atts as $attr => $value ) {
			if ( ! empty( $value ) ) {
				$value = ( 'href' === $attr ) ? esc_url( $value ) : esc_attr( $value );
				$attributes .= ' ' . $attr . '="' . $value . '"';
			}
		}

		$title = apply_filters( 'the_title', $item->title, $item->ID );
		$title = apply_filters( 'nav_menu_item_title', $title, $item, $args, $depth );

		$item_output = $args->before;
		$item_output .= '<a'. $attributes .'>';
		$item_output .= $args->link_before . $title . $args->link_after;
		$item_output .= '</a>';
		$item_output .= $args->after;

		$output .= apply_filters( 'walker_nav_menu_start_el', $item_output, $item, $depth, $args );
	}

}

add_action( 'after_setup_theme', 'theme_register_nav_menu' );
function theme_register_nav_menu() {
	register_nav_menu( 'primary', 'Главное меню' );
}

/**
 * Добавление индивидуальных секций, опций и элементов управления к настройщику тем 
 */
//global $wp_customize;
function example_customizer( $wp_customize ) {
    $wp_customize->add_section(
        'example_section_one',
        array(
            'title' => 'Быстрые настройки',
            'description' => 'Это секция настроек некоторых небольших, но важных блоков сайта.',
            'priority' => 35,
        )
    );

    $wp_customize->add_setting(
    'site_name_textbox_1',
    array(
        'default' => 'Реставрация ванн акрилом',
    )
	);

	$wp_customize->add_setting(
    'site_name_textbox_2',
    array(
        'default' => 'в Перьми и Пермском крае',
    )
	);

	$wp_customize->add_setting(
    'site_description_textarea',
    array(
        'default' => 'Loream ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    )
	);

	$wp_customize->add_setting(
    'working_hours_textbox',
    array()
	);

	$wp_customize->add_setting(
    'phone_number_textbox',
    array()
	);

	$wp_customize->add_setting('img-upload');
	
	$wp_customize->add_control(
    new WP_Customize_Image_Control(
        $wp_customize,
        'img-upload',
        array(
            'label' => 'Загрузка изображения логотипа',
            'section' => 'example_section_one',
            'settings' => 'img-upload'
        )
    )
	);

	$wp_customize->add_control(
    'site_name_textbox_1',
    array(
        'label' => 'Часть названия сайта жирным шрифтом',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);

	$wp_customize->add_control(
    'site_name_textbox_2',
    array(
        'label' => 'Часть названия сайта мелким шрифтом',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);

	$wp_customize->add_control(
    'site_description_textarea',
    array(
        'label' => 'Описание сайта',
        'section' => 'example_section_one',
        'type' => 'textarea',
    )
	);

	$wp_customize->add_control(
    'working_hours_textbox',
    array(
        'label' => 'Время работы',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);

	$wp_customize->add_control(
    'phone_number_textbox',
    array(
        'label' => 'Номер телефона',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);
}
add_action( 'customize_register', 'example_customizer' );