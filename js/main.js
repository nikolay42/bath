
$(".regular").slick({
	draggable: false,
	touchMove: false,
	dots: false,
	infinite: true,
	slidesToShow: 1,
	slidesToScroll: 1
});

$(".screen-8 .center").slick({
	draggable: true,
	dots: true,
	centerMode: true,
	slidesToShow: 3,
	slidesToScroll: 1,
	responsive: [
		{
			breakpoint: 1200,
			settings: {
				centerMode: true,
				slidesToShow: 1
			}
		},
		
		{
			breakpoint: 992,
			settings: {
				centerMode: true,
				slidesToShow: 1
			}
		},
		
		{
			breakpoint: 768,
			settings: {
				centerMode: false,
				slidesToShow: 1
			}
			
		}
	]

});

$('.slider-for').slick({
	slidesToShow: 1,
	slidesToScroll: 1,
	arrows: false,
	fade: true,
	asNavFor: '.slider-nav'
});

$('.slider-nav').slick({
	slidesToShow: 3,
	slidesToScroll: 1,
	asNavFor: '.slider-for',
	dots: false,
	arrows: true,
	/*centerMode: true,*/
	focusOnSelect: true,
	vertical: true,
	verticalSwiping: true
});

/*$(".screen-9 .center").slick({
	draggable: true,
	dots: false,
	centerMode: true,
	slidesToScroll: 3,
	slidesToScroll: 1,
	vertical: true,
	verticalSwiping: true
})*/

var $controls_coord = innerWidth/2 - $(".screen-8 .slick-dots").width()/2 - 30;

$(".screen-8 .slick-prev").css("left", $controls_coord);	
$(".screen-8 .slick-next").css("right", $controls_coord);	

var ba_slider = document.querySelectorAll(".ba-slider");
var ba_slider_arr = [ba_slider.length];

for(var i = 0; i < ba_slider.length; i++) {
	ba_slider_arr[i] = ba_slider.item(i);
}

ba_slider_arr.forEach(function(ba_slider, i, ba_slider_arr) {
	$(ba_slider).beforeAfter();
});

