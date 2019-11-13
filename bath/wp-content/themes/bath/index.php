<?php get_header(); ?>
		
		<main>
			
			<section id="link-to-top" class="sreen screen-1">

				<div class="fullsize-bg">
					<video poster="<?php bloginfo('template_url'); ?>/img/poster.jpg" preload="auto" autoplay="autoplay" loop="loop">
						<source src="video/video.mp4" type="video/mp4">
						<source src="video/video.webm" type="video/webm">
					</video>
				</div> 
				
				<div class="container">
					<h1>
						<?php
							// создаем экземпляр
							$my_posts = new WP_Query;

							// делаем запрос
							$myposts = $my_posts->query( array(
								'post_type' => 'main_screen'
							) );

							echo esc_html( $myposts[0]->post_title );
						?>
					</h1>
					<span><?php echo esc_html( $myposts[0]->subtitle ); ?></span>
					<p> 
					<?php
							$myposts = $my_posts->query( array(
								'post_type' => 'discount'
							));
							echo esc_html( $myposts[0]->discount_text );
					?></p>
				</div>
			</section>
			
			<?php
				$stock_posts = get_posts('post_type=stock');
				if(!empty($stock_posts)):
			?>
			<div class="screen screen-2">
				<div class="container">
					<div class="column-1-2">
						<b class="form-info">
						<?php
							echo esc_html( $stock_posts[0]->post_title );
						?>
						</b>
						<p class="form-info">
						<?php
							echo esc_html( $stock_posts[0]->post_content );
						?>
						</p>
						<p>
							Для получения скидки позвоните нам по номеру телефона
							<?php
								global $phone_number_digits_only;
								global $phone_number_posts;
							 ?> 
							<span><a href="tel:<?php echo $phone_number_digits_only; ?>"><?php echo $phone_number_posts; ?></a> или заполните форму и мы сами перезвоним Вам</span>
						</p>
					</div>
					
					<div class="column-1-2 form">
						<form class="form-discount" action="#" method="post">
							<label>
								<span>Введите Ваш номер телефона:</span>
								<input type="tel" name="phone" placeholder="+7 (___) ___-__-__" required>
							</label>
							<button type="submit">Получить сскидку!</button>
						</form>
					</div>
				</div>
			</div>
			<?php
				endif;
			?>
			
			<section id="link-screen-3" class="screen screen-3">
				<div class="container">
					
					<h2 class="section-title">В чем преимущества реставрации перед покупкой новой ванны?</h2>
					
					<article class="advantage money-box">
						<h2>Дешевле, чем купить новую ванну</h2>
						<p>
						<?php
							$newargs = array(
							 'post_type' => 'advantages',
							 'tax_query' => array(
							  array(
							   'taxonomy' => 'advantage_type',
							   'field' => 'name',
							   'terms' => 'Дешевле, чем купить новую ванну'
							  )
							 )
							);
							
							query_posts( $newargs );
							if(have_posts())
							{
								the_post();
								the_content();
							}
						?>
						</p>
					</article>
					
					<article class="advantage fast">
						<h2>Проще и быстрее, чем покупка новой ванны</h2>
						<p>
						<?php
							$newargs = array(
							 'post_type' => 'advantages',
							 'tax_query' => array(
							  array(
							   'taxonomy' => 'advantage_type',
							   'field' => 'name',
							   'terms' => 'Проще и быстрее, чем покупка новой ванны'
							  )
							 )
							);

							query_posts( $newargs );
							if(have_posts())
							{
								the_post();
								the_content();
							}
						?>
						</p>
					</article>
					
					<article class="advantage brush">
						<h2>Старая чугунная ванна надежнее, чем новая</h2>
						<p>
						<?php
							$newargs = array(
							 'post_type' => 'advantages',
							 'tax_query' => array(
							  array(
							   'taxonomy' => 'advantage_type',
							   'field' => 'name',
							   'terms' => 'Старая чугунная ванна надежнее, чем новая'
							  )
							 )
							);

							query_posts( $newargs );
							if(have_posts())
							{
								the_post();
								the_content();
							}
						?>
						</p>
					</article>
					
				</div>
			</section>
			
			<section id="link-screen-4" class="screen screen-4 rounds">
				<div class="container">
					<h2 class="section-title">Сколько стоит реставрация ванны?</h2>
					
					<div class="baths">
					
							<?php
								$the_query = new WP_Query(array( 'post_type' => 'prices', 'orderby' => 'post_date', 'order' => 'ASC'));
								// The Loop
								if ( $the_query->have_posts() ) {
									while ( $the_query->have_posts() ) {
										$the_query->the_post();
										echo '<article class="bath">
											<div class="bath-img">';
										the_post_thumbnail(array(358, 283));
										echo '</div>';
										echo '<h2>' . esc_html( get_the_title() ) . '</h2>';
										echo '<span>' . esc_html(get_field('price')) . '</span>';
										echo '<a class="btn-order">Заказать</a>
										</article>';
									}
								
									wp_reset_postdata();
								}
							?>	
												
					</div>
					
					<p><?php
							$myposts = $my_posts->query( array(
								'post_type' => 'discount'
							));
							echo esc_html( $myposts[0]->discount_text );
					?></p>
			
				</div>
			</section>
			
			<section id="link-screen-5" class="screen screen-5">
				<div class="container">
					<h2 class="section-title center">Почему Вам выгодно доверить реставрацию ванны именно нам?</h2>
					<div class="features">
						<div class="features-img">
							<img src="<?php bloginfo('template_url'); ?>/img/big-logo.jpg" width="257" height="111" alt="Ванна">						
						</div>	
						<ul>
							<li class="feature-1">Гарантируем низкую цену за счет закупки материала напрямую у производителя</li>
							<li class="feature-2">Работаем по договору, даем гарантию на 2 года</li>
							<li class="feature-3">Восстанавливаем трещины и сколы на покрытии ванны</li>
							<li class="feature-4">Реставрируем всего за 2 часа в день обращения</li>
							<li class="feature-5">Используем материалы, не имеющие сильного запаха</li>	
						</ul>
						
					</div>
				</div>
			</section>
			
			<div class="screen screen-2 consultation">
				<div class="container">
					<div class="column-1-2">
						<b class="form-info">Получите бесплатную консультацию специалиста
							по реставрации Вашей ванны прямо сейчас</b>
						<p>Для этого позвоните по номеру телефона <a href="tel:<?php echo $phone_number_digits_only; ?>"><?php echo $phone_number_posts; ?></a> или заполните форму и мы сами 	перезвоним Вам</p>
					</div>
					
					<div class="column-1-2 form">
						<form class="form-discount" action="#" method="post">
							<label>
								<span>Введите Ваш номер телефона:</span>
								<input type="tel" name="phone" placeholder="+7 (___) ___-__-__" required>
							</label>
							<button type="submit">Получить консультацию!</button>
						</form>
					</div>
				</div>
			</div>
			
			<section id="link-screen-7" class="screen screen-7 rounds">
				<div class="container">
					<h2 class="section-title center">Примеры наших работ, как доказательтво нашего профессионализма</h2>
										
					<div class="block-slider clearfix">
					<?php
								$the_query = new WP_Query(array( 'post_type' => 'work_examples'));
								// The Loop
								if ( $the_query->have_posts() ) {
									echo '<p>До реставрации</p><div class="regular slider slider-ba-slider">';
									while ( $the_query->have_posts() ) {
										$the_query->the_post();
										echo '<div>
													<div class="ba-slider">
														<img src="';
										echo get_field('before') . '" alt="Ванна">';
										echo '<div class="resize">
												<img src="';
										echo get_field('after') . '" alt="Ванна">';
										echo '</div>
											  <span class="handle"></span>
										  </div>
									</div>';
									}
								
									wp_reset_postdata();
									echo '</div><p>После реставрации</p>';
								}
					?>
					</div>
							
				</div>			
			</section>
			
			<section id="link-screen-8" class="screen screen-8">
				<div class="container">
					<h2 class="section-title center">Отзывы наших довольных клиентов</h2>
				</div>
				
				<div class="center">
					<?php
								$the_query = new WP_Query(array( 'post_type' => 'reviews'));
								// The Loop
								if ( $the_query->have_posts() ) {
									while ( $the_query->have_posts() ) {
										$the_query->the_post();
										
										echo '<div><p class="date">' . get_field('review_date') . '</p>';
										echo '<h2>' . get_field('name') . '<span>' . get_field('place_of_work') . '</span></h2>';
										echo '<p>' . get_field('review_short_description') . '</p>';
										echo '<a class="review" href="' . get_field('review_photo') . '">';
										echo '<img class="image" src="' . get_field('review_photo') . '" width="286" height="100" alt="Отзыв"></a></div>';
									}
								
									wp_reset_postdata();
								}
					?>
				</div>
				
				<div class="slick-controls"></div>

			</section>
			
			<div class="screen screen-2 want">
				<div class="container">
					<div class="column-1-2">
						<b class="form-info">Хотите также?</b>
						<p>Позвоните по номеру телефона <a href="tel:<?php echo $phone_number_digits_only; ?>"><?php echo $phone_number_posts; ?></a> <span>или заполните форму и мы сами 	перезвоним Вам</span></p>
					</div>
					
					<div class="column-1-2 form">
						<form class="form-discount" action="#" method="post">
							<label>
								<span>Введите Ваш номер телефона:</span>
								<input type="tel" name="phone" placeholder="+7 (___) ___-__-__" required>
							</label>
							<button type="submit">Отреставрируйте мою ванну!</button>
						</form>
					</div>
				</div>
			</div>
			
			<section id="link-screen-9" class="screen screen-9 rounds">
				<div class="container">
					<h2 class="section-title">Жидкий акрил - лучшее решение для реставрации ванны</h2>

					<div class="column-slider-1">
						<div class="slider-nav">
						<?php
								$the_query = new WP_Query(array( 'post_type' => 'certificates'));
								// The Loop
								if ( $the_query->have_posts() ) {
									while ( $the_query->have_posts() ) {
										$the_query->the_post();
										
										echo '<img src="' . get_field('certificate_image') . '" width="67" height="96" alt="Сертификат">';
									}
								
									wp_reset_postdata();
								}
						?>
						</div>
						
						<div class="slider-for">
						<?php
								$the_query = new WP_Query(array( 'post_type' => 'certificates'));
								// The Loop
								if ( $the_query->have_posts() ) {
									while ( $the_query->have_posts() ) {
										$the_query->the_post();
										
										echo '<a class="review" href="' . get_field('certificate_image') . '">';
										echo '<img src="' . get_field('certificate_image') . '" width="67" height="96" alt="Сертификат">';
										echo '</a>';
									}
								
									wp_reset_postdata();
								}
						?>
						</div>
					</div>
					
					<ul class="advantages">
						<li>Срок службы более 15 лет</li>
						<li>Время на подготовку и нанесение - всего 2 часа</li>
						<li>Полное застывание за 24 часа</li>
						<li>Минимальный, нерезкий и абсолютно безопасный запах, исчезающий через 2 часа после нанесения</li>
						<li>Высокая стойкость к химически активным веществам</li>
						<li>Изготовлен без растворителя</li>
						<li>Легкость в нанесении, отличная укрывистостьбез просветов</li>
						<li>Покрытие не имеет пор и не впитывает грязь, моется мягкой губкой и обычным мылом</li>
						<li>Экологически чист, не нет вредных выделений в процессе эксплуатации</li>
					</ul>
				</div>
			</section>
			
			<section id="link-screen-10" class="screen screen-10">
				<div class="container">
					<h2 class="section-title">
						Часто задаваемые вопросы
					</h2>
					<?php
								$the_query = new WP_Query(array( 'post_type' => 'questions'));
								// The Loop
								if ( $the_query->have_posts() ) {
									echo '<ul>';
									
									$count_posts = wp_count_posts( 'questions' )->publish;
									$first_column_of_questions = ceil ($count_posts/2);
									
									for($i = 0; $the_query->have_posts(); ++$i){
										$the_query->the_post();
										
										if($i == $first_column_of_questions)
										{
											echo '</ul><ul>';
										}
										
										echo '<li>';
										echo '<span>' . get_field('question_text') . '</span>';
										echo '<p>' . get_field('answer_text') . '</p>';
										echo '</li>';
									}
								
									wp_reset_postdata();
									
									echo '</ul>';
								}
					?>
				</div>
			</section>
		</main>
		
		<?php get_footer(); ?>
		
		<section class="popup-form form-call">
			<span class="btn-close">Закрыть</span>
			<h2>Закажите обратный звонок</h2>
			<p>Закажите звонок прямо сейчас и наш специалист перезвонит вам в течение 5 минут</p>
			
			<form action="#" method="post">
				<label>
					Введите Ваш номер телефона:
					<input type="tel" name="phone" placeholder="+7 (___) ___-__-__" required>
				</label>
				<button>Заказать звонок</button>
			</form>
		</section>
		
		<section class="popup-form form-master">
			<span class="btn-close">Закрыть</span>
			<h2>Вызовите мастера на дом</h2>
			<p>Заполните форму прямо сейчас и наш специалист перезвонит вам в течение 5 минут</p>
			
			<form action="#" method="post">
				<label>
					Введите Ваш номер телефона:
					<input type="tel" name="phone" placeholder="+7 (___) ___-__-__" required>
				</label>
				<button>Вызвать мастера на дом!</button>
			</form>
		</section>
		
		<?php wp_footer(); ?>
	</body>
</html>