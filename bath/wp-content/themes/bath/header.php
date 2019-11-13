<?php
	if (isset($_POST["phone"]))
	{
		$post_id = wp_insert_post(array (
		   'post_type' => 'requests',
		   'post_title' => $_POST["phone"],
		   'post_content' => 'random',
		));

		add_post_meta($post_id, 'client_phone_number', $_POST["phone"]);
	}
?>
<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
		
		<title>Наливные ванны</title>
				
		<style>
			.advantage::after {
				background-image: url(<?php bloginfo('template_url') ?>/img/money_box.png);
			}
			
			.advantage.fast::after {
				background-image: url(<?php bloginfo('template_url') ?>/img/fast.png);	
			}
			
			.advantage.brush::after {
				background-image: url(<?php bloginfo('template_url') ?>/img/brush.png);	
			}
			
			li.feature-1::before {
				background-image: url(<?php bloginfo('template_url') ?>/img/hand.png);
			}
			
			li.feature-2::before {
				left: 0;

				background-image: url(<?php bloginfo('template_url') ?>/img/document.png);
			}
			
			li.feature-3::before {
				left: 0;
		
				background-image: url(<?php bloginfo('template_url') ?>/img/lightning.png);
			}
			
			li.feature-4::before {
				top: 0;
				left: 50%;
				
				background-image: url(<?php bloginfo('template_url') ?>/img/hours.png);
				-webkit-transform: translateX(-50%);
				transform: translateX(-50%);
			}
			
			li.feature-5::before {
				background-image: url(<?php bloginfo('template_url') ?>/img/like.png);
			}
			
			.advantages li::before {
				background-image: url(<?php bloginfo('template_url') ?>/img/checkbox.png);
				background-repeat: no-repeat;
			}
			
			.screen-10 li span::after {
				background-image: url(<?php bloginfo('template_url') ?>/img/question.png);
			}
			
			.screen-10 li.show span::after {			
				background-image: url(<?php bloginfo('template_url') ?>/img/question-active.png);
			}
		</style>
		<?php wp_head(); ?>
	</head>
	<body>
		<header>
			<div class="header-top">
				<div class="container">
					<a class="logo" href="#screen-to-top">
						<img src="<?php echo get_theme_mod('img-upload'); ?>" width="77" height="35" alt="Реставрация ванн акрилом">
						<p>
							<?php echo get_theme_mod( 'site_name_textbox_1', 'Реставрация ванн акрилом' ); ?>
							<span><?php echo get_theme_mod('site_name_textbox_2', 'в Перьми и Пермском крае'); ?></span>
						</p>
					</a>

					<?php
						//$working_hours_posts = get_posts('post_type=working_hours');
						//if(!empty($working_hours_posts)):
					?>
					<div class="shedule">
						<p>
							Работаем:
							<span><?php /*echo $working_hours_posts[0]->post_title*/echo get_theme_mod('working_hours_textbox'); ?></span>
						</p>
					</div>
					<?php //endif; ?>

					<div class="application">
						<p>
							Приём заявок на сайте:
							<span>круглосуточно</span>
						</p>
					</div>

					<div class="phones">
					<?php
						global $phone_number_posts;
						global $phone_number_digits_only;
						//$phone_number_posts = get_posts('post_type=phone_number');
						//$phone_number_digits_only = preg_replace('~[^0-9]+~','', $phone_number_posts);
						//$phone_number_posts = array(get_theme_mod('phone_number_textbox'));

						$phone_number_posts = get_theme_mod('phone_number_textbox');
						$phone_number_digits_only = preg_replace('~[^0-9]+~','', $phone_number_posts);

						if(!empty($phone_number_posts)):

					?>
						<a class="link-phone" href="tel:<?php echo $phone_number_digits_only; ?>"><?php echo $phone_number_posts; ?></a>	
					<?php endif; ?>
						<a class="btn-call">Перезвоните мне!</a>
					</div>
					
					<button class="mobile-menu" type="button"><span>menu</span></button>
				</div>
			</div>
			
			<div class="header-menu">
				<div class="container">
					<nav>
						<!--<ul>
							<li><a href="#link-to-top">Наверх</a></li>
							<li><a href="#link-screen-3">Преимущества реставрации ванн</a></li>
							<li><a href="#link-screen-4">Цены</a></li>
							<li><a href="#link-screen-5">Наши преимущества</a></li>
							<li><a href="#link-screen-7">Примеры работ</a></li>
							<li><a href="#link-screen-8">Отзывы</a></li>
							<li><a href="#link-screen-10">Вопрос-ответ</a></li>
						</ul>-->
						<?php
							wp_nav_menu( array(
								'theme_location' => 'primary',
								'walker'         => new My_Walker_Nav_Menu(),
								'container'      => false,
							) );
						?>
					</nav>

					<a class="btn-master">Вызвать мастера</a>
				</div>
			</div>

			<?php
				//Скрываем, если нужно, секции страницы в соответствии с пунктами меню
				$all_sections_urls = array(
					'#link-to-top',
					'#link-screen-3',
					'#link-screen-4',
					'#link-screen-5',
					'#link-screen-7',
					'#link-screen-8',
					'#link-screen-10',
				);

				//$keys = array_keys($all_sections_hrefs);

				$menu = wp_get_nav_menu_object('Главное меню'); // получаем объект меню

				$menu_items = wp_get_nav_menu_items( $menu ); // получаем элементы меню
				$menu_urls = array();

					// создаем список
					//$menu_list = '<ul id="menu-' . $menu_name . '">';

					foreach ( (array) $menu_items as $key => $menu_item ){
						//$menu_list .= '<li><a href="' . $menu_item->url . '">' . $menu_item->title . '</a></li>';
						array_push($menu_urls, $menu_item->url);

						/*if(!in_array("$menu_item->url", $keys))
						{
							echo '<style>.' . echo $all_sections_hrefs[]'</style>';
						}*/
					}

					foreach ($all_sections_urls as $section_url){
						if(!in_array($section_url, $menu_urls))
						{
							echo '<style>' . $section_url . ' {display: none;}</style>';
						}
					}					
			?>
		</header>