/* Увеличение картинки */
$(document).ready(function() { // Ждём загрузки страницы
	$(".review").click(function(evt) {
		evt.preventDefault();
		var src = this.getAttribute("href");
		// Достаем из этого изображения путь до картинки
		$("body").append("<div class='popup'>"+ //Добавляем в тело документа разметку всплывающего окна
						 "<div class='popup_bg'></div>"+ // Блок, который будет служить фоном затемненным
						 "<img src='"+src+"' class='popup_img' />"+ // Само увеличенное фото
						 "</div>"); 
		$(".popup").fadeIn(800); // Медленно выводим изображение
		$(".popup").click(function(){	// Событие клика на затемненный фон	   
			$(".popup").fadeOut(800);	// Медленно убираем всплывающее окно
			setTimeout(function() {	// Выставляем таймер
			  $(".popup").remove(); // Удаляем разметку всплывающего окна
			}, 800);
		});
	});
	
	var li_node = document.querySelectorAll(".screen-10 ul li");
	var li_arr = [li_node.length];
	
	for(var i = 0; i < li_node.length; i++) {
		li_arr[i] = li_node.item(i);
	}
	
	li_arr.forEach(function(li, i, li_arr) {
		li.addEventListener("click", function(evt) {
			this.classList.toggle("show");
		});
	})
	
	
	var menu_btn = document.querySelector(".mobile-menu");
	var header = document.querySelector(".header-menu .container");
	
	menu_btn.addEventListener("click", function(evt) {
		header.classList.toggle("show");
	})
	
	$('a[href^="#"]').click(function(){
		//Сохраняем значение атрибута href в переменной:
		var target = $(this).attr('href');
		$('html, body').animate({scrollTop: $(target).offset().top - 100}, 800);
		return false;
	});
	
	$(".btn-call").click(function(evt) {
		evt.preventDefault();

		var src = $(".popup-form.form-call");

		$(src).css("display", "block");
		
		// Достаем из этого изображения путь до картинки
		$("body").append("<div class='popup'>"+ //Добавляем в тело документа разметку всплывающего окна
						 "<div class='popup_bg'></div>"+ // Блок, который будет служить фоном затемненным
						// Форма
						 "</div>"); 
		
		$(src).fadeIn(600);

		$(".popup").fadeIn(800); // Медленно выводим изображение
		$(".popup").click(function(){	// Событие клика на затемненный фон	   
			$(".popup").fadeOut(800);	// Медленно убираем всплывающее окно
			$(src).fadeOut(600);
			$(src).css("display", "none");
			setTimeout(function() {	// Выставляем таймер
			  $(".popup").remove(); // Удаляем разметку всплывающего окна
			}, 800);
		});
		
		$(".btn-close").click(function(){	// Событие клика на затемненный фон	   
			evt.preventDefault();
			$(src).fadeOut(600);
			$(".popup").fadeOut(800);	// Медленно убираем всплывающее окно
			
			setTimeout(function() {	// Выставляем таймер
				$(src).css("display", "none");
				$(".popup").remove(); // Удаляем разметку всплывающего окна
			}, 800);
		});
	});
	
	$(".btn-master").click(function(evt) {
		evt.preventDefault();

		$(src).css("display", "block");

		var src = $(".popup-form.form-master");
		// Достаем из этого изображения путь до картинки
		$("body").append("<div class='popup'>"+ //Добавляем в тело документа разметку всплывающего окна
						 "<div class='popup_bg'></div>"+ // Блок, который будет служить фоном затемненным
						 "</div>"); 
		
		$(src).fadeIn(600);		
		
		$(".popup").fadeIn(800); // Медленно выводим изображение
		$(".popup").click(function(){	// Событие клика на затемненный фон	   
			$(src).fadeOut(600);
			$(".popup").fadeOut(800);	// Медленно убираем всплывающее окно
			$(src).css("display", "none");
			setTimeout(function() {	// Выставляем таймер
			  $(".popup").remove(); // Удаляем разметку всплывающего окна
			}, 800);
		});
		
		$(".btn-close").click(function(){	// Событие клика на затемненный фон	   
			evt.preventDefault();
			$(".popup").fadeOut(800);	// Медленно убираем всплывающее окно
			$(src).fadeOut(600);
			setTimeout(function() {	// Выставляем таймер
				$(src).css("display", "none");
				$(".popup").remove(); // Удаляем разметку всплывающего окна
			}, 800);
		});
	});
	
	$("a.btn-order").click(function(event) {
		event.preventDefault()
		
		$(src).css("display", "block");

		var src = $(".popup-form.form-master");
		// Достаем из этого изображения путь до картинки
		$("body").append("<div class='popup'>"+ //Добавляем в тело документа разметку всплывающего окна
						 "<div class='popup_bg'></div>"+ // Блок, который будет служить фоном затемненным
						 "</div>"); 
		
		$(src).fadeIn(600);		
		
		$(".popup").fadeIn(800); // Медленно выводим изображение
		$(".popup").click(function(){	// Событие клика на затемненный фон	   
			$(src).fadeOut(600);
			$(".popup").fadeOut(800);	// Медленно убираем всплывающее окно
			$(src).css("display", "none");
			setTimeout(function() {	// Выставляем таймер
			  $(".popup").remove(); // Удаляем разметку всплывающего окна
			}, 800);
		});
		
		$(".btn-close").click(function(){	// Событие клика на затемненный фон	   
			event.preventDefault();
			$(".popup").fadeOut(800);	// Медленно убираем всплывающее окно
			$(src).fadeOut(600);
			setTimeout(function() {	// Выставляем таймер
				$(src).css("display", "none");
				$(".popup").remove(); // Удаляем разметку всплывающего окна
			}, 800);
		});
			
	});
	
	function mask() {
		$("input[type='tel']").mask("+7 (999) 999-99-99");
	}
	
	mask();
	
});