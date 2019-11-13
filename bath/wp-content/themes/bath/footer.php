<footer>
			<div class="container">
				<h2 class="section-title center">
					У вас остались вопросы?
				</h2>
				<?php
					global $phone_number_digits_only;
					global $phone_number_posts;
				?> 
				<p>Для получения подробной консультации или вызова мастера на дом позвоните по номеру телефона <a href="tel:<?php echo $phone_number_digits_only; ?>"><?php echo $phone_number_posts; ?></a> или заполните форму и мы сами перезвоним Вам</p>
				
				<div class="column-1-2">
					<a class="logo" href="#link-to-top">
						<img src="<?php echo get_theme_mod('img-upload'); ?>" width="77" height="35" alt="Реставрация ванн акрилом">
						<p>
							Реставрация ванн акрилом
							<span>в Перьми и Пермском крае</span>	
						</p>
					</a>
					
					<p>
						<?php echo get_theme_mod('site_description_textarea'); ?>
					</p>
					
					<a class="link-phone" href="tel:<?php echo $phone_number_digits_only; ?>"><?php echo $phone_number_posts; ?></a>
				</div>
				
				<div class="column-2-2">
					<h2>Оставить заявку</h2>
					<form action="#" method="post">
						<label>
							<span>Введите Ваш номер телефона:</span>
							<input type="tel" name="phone" placeholder="+7 (___) ___-__-__" required>
						</label>
						<button type="submit">Получить консультацию!</button>
					</form>
				</div>
			</div>
			
			<div class="footer-bottom">
				<div class="container">
					Все права защищены. Любое копирование преследуется по закону. Информация на сайте не является публичной офертой, определяемой положениями Статьи 437 ГК РФ
				</div>
			</div>
		</footer>