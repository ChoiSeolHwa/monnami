/**
* --------------------------------
* MonamiMall JS
* --------------------------------
*/

$(document).ready(function(){
	//비동기 로드
	var myLazyLoad = new LazyLoad({
		elements_selector: "img",
		threshold: 200
	});
	$(".swiper-container .swiper-slide img").addClass("swiper-lazy");
	//common
	$('a[href^="#"]').click(function(e){
		e.preventDefault();
	});
	$(".swiper-container .swiper-slide a").click(function(e){
		e.preventDefault();
		var lk = $(this).attr("href");
		var tar = $(this).attr("target");
		if ( tar ){
			window.open(lk, tar);
		}else{
			if ( lk ){
				if ( lk != "#" ){
					location.href = lk;
				}
			}
		}
	});

	//scrollbar
	$(".scrollbar-macosx").scrollbar({
		autoUpdate:true
	});
	$(".scroll-x").hide();

	// 말줄임 처리
	fn.ellipsis(".ellipsis");

	//탭메뉴
	$(".tab-menu a").click(function(e){
		fn.tabMenu(e, this);
		fn.ellipsis(".ellipsis");
	});

	//탭메뉴 hash
	/*
	var hashtag = location.hash;
	if ( hashtag ){
		var $obj = $(hashtag);
		$(".tab-menu a").each(function(){
			if ( $(this).attr("href") == hashtag ){
				$(this).trigger('click');
				$obj.fadeIn(0);
			}
		});
		$("html, body").animate({scrollTop: "0"}, 0);
	}
	*/

	//popinfo.type-over
	$(".btn-popinfo.type-over").hover(function(){
		if ( $(this).hasClass("active") ){
			$(this).removeClass("active");
			$(this).next(".popinfo").removeClass("active");
		}else{
			$(this).addClass("active");
			$(this).next(".popinfo").addClass("active");
		}
	});
	//popinfo.type-click
	$(".btn-popinfo.type-click").click(function(){
		if ( $(this).hasClass("active") ){
			$(this).removeClass("active");
			$(this).next(".popinfo").removeClass("active");
		}else{

			$(this).addClass("active");
			$(this).next(".popinfo").addClass("active");
		}
	});
	$(".popinfo .btn-close").click(function(){
		$(this).parent(".popinfo").removeClass("active");
	});
	//select
	fn.selectboxDropdowns();
	//Open/close
	$(document).on('click', '.dropdown', function(event){
		$('.dropdown').not($(this)).removeClass('open');
		$(this).toggleClass('open');
		if ($(this).hasClass('open')){
			$(this).find('.option').attr('tabindex', 0);
			$(this).find('.selected').focus();
		}else{
			$(this).find('.option').removeAttr('tabindex');
			$(this).focus();
		}
	});
	//Close when clicking outside
	$(document).on('click', function(event){
		if ($(event.target).closest('.dropdown').length === 0){
			$('.dropdown').removeClass('open');
			$('.dropdown .option').removeAttr('tabindex');
		}
		event.stopPropagation();
	});
	//Option click
	$(document).on('click', '.dropdown .option', function(event){
		$(this).closest('.list').find('.selected').removeClass('selected');
		$(this).addClass('selected');
		var text = $(this).data('display-text') || $(this).html();
		$(this).closest('.dropdown').find('.current').html(text);
		$(this).closest('.dropdown').prev('select').val($(this).data('value')).trigger('change');
	});
	//Keyboard events
	$(document).on('keydown', '.dropdown', function(event){
		var focused_option = $($(this).find('.list .option:focus')[0] || $(this).find('.list .option.selected')[0]);
		//Space or Enter
		if (event.keyCode == 32 || event.keyCode == 13){
			if ($(this).hasClass('open')){
				focused_option.trigger('click');
			}else{
				$(this).trigger('click');
			}
			return false;
		//Down
		}else if (event.keyCode == 40){
			if (!$(this).hasClass('open')){
				$(this).trigger('click');
			} else{
				focused_option.next().focus();
			}
			return false;
		//Up
		}else if (event.keyCode == 38){
			if (!$(this).hasClass('open')){
				$(this).trigger('click');
			}else{
				var focused_option = $($(this).find('.list .option:focus')[0] || $(this).find('.list .option.selected')[0]);
				focused_option.prev().focus();
			}
			return false;
		//Esc
		}else if (event.keyCode == 27){
			if ($(this).hasClass('open')){
				$(this).trigger('click');
			}
			return false;
		}
	});

	//datepicker
	$.datepicker.regional['ko'] = {
		inline : true,
		showAnim: "none",
		dateFormat: "yy.mm.dd",
		showMonthAfterYear: true,
		yearSuffix: "년",
		monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		dayNames : ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesMin : ['일', '월', '화', '수', '목', '금', '토']
	};
	$.datepicker.setDefaults($.datepicker.regional['ko']);

	//쿠키 설정
	function setLnbCookie(name, value){
		document.cookie = name + "=" + escape( value ) + ";path=/;"
	}
	//쿠키 체크
	function getLnbCookie(name){
		var Found = false
		var start, end
		var i = 0
		while(i <= document.cookie.length) {
			start = i
			end = start + name.length
			if(document.cookie.substring(start, end) == name) {
				Found = true
				break
			}
			i++
		}
		if(Found == true) {
			start = end + 1
			end = document.cookie.indexOf(";", start)
			if(end < start)
				end = document.cookie.length
			return document.cookie.substring(start, end)
		}
		return ""
	}

	//search자동완성속성 off
	$('.search-field input[type="text"]').prop({'autocomplete':'off'});

	//path
	var path1 = $("body").attr("class");
	var path2 = $("#wrap").attr("class");
	var path3 = $("#contents").attr("class");

	//header allmenu click
	var allmenuhei = $("#header .allmenu .inner").height();
	var allmenuouterhei = $("#header .allmenu .inner").outerHeight();
	var allmenugap = $("#header .allmenu .inner").outerHeight() - $("#header .allmenu .inner").height();
	$("#header .btn-allmenu").on("click", function(e){
		e.preventDefault();
		var $this = $(this);
		if ( $this.hasClass("active") ){
			setTimeout(function(){
				$this.addClass("out").removeClass("active");
			}, 300);
			$("#header .allmenu").removeClass("active");
		}else{
			setTimeout(function(){
				$this.removeClass("out").addClass("active");
			}, 300);
			$("#header .allmenu").addClass("active");
			allmenuhei = $("#header .allmenu .inner").height();
			allmenuouterhei = $("#header .allmenu .inner").outerHeight();
			allmenugap = $("#header .allmenu .inner").outerHeight() - $("#header .allmenu .inner").height();
			allMenuResize();
		}
	});
	$(window).resize(function(){
		allMenuResize();
	});
	function allMenuResize(){
		if ( $(window).height() < allmenuouterhei ){
			$("#header .allmenu .cont").css({"height":+($(window).height()-allmenugap)+"px"});
		}else{
			$("#header .allmenu .cont").css({"height":+(allmenuhei)+"px"});
		}
	}
	//header nav over
	var headerst = 0;
	var headerover = false;
	$("#header nav > ul > li").hover(function(){
		if ( $(this).hasClass("active") ){
			$(this).find(".subnav").stop().slideUp(200, function(){
				$(this).find(".subnav").css({"top":"-500px"});
			});
			$(this).removeClass("active");
		}else{
			$(this).find(".subnav").stop().slideDown(400);
			$(this).addClass("active");
		}
	});
	$("#header").mouseenter(function(){
		$("#header").addClass("active");
		headerover = true;
	});
	$("#header").mouseleave(function(){
		if ( path2 == "main" && headerst < 100 ){
			$("#header").removeClass("active");
			headerover = false;
		}
	});
	$(window).scroll(function(event){
		headerScroll();
	});
	setTimeout(function(){
		headerScroll();
	}, 0);
	function headerScroll(){
		headerst = $(this).scrollTop();
		if ( headerst < 100 ){
			if ( path2 == "main" && headerst < 100 && headerover == false ){
				$("#header").removeClass("active");
			}
		}else{
			$("#header").addClass("active");
		}
		if ( path1 == "home" ){
			var banwingtop = $("#contents .visual").outerHeight() + 158;
		}else{
			var banwingtop = $("#contents .visual").outerHeight() + 120;
		}
		if ( path2 == "main" ){
			if ( headerst < banwingtop - $("#header").height() ){
				$(".banner-wing").css({"position":"absolute", "top":+(banwingtop)+"px"});
			}else{
				$(".banner-wing").css({"position":"fixed", "top":+($("#header").height())+"px"});
			}
		}
		$("#header .subnav").css({"top":"100px"});
		$("#header").fadeIn(200);
	}
	//header util
	$("#header .util ul li .btn-member, #header .util ul li .popinfo").mouseenter(function(){
		fn.addClass('#header .util ul li .popinfo');
	});
	$("#header .util ul li .btn-member, #header .util ul li .popinfo").mouseleave(function(){
		fn.removeClass('#header .util ul li .popinfo');
	});
	//header util 검색
	$("#header .util ul li .btn-search").click(function(){
		$("#header .hsearch").fadeIn(400);
	});
	$("#header .hsearch .btn-close").click(function(){
		$("#header .hsearch").fadeOut(200);
	});
	//header util 개인화
	$("#header .util ul li .btn-person").click(function(){
		$("#header .hperson").stop().animate({"top":"0"}, 600);
		$("#header .hperson .person-area .mypet-notice").imagesLoaded( function() {
			$("#header .hperson .person-area .mypet-notice .petls .tab-menu a").each(function(){
				if ( $(this).find("img").width() > $(this).find("img").height() ){
					$(this).find("img").css({"width":"auto","height":"100%"});
				}else{
					$(this).find("img").css({"width":"100%","height":"auto"});
				}
			});
		});
		fn.myPetNotice();
		haderPersonResize();
	});
	$("#header .hperson .btn-close").click(function(){
		$("#header .hperson").stop().animate({"top":+(-$("#header .hperson").outerHeight())+"px"}, 400);
	});
	function haderPersonResize(){
		if ( $("#header .hperson .person-area .inner-cont").outerHeight() > $(window).height() ){
			$("#header .hperson .person-area .inner").css({"height":+($(window).height()-41)+"px"});
		}else{
			$("#header .hperson .person-area .inner").css({"height":+($("#header .hperson .person-area .inner-cont").outerHeight())+"px"});
		}
	}
	$(window).resize(function(){
		haderPersonResize();
	});

	//header util 개인화 쇼핑알림
	if ( $(".swiper-container.hswipershop .swiper-slide").length > 1 ){
		var hSwipershop = new Swiper(".swiper-container.hswipershop", {
			slidesPerView: 1,
			loop: true,
			direction: 'vertical',
			observer: true,
			observeParents: true,
			speed: 400,
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:1
			}
		});
	}
	//header util 개인화 추천상품
	if ( $(".petlist1 .swiper-container.hswiperrecompro .swiper-slide").length > 3 ){
		var hSwipershop = new Swiper(".petlist1 .swiper-container.hswiperrecompro", {
			slidesPerView: 3,
			spaceBetween: 30,
			observer: true,
			observeParents: true,
			loop: false,
			speed: 400,
			navigation: {
				nextEl: ".petlist1 .swiper-button-next-recompro",
				prevEl: ".petlist1 .swiper-button-prev-recompro",
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:1
			}
		});
	}else{
		$(".petlist1 .swiper-button-next-recompro").fadeOut(0);
		$(".petlist1 .swiper-button-prev-recompro").fadeOut(0);
	}
	//header util 개인화 추천상품
	if ( $(".petlist2 .swiper-container.hswiperrecompro .swiper-slide").length > 3 ){
		var hSwipershop = new Swiper(".petlist2 .swiper-container.hswiperrecompro", {
			slidesPerView: 3,
			spaceBetween: 30,
			observer: true,
			observeParents: true,
			loop: false,
			speed: 400,
			navigation: {
				nextEl: ".petlist2 .swiper-button-next-recompro",
				prevEl: ".petlist2 .swiper-button-prev-recompro",
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:1
			}
		});
	}else{
		$(".petlist2 .swiper-button-next-recompro").fadeOut(0);
		$(".petlist2 .swiper-button-prev-recompro").fadeOut(0);
	}
	//header util 개인화 추천상품
	if ( $(".petlist3 .swiper-container.hswiperrecompro .swiper-slide").length > 3 ){
		var hSwipershop = new Swiper(".petlist3 .swiper-container.hswiperrecompro", {
			slidesPerView: 3,
			spaceBetween: 30,
			observer: true,
			observeParents: true,
			loop: false,
			speed: 400,
			navigation: {
				nextEl: ".petlist3 .swiper-button-next-recompro",
				prevEl: ".petlist3 .swiper-button-prev-recompro",
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:1
			}
		});
	}else{
		$(".petlist3 .swiper-button-next-recompro").fadeOut(0);
		$(".petlist3 .swiper-button-prev-recompro").fadeOut(0);
	}
	//header util 개인화 추천상품
	if ( $(".petlist4 .swiper-container.hswiperrecompro .swiper-slide").length > 3 ){
		var hSwipershop = new Swiper(".petlist4 .swiper-container.hswiperrecompro", {
			slidesPerView: 3,
			spaceBetween: 30,
			observer: true,
			observeParents: true,
			loop: false,
			speed: 400,
			navigation: {
				nextEl: ".petlist4 .swiper-button-next-recompro",
				prevEl: ".petlist4 .swiper-button-prev-recompro",
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:1
			}
		});
	}else{
		$(".petlist4 .swiper-button-next-recompro").fadeOut(0);
		$(".petlist4 .swiper-button-prev-recompro").fadeOut(0);
	}
	//header util 개인화 추천상품
	if ( $(".petlist5 .swiper-container.hswiperrecompro .swiper-slide").length > 3 ){
		var hSwipershop = new Swiper(".petlist5 .swiper-container.hswiperrecompro", {
			slidesPerView: 3,
			spaceBetween: 30,
			observer: true,
			observeParents: true,
			loop: false,
			speed: 400,
			navigation: {
				nextEl: ".petlist5 .swiper-button-next-recompro",
				prevEl: ".petlist5 .swiper-button-prev-recompro",
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:1
			}
		});
	}else{
		$(".petlist5 .swiper-button-next-recompro").fadeOut(0);
		$(".petlist5 .swiper-button-prev-recompro").fadeOut(0);
	}
	//header util 개인화 최근 본 상품
	if ( $(".swiper-container.hswipernewpro .swiper-slide").length > 5 ){
		var hSwipershop = new Swiper(".swiper-container.hswipernewpro", {
			slidesPerView: 5,
			spaceBetween: 20,
			observer: true,
			observeParents: true,
			loop: false,
			speed: 400,
			navigation: {
				nextEl: ".swiper-button-next-newpro",
				prevEl: ".swiper-button-prev-newpro",
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:1
			}
		});
	}else{
		$("#header .hperson .pro-notice .prolist .ls .swiper-button-next-newpro").fadeOut(0);
		$("#header .hperson .pro-notice .prolist .ls .swiper-button-prev-newpro").fadeOut(0);
	}
	//header util 개인화 이 상품은 어떠세요?
	if ( $(".swiper-container.hswiperthinkpro .swiper-slide").length > 5 ){
		var hSwipershop = new Swiper(".swiper-container.hswiperthinkpro", {
			slidesPerView: 5,
			spaceBetween: 20,
			observer: true,
			observeParents: true,
			loop: false,
			speed: 400,
			navigation: {
				nextEl: ".swiper-button-next-thinkpro",
				prevEl: ".swiper-button-prev-thinkpro",
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:1
			}
		});
	}else{
		$("#header .hperson .pro-notice .prolist .ls .swiper-button-next-thinkpro").fadeOut(0);
		$("#header .hperson .pro-notice .prolist .ls .swiper-button-prev-thinkpro").fadeOut(0);
	}
	//header util 개인화 지금이 바로 기회!
	if ( $(".swiper-container.hswipernowpro .swiper-slide").length > 5 ){
		var hSwipershop = new Swiper(".swiper-container.hswipernowpro", {
			slidesPerView: 5,
			spaceBetween: 20,
			observer: true,
			observeParents: true,
			loop: false,
			speed: 400,
			navigation: {
				nextEl: ".swiper-button-next-nowpro",
				prevEl: ".swiper-button-prev-nowpro",
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:1
			}
		});
	}else{
		$("#header .hperson .pro-notice .prolist .ls .swiper-button-next-nowpro").fadeOut(0);
		$("#header .hperson .pro-notice .prolist .ls .swiper-button-prev-nowpro").fadeOut(0);
	}
	//btnTop
	$("#btnTop").click(function(){
		$("html, body").animate({scrollTop: 0}, 600);
	});
	$(window).scroll(function(event){
		st = $(this).scrollTop();
		if ( st >= 100 ){
			$("#btnTop").fadeIn();
		}else{
			$("#btnTop").fadeOut();
		}
	});
	//footer 패밀리사이트
	$("#footer .familysite select").change(function(){
		var val = $("#footer .familysite select option:selected").val();
		if ( val ){
			window.open(val, '_blank');
		}
	});
	//main
	switch (path1) {
		//home
		case "home" :
			if ( path2 == "main" ){
				//visual swiper
				var visualSwiper = new Swiper(".swiper-container.swipervisual", {
					slidesPerView: 1,
					loop: true,
					speed: 800,
					autoplay: {
						delay: 8000,
						disableOnInteraction: false,
					},
					pagination: {
						el: ".swiper-pagination-visual",
						clickable: true,
					},
					navigation: {
						nextEl: ".swiper-button-next-visual",
						prevEl: ".swiper-button-prev-visual",
					},
					on: {
						init: function () {
							$(".home .main .visual .slide-txt0").addClass("active");
						},
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				visualSwiper.on('slideChange', function () {
					$(".home .main .visual .slide-txt").removeClass("active");
					$(".home .main .visual .slide-txt"+visualSwiper.realIndex).addClass("active");
				});
				$(".home .main .visual .slide-txt a").click(function(){
					$(".visual .swiper-pagination-visual .swiper-pagination-bullet").eq($(this).attr("data-link")).click();
				});
				//mv click
				$(".home .main .cont-area .cont-list .list a.mv").click(function(e){
					e.preventDefault();
					$("#popHomeMv .tit").text($(this).attr("data-ti"));
					$("#popHomeMv .mv").html('<iframe width="736" height="415" src="'+$(this).attr("data-mv")+'" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
					fn.popupOpen('#popHomeMv');
				});
				//mv close
				$("#popHomeMv .btn-close").click(function(){
					$("#popHomeMv .mv iframe").remove();
					fn.popupClose();
				});
			}
		break;

		//monamipet
		case "monamipet" :
			if ( path2 == "main" ){
				//anchor click
				$(".monamipet .main .anchor a").click(function(){
					var goidx = $(this).attr("class");
					if ( goidx != "btn-plus"){
						goidx = goidx.replace("btn go", "").trim();
						var gotop = $(".monamipet .main #contents ."+goidx).offset().top;
						$("html, body").animate({scrollTop: gotop}, 600);
					}
				});
				//visual swiper
				var monamipetSwiper = new Swiper(".swiper-container.swipervisual", {
					slidesPerView: 1,
					loop: true,
					speed: 800,
					autoplay: {
						delay: 8000,
						disableOnInteraction: false,
					},
					pagination: {
						el: ".swiper-pagination",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".monamipet .visual .visualtitle li").eq(index).html() + '</span>';
						},
					},
					navigation: {
						nextEl: ".swiper-button-next",
						prevEl: ".swiper-button-prev",
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//life swiper dog
				if ( $(".swiper-container.swiperlife.dog .swiper-slide").length > 5 ){
					var swiperdogSwiper = new Swiper(".swiper-container.swiperlife.dog", {
						slidesPerView: 5,
						slidesPerGroup: 5,
						spaceBetween: 14,
						pagination: {
							el: ".swiper-pagination.dog",
							type: "fraction",
						},
						navigation: {
							nextEl: ".swiper-button-next.dog",
							prevEl: ".swiper-button-prev.dog",
						},
						lazy: {
							loadPrevNext:true,
							loadPrevNextAmount:1
						}
					});
				}else{
					$(".life .ls.dog .swiper-button-next.dog").fadeOut(0);
					$(".life .ls.dog .swiper-button-prev.dog").fadeOut(0);
				}
				//life swiper cat
				if ( $(".swiper-container.swiperlife.cat .swiper-slide").length > 5 ){
					var swipercatSwiper = new Swiper(".swiper-container.swiperlife.cat", {
						slidesPerView: 5,
						slidesPerGroup: 5,
						spaceBetween: 14,
						pagination: {
							el: ".swiper-pagination.cat",
							type: "fraction",
						},
						navigation: {
							nextEl: ".swiper-button-next.cat",
							prevEl: ".swiper-button-prev.cat",
						},
						lazy: {
							loadPrevNext:true,
							loadPrevNextAmount:1
						}
					});
				}else{
					$(".life .ls.cat").css({"width":"auto", "right":"556px"});
					$(".life .ls.cat .swiperlife").css({"width":"auto"});
					$(".life .ls.cat .swiper-button-next.cat").fadeOut(0);
					$(".life .ls.cat .swiper-button-prev.cat").fadeOut(0);
				}
				//life img click
				$(".monamipet .main .life .swiperlife a").click(function(){
					var pic = $(this).attr("data-pic");
					var ti = $(this).attr("data-ti");
					var txt = $(this).attr("data-txt");
					var obj = $(this).parent().parent().parent().hasClass("dog");
					$(this).parent().parent().find(".swiper-slide").removeClass("active");
					$(this).parent().addClass("active");
					if ( obj ){
						$(".big.dog > img").fadeOut(0);
						$(".big.dog > img").attr("src", pic);
						$(".big.dog .info p strong").html(ti);
						$(".big.dog .info p span").html(txt);
						$(".big.dog > img").fadeIn(400);
					}else{
						$(".big.cat > img").fadeOut(0);
						$(".big.cat > img").attr("src", pic);
						$(".big.cat .info p strong").html(ti);
						$(".big.cat .info p span").html(txt);
						$(".big.cat > img").fadeIn(400);
					}
				});
				//best swiper
				var swiperbestSwiper = new Swiper(".swiper-container.swiperbest", {
					effect: "fade",
					simulateTouch: false,
					pagination: {
						el: ".swiper-pagination-best",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".monamipet .best .besttitle li").eq(index).html() + '</span>';
						},
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//pick swiper
				var swiperpickSwiper = new Swiper(".swiper-container.swiperpick", {
					effect: "fade",
					simulateTouch: false,
					pagination: {
						el: ".swiper-pagination-pick",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".monamipet .pick .picktitle li").eq(index).html() + '</span>';
						},
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//favoritepro Swiper
				var swiperfavoriteproSwiper = new Swiper(".swiper-container.swiperfavoriteprolist", {
					slidesPerView: 3,
					slidesPerGroup: 3,
					observer: true,
					observeParents: true,
					navigation: {
						nextEl: ".swiper-button-next-prolist",
						prevEl: ".swiper-button-prev-prolist",
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				var favoriteallactiveIndex = 0;
				var favoritedogactiveIndex = 0;
				var favoritecatactiveIndex = 0;
				//favoriteall Swiper
				var favoritealltot = $(".swiper-container.swiperfavoriteall .swiper-slide").length;
				if ( favoritealltot > 1 ){
					var swiperfavoriteallSwiper = new Swiper(".swiper-container.swiperfavoriteall", {
						effect: "coverflow",
						grabCursor: true,
						centeredSlides: true,
						slidesPerView: "auto",
						loop: true,
						initialSlide: 0,
						observer: true,
						observeParents: true,
						coverflowEffect: {
							rotate: 0,
							stretch: -24.5,
							depth: 60,
							modifier: 10,
							slideShadows : false,
							slideYpos: true,
						},
						pagination: {
							el: ".swiper-pagination-favoriteall",
							clickable: true,
						},
						navigation: {
							nextEl: ".swiper-button-next-favoriteall",
							prevEl: ".swiper-button-prev-favoriteall",
						},
						lazy: {
							loadPrevNext:true,
							loadPrevNextAmount:1
						}
					});
					swiperfavoriteallSwiper.on("slideChangeTransitionStart", function(){
						$(".favoriteprolist").fadeOut(100);
					});
					swiperfavoriteallSwiper.on("slideChangeTransitionEnd", function(){
						var obj = $(".swiperfavoriteall .swiper-slide");
						favoriteallactiveIndex = swiperfavoriteallSwiper.activeIndex;
						changeFavoritePro(obj, favoriteallactiveIndex);
					});
				}else{
					$(".favorite .swiperfavoriteall .swiper-slide").css({"opacity":"1", "margin-top":"195px", "margin-left":"405px"});
					$(".favorite .swiperfavoriteall .txt").css({"opacity":"1"});
				}
				//favoritedog Swiper
				var favoritedogtot = $(".swiper-container.swiperfavoritedog .swiper-slide").length;
				if ( favoritedogtot > 1 ){
					var swiperfavoritedogSwiper = new Swiper(".swiper-container.swiperfavoritedog", {
						effect: "coverflow",
						grabCursor: true,
						centeredSlides: true,
						slidesPerView: "auto",
						loop: true,
						initialSlide: 0,
						observer: true,
						observeParents: true,
						coverflowEffect: {
							rotate: 0,
							stretch: -24.5,
							depth: 60,
							modifier: 10,
							slideShadows : false,
							slideYpos: true,
						},
						pagination: {
							el: ".swiper-pagination-favoritedog",
							clickable: true,
						},
						navigation: {
							nextEl: ".swiper-button-next-favoritedog",
							prevEl: ".swiper-button-prev-favoritedog",
						},
						lazy: {
							loadPrevNext:true,
							loadPrevNextAmount:1
						}
					});
					swiperfavoritedogSwiper.on("slideChangeTransitionStart", function(){
						$(".favoriteprolist").fadeOut(100);
					});
					swiperfavoritedogSwiper.on("slideChangeTransitionEnd", function(){
						var obj = $(".swiperfavoritedog .swiper-slide");
						favoritedogactiveIndex = swiperfavoritedogSwiper.activeIndex;
						changeFavoritePro(obj, favoritedogactiveIndex);
					});
				}else{
					$(".favorite .swiperfavoritedog .swiper-slide").css({"opacity":"1", "margin-top":"195px", "margin-left":"405px"});
					$(".favorite .swiperfavoritedog .txt").css({"opacity":"1"});
				}
				//favoritecat Swiper
				var favoritecattot = $(".swiper-container.swiperfavoritecat .swiper-slide").length;
				if ( favoritecattot > 1 ){
					var swiperfavoritecatSwiper = new Swiper(".swiper-container.swiperfavoritecat", {
						effect: "coverflow",
						grabCursor: true,
						centeredSlides: true,
						slidesPerView: "auto",
						loop: true,
						initialSlide: 0,
						observer: true,
						observeParents: true,
						coverflowEffect: {
							rotate: 0,
							stretch: -24.5,
							depth: 60,
							modifier: 10,
							slideShadows: false,
							slideYpos: true,
						},
						pagination: {
							el: ".swiper-pagination-favoritecat",
							clickable: true,
						},
						navigation: {
							nextEl: ".swiper-button-next-favoritecat",
							prevEl: ".swiper-button-prev-favoritecat",
						},
						lazy: {
							loadPrevNext:true,
							loadPrevNextAmount:1
						}
					});
					swiperfavoritecatSwiper.on("slideChangeTransitionStart", function(){
						$(".favoriteprolist").fadeOut(100);
					});
					swiperfavoritecatSwiper.on("slideChangeTransitionEnd", function(){
						var obj = $(".swiperfavoritecat .swiper-slide");
						favoritecatactiveIndex = swiperfavoritecatSwiper.activeIndex;
						changeFavoritePro(obj, favoritecatactiveIndex);
					});
				}else{
					$(".favorite .swiperfavoritecat .swiper-slide").css({"opacity":"1", "margin-top":"195px", "margin-left":"405px"});
					$(".favorite .swiperfavoritecat .txt").css({"opacity":"1"});
				}
				//changeFavoritePro
				function changeFavoritePro(obj, idx){
					$(".swiperfavoriteprolist .swiper-slide").remove();
					for ( var i = 0 ; i < obj.eq(idx).find(".prolist li").length ; i++ ){
						 swiperfavoriteproSwiper.appendSlide([
							'<div class="swiper-slide"><a href="' + obj.eq(idx).find(".prolist li").eq(i).attr("data-lk") + '">' +
									'<span class="propic"><img src="' + obj.eq(idx).find(".prolist li").eq(i).attr("data-pic") + '" alt=""></span>' +
									'<span class="protxt ellipsis">' + obj.eq(idx).find(".prolist li").eq(i).attr("data-ti") + '</span>' +
							'</div>'
						]);
					}
					$(".favoriteprolist").fadeIn(400);
					swiperfavoriteproSwiper.update();
					fn.ellipsis(".swiperfavoriteprolist .ellipsis");
				}
				//favorite div
				$(".favorite .favoritdiv a").click(function(){
					if ( !$(this).hasClass("active") ){
						var con = $(this).attr("href").replace("#", "");
						$(".favorite .favoritdiv a, .favorite .favoritcont").removeClass("active");
						$(this).addClass("active");
						$(".favorite #"+con).addClass("active");
						$(".favoriteprolist").fadeOut(100);
						setTimeout(function(){
							if ( con == "favoriteAll"){
								var obj = $(".swiperfavoriteall .swiper-slide");
								changeFavoritePro(obj, favoriteallactiveIndex);
							}else if ( con == "favoriteDog"){
								var obj = $(".swiperfavoritedog .swiper-slide");
								changeFavoritePro(obj, favoritedogactiveIndex);
							}else if ( con == "favoriteCat"){
								var obj = $(".swiperfavoritecat .swiper-slide");
								changeFavoritePro(obj, favoritecatactiveIndex);
							}
						}, 500);
					}
				});
				$(".favorite .favoritdiv a").eq(0).click();
				//theme swiper
				var swiperthemeSwiper = new Swiper(".swiper-container.swipertheme", {
					slidesPerView: 1,
					loop: true,
					speed: 800,
					pagination: {
						el: ".swiper-pagination-theme",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".theme .themetitle li").eq(index).html() + '</span>';
						},
					},
					navigation: {
						nextEl: ".swiper-button-next-theme",
						prevEl: ".swiper-button-prev-theme",
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//trend swiper
				var swipertrendSwiper = new Swiper(".swiper-container.swipertrend", {
					slidesPerView: 1,
					effect: "fade",
					loop: true,
					speed: 800,
					simulateTouch: false,
					pagination: {
						el: ".swiper-pagination-trend",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".trend .trendtitle li").eq(index).html() + '</span>';
						},
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//new swiper
				var swipernewSwiper = new Swiper(".swiper-container.swipernew", {
					slidesPerView: 1,
					effect: "fade",
					speed: 800,
					simulateTouch: false,
					pagination: {
						el: ".swiper-pagination-new",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".new .newtitle li").eq(index).html() + '</span>';
						},
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//brand swiper
				var swiperbrandSwiper = new Swiper(".swiper-container.swiperbrand", {
					loop: true,
					navigation: {
						nextEl: ".swiper-button-next-brand",
						prevEl: ".swiper-button-prev-brand",
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//brand click
				$(".swiperbrand a").click(function(e){
					e.preventDefault();
					var idx = $(this).attr("href");
					$(idx).slideDown(400);
					fn.ellipsis(".brandpro .ellipsis");
				});
				//brand sub close
				$(".brand .brandpro .btn-close").click(function(e){
					e.preventDefault();
					$(this).parent().parent().slideUp(400);
				});
				$(window).scroll(function(e){
					scrollVisible();
				});
				setTimeout(function(){
					scrollVisible();
				}, 200);
				//scrollGnbSub
				function scrollVisible(){
					var st = $(this).scrollTop();
					if ( $(".monamipet .main #contents > div").hasClass("best") ){
						if ( st > ($(".monamipet .main .best").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .best").addClass("active");
						}else{
							$(".monamipet .main #contents .best").removeClass("active");
						}
					}
					if ( $(".monamipet .main #contents > div").hasClass("pick") ){
						if ( st > ($(".monamipet .main .pick").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .pick").addClass("active");
						}else{
							$(".monamipet .main #contents .pick").removeClass("active");
						}
					}
					if ( $(".monamipet .main #contents > div").hasClass("favorite") ){
						if ( st > ($(".monamipet .main .favorite").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .favorite").addClass("active");
						}else{
							$(".monamipet .main #contents .favorite").removeClass("active");
						}
					}
					if ( $(".monamipet .main #contents > div").hasClass("theme") ){
						if ( st > ($(".monamipet .main .theme").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .theme").addClass("active");
						}else{
							$(".monamipet .main #contents .theme").removeClass("active");
						}
					}
					if ( $(".monamipet .main #contents > div").hasClass("review") ){
						if ( st > ($(".monamipet .main .review").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .review").addClass("active");
						}else{
							$(".monamipet .main #contents .review").removeClass("active");
						}
					}
					if ( $(".monamipet .main #contents > div").hasClass("just1day") ){
						if ( st > ($(".monamipet .main .just1day").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .just1day").addClass("active");
						}else{
							$(".monamipet .main #contents .just1day").removeClass("active");
						}
					}
					if ( $(".monamipet .main #contents > div").hasClass("trend") ){
						if ( st > ($(".monamipet .main .trend").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .trend").addClass("active");
						}else{
							$(".monamipet .main #contents .trend").removeClass("active");
						}
					}
					if ( $(".monamipet .main #contents > div").hasClass("new") ){
						if ( st > ($(".monamipet .main .new").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .new").addClass("active");
						}else{
							$(".monamipet .main #contents .new").removeClass("active");
						}
					}
					if ( $(".monamipet .main #contents > div").hasClass("brand") ){
						if ( st > ($(".monamipet .main .brand").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .brand").addClass("active");
						}else{
							$(".monamipet .main #contents .brand").removeClass("active");
						}
					}
					if ( $(".monamipet .main #contents > div").hasClass("story-pick") ){
						if ( st > ($(".monamipet .main .story-pick").offset().top-$(window).height()/1.1) ){
							$(".monamipet .main #contents .story-pick").addClass("active");
						}else{
							$(".monamipet .main #contents .story-pick").removeClass("active");
						}
					}
				}
			}
		break;

		//stationerymain
		case "stationery" :
			if ( path2 === "main" ){
				//visual swiper
				var stationerySwiper = new Swiper(".swiper-container.swipervisual", {
					slidesPerView: 1,
					loop: true,
					speed: 800,
					autoplay: {
						delay: 8000,
						disableOnInteraction: false,
					},
					pagination: {
						el: ".swiper-pagination",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".stationery .visual .visualtitle li").eq(index).html() + '</span>';
						},
					},
					navigation: {
						nextEl: ".swiper-button-next",
						prevEl: ".swiper-button-prev",
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//6signatures
				function signaturesInit(){
					$(".signatures .swipersignatures .nav div.now").removeClass("active");
					$(".signatures .swipersignatures .nav div.old").addClass("active");
					$(".signatures .swipersignatures .scont.now").addClass("active").css({"left":"0"});
					$(".signatures .swipersignatures .scont.old").removeClass("active").css({"left":"0"});
					$(".signatures .swipersignatures .scont .ls").addClass("active");
					$(".signatures .swipersignatures .scont .ls li:first-child").addClass("active");
					$(".signatures .swipersignatures .scont .lscont:nth-child(2)").addClass("active");
				}
				signaturesInit();
				//과거 현재 전환
				$('.signatures').on('click',".swipersignatures .nav div",function(){
					var $this = $(this).parent().parent();
					if ( $(this).hasClass("old") ){
						$this.find(".nav .old").removeClass("active");
						$this.find(".nav .now").addClass("active");
						$this.find(".scont.now").stop().animate({"left":+(-$(".signatures .swipersignatures .scont-area").width())+"px"}, 400, function(){
							$this.find(".scont.old").addClass("active");
							$this.find(".scont.old .lscont:last-child").addClass("active");
							$this.find(".scont.now").removeClass("active");
							$this.find(".scont.old").css({"left":+(-$this.find(".scont-area").width())+"px"});
							$this.find(".scont.old .lscont .pic").css({"opacity":"0"});
							$this.find(".scont.old").stop().animate({"left":"0px"}, 400, function(){
								$this.find(".scont.old .lscont .pic").animate({"opacity":"1"}, 500);
							});
						});
					}else{
						$this.find(".nav .old").addClass("active");
						$this.find(".nav .now").removeClass("active");
						$this.find(".scont.old").stop().animate({"left":+(-$this.find(".scont-area").width())+"px"}, 400, function(){
							$this.find(".scont.now").addClass("active");
							$this.find(".scont.old").removeClass("active");
							$this.find(".scont.now").css({"left":+(-$this.find(".scont-area").width())+"px"});
							$this.find(".scont.now .lscont .pic").css({"opacity":"0"});
							$(".scont.now .ls li").removeClass("active");
							$(".scont.now .lscont").removeClass("active");
							$(".scont.now .ls li:last-child").addClass("active");
							$(".scont.now .lscont:last-child").addClass("active");
							$this.find(".scont.now").stop().animate({"left":"0px"}, 400, function(){
								$this.find(".scont.now .lscont .pic").animate({"opacity":"1"}, 500);
							});
						});
					}
				});
				//list click
				$('.signatures').on('click',".swipersignatures .scont .ls li",function(){
					var $this = $(this).parent().parent().parent().parent();
					$this.find(".scont .ls li").removeClass("active");
					$(this).addClass("active");
					$this.find(".scont .lscont").removeClass("active");
					$this.find(".scont .lscont").eq($(this).index()).addClass("active");
				});
				var signaturesSwiper = new Swiper(".swiper-container.swipersignatures", {
					slidesPerView: 1,
					loop: false,
					speed: 800,
					preventClicks: false,
					navigation: {
						nextEl: ".swiper-button-next-signatures",
						prevEl: ".swiper-button-prev-signatures",
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//marker swiper
				var markerSwiper = new Swiper(".swiper-container.swipermarker", {
					effect: "fade",
					simulateTouch: false,
					pagination: {
						el: ".swiper-pagination-marker",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".marker .markertitle li").eq(index).html() + '</span>';
						},
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//mv click
				$(".marker .swipermarker .info .usels ul li a").click(function(e){
					e.preventDefault();
					if ( $(this).hasClass("mv") ){
						$("#popHomeMv .tit").text($(this).attr("data-ti"));
						$("#popHomeMv .mv").html('<iframe width="736" height="415" src="'+$(this).attr("data-mv")+'" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
						fn.popupOpen('#popHomeMv');
					}else{
						var lk = $(this).attr("href");
						var tar = $(this).attr("target");
						if ( tar ){
							window.open(lk, tar);
						}else{
							if ( lk != "#" ){
								location.href = lk;
							}
						}
					}
				});
				//mv close
				$("#popHomeMv .btn-close").click(function(){
					$("#popHomeMv .mv iframe").remove();
					fn.popupClose();
				});
			}
		break;

		//hobbymain
		case "hobby" :
			if ( path2 === "main" ){
				//visual swiper
				var visualSwiper = new Swiper(".swiper-container.swipervisual", {
					slidesPerView: 1,
					loop: true,
					speed: 800,
					autoplay: {
						delay: 8000,
						disableOnInteraction: false,
					},
					pagination: {
						el: ".swiper-pagination",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".hobby .visual .visualtitle li").eq(index).html() + '</span>';
						},
					},
					navigation: {
						nextEl: ".swiper-button-next",
						prevEl: ".swiper-button-prev",
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
			}
		break;

		//storypickmain
		case "storypick" :
			if ( path2 === "main" ){
				//visual swiper
				if ( $(".swiper-container.swipervisual .swiper-slide").length > 1 ){
					var visualSwiper = new Swiper(".swiper-container.swipervisual", {
						loop: true,
						slidesPerView: 'auto',
						spaceBetween: 40,
						centeredSlides: true,
						navigation: {
							nextEl: ".swiper-button-next",
							prevEl: ".swiper-button-prev",
						},
						lazy: {
							loadPrevNext:true,
							loadPrevNextAmount:1
						}
					});
				}else{
					$(".swipervisual").css({"margin":"0 auto", "width":"1200px"});
					$(".swiper-button-prev, .swiper-button-next").fadeOut(0);
				}
				//search
				$(".search .search-field .search-div > ul > li > label").hover(function(){
					$(".search .search-field .search-div > ul > li > label input").prop('checked', false);
					$(this).find("input").prop('checked', true);
					$(".search .search-field .search-div > ul > li").removeClass("active");
					$(this).parent().addClass("active");
				});
				$(".storypick .main .search .search-field .search-area input").focus(function(){
					$(".storypick .main .search .search-field .recom-search").addClass("active");
				});
				$(".storypick .main .search .search-field .search-area input").blur(function(){
					$(".storypick .main .search .search-field .recom-search").removeClass("active");
				});
				//newstory
				var newstorySwiper = new Swiper(".swiper-container.swipenewstory", {
					effect: "fade",
					slidesPerView: 1,
					loop: true,
					speed: 800,
					simulateTouch: false,
					pagination: {
						el: ".swiper-pagination-newstory",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".newstory .newstorytitle li").eq(index).html() + '</span>';
						},
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				$(".newstory .swipenewstory .newstorytitle li").eq(0).addClass("active");
				newstorySwiper.on('slideChange', function () {
					$(".newstory .swipenewstory .newstorytitle li").removeClass("active");
					$(".newstory .swipenewstory .newstorytitle li").eq(newstorySwiper.realIndex).addClass("active");
				});
				$(".newstory .swipenewstory .newstorytitle li").click(function(){
					$(".swiper-pagination-newstory .swiper-pagination-bullet").eq($(this).index()).click();
				})
				//pet
				if ( $(".swiper-container.swipepet .swiper-slide").length > 1 ){
					var petSwiper = new Swiper(".swiper-container.swipepet", {
						loop: true,
						pagination: {
							el: ".swiper-pagination-pet",
							clickable: true,
						},
						lazy: {
							loadPrevNext:true,
							loadPrevNextAmount:1
						}
					});
				}
			}
		break;

		//hobbymain
		case "monarte" :
			if ( path2 === "main" ){
				//visual swiper
				var visualSwiper = new Swiper(".swiper-container.swipervisual", {
					slidesPerView: 1,
					loop: true,
					speed: 800,
					autoplay: {
						delay: 8000,
						disableOnInteraction: false,
					},
					pagination: {
						el: ".swiper-pagination",
						clickable: true,
						renderBullet: function (index, className) {
							return '<span class="' + className + '">' + $(".monarte .visual .visualtitle li").eq(index).html() + '</span>';
						},
					},
					navigation: {
						nextEl: ".swiper-button-next",
						prevEl: ".swiper-button-prev",
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				//swiperbrand
				var brandSwiper = new Swiper(".swiper-container.swiperbrand", {
					slidesPerView: 1,
					loop: true,
					simulateTouch: false,
					navigation: {
						nextEl: ".swiper-button-next-brand",
						prevEl: ".swiper-button-prev-brand",
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
				$(".brand .cont .ls .swiperbrand a").click(function(){
					$(".brand .cont .ls .swiperbrand a").removeClass("active");
					$(this).addClass("active");
					var lk = $(this).attr("data-lk");
					var ti = $(this).attr("data-ti");
					var info = $(this).attr("data-info");
					var pic = $(this).attr("data-pic");
					$(".monarte .main .brand .cont .big a").attr("href", lk);
					$(".monarte .main .brand .cont .big a img").attr("src", pic);
					$(".monarte .main .brand .cont .big a .info strong").html(ti);
					$(".monarte .main .brand .cont .big a .info p").html(info);
				});
				//swiperproduct
				var beforegab = 0;
				if ( $(".product .swiperproduct .swiper-slide").length > 4 ){
					var productSwiper = new Swiper(".swiper-container.swiperproduct", {
						slidesPerView: 'auto',
						slidesOffsetBefore: beforegab,
						spaceBetween: 0,
						centeredSlides: false,
						loop: true,
						observer: true,
						observeParents: true,
						navigation: {
							nextEl: ".swiper-button-next-product",
							prevEl: ".swiper-button-prev-product",
						},
						lazy: {
							loadPrevNext:true,
							loadPrevNextAmount:1
						}
					});
				}else{
					$(".product .swiperproduct .swiper-button-prev-product, .product .swiperproduct .swiper-button-next-product").fadeOut(0);
				}
			}
		break;
	}
	//sub
	if ( path2 == "sub" ){
		//location
		setTimeout(function(){
			$(".location > ul > li .dropdown .list").each(function(){
				$(this).width($(this).find("ul").width());
			});
		}, 500);

		//상품상세
		if ( path3 == "goods detail" ){
			//pic zoom
			$('.goods.detail .product .propic .bpic img').ezPlus({
				gallery: 'sPic',
				borderSize: 0,
				lensBorderSize: 0,
				minZoomLevel: 0.1,
				zoomWindowFadeIn: 500,
				zoomLensFadeIn: 500,
				imageCrossfade: true,
				zoomWindowWidth: 540,
				zoomWindowHeight: 540,
				zoomWindowOffsetX: 30,
				zoomWindowAlwaysShow: true,
				scrollZoom: true,
				cursor: 'pointer',
				zIndex: 20
			});
			setTimeout(function(){
				if($(".goods.detail .propic .spic .swiper-slide:first-child a").hasClass("pic")){
					$(".goods.detail .propic .bpic img").attr("src", $(this).attr("data-image"));
					$(".goods.detail .propic .bpic img").attr("data-zoom-image", "");
					$(".ZoomContainer").css({"opacity":"0"});
				}
			},1000);
			$('.goods.detail .product .propic .bpic').imagesLoaded( function() {
				setTimeout(function(){
					if($(".goods.detail .propic .spic .swiper-slide:first-child a").hasClass("pic")){
						$(".goods.detail .propic .bpic img").attr("src", $(this).attr("data-image"));
						$(".goods.detail .propic .bpic img").attr("data-zoom-image", "");
						$(".ZoomContainer").css({"opacity":"0"});
					}
				},200);
			});
			//spic swiper
			var spicSwiper = new Swiper(".swiper-container.spicswiper", {
				slidesPerView: 4,
				spaceBetween: 10,
				loop: false,
				speed: 400,
				navigation: {
					nextEl: ".swiper-button-next-spic",
					prevEl: ".swiper-button-prev-spic",
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			//spic click
			$(".goods.detail .propic .spic .swiper-slide a").click(function(e){
				e.preventDefault();
				if ( $(this).hasClass("mv") ){
					$("#popDetailMv .tit").text($(this).attr("data-ti"));
					$("#popDetailMv .mv").html('<iframe width="736" height="415" src="'+$(this).attr("data-mv")+'" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
					fn.popupOpen('#popDetailMv');
				}else if ( $(this).hasClass("pic") ){
					$(".goods.detail .propic .bpic img").attr("src", $(this).attr("data-image"));
					$(".goods.detail .propic .bpic img").attr("data-zoom-image", "");
					$(".ZoomContainer").css({"opacity":"0"});
				}else{
					$(".ZoomContainer").css({"opacity":"1"});
				}
			});
			//mv close
			$("#popDetailMv .btn-close").click(function(){
				$("#popDetailMv .mv iframe").remove();
				fn.popupClose();
			});
			//color
			for ( i = 0 ; i < $(".product .proinfo .info-color ul").length ; i++ ){
				if ( $(".product .proinfo .info-color ul").eq(i).find("li").length > 7 ){
					$(".product .proinfo .info-color ul").eq(i).find("li").fadeOut(0);
					for ( var j = 0 ; j < 7 ; j++ ){
						$(".product .proinfo .info-color ul").eq(i).find("li").eq(j).fadeIn(0);
					}
					$(".product .proinfo .info-color ul").eq(i).find("li.btn-more").fadeIn(0);
				}else{
					$(".product .proinfo .info-color ul").eq(i).find("li.btn-more").fadeOut(0);
				}
			}
			$(".product .proinfo .info-color ul > li.btn-more a").click(function(){
				if ( $(this).hasClass("active") ){
					$(this).parent().parent().find("li").fadeOut(0);
					for ( var i = 0 ; i < 7 ; i++ ){
						$(this).parent().parent().find("li").eq(i).fadeIn(0);
					}
					$(this).removeClass("active").text("더보기");
					$(this).parent().parent().find("li.btn-more").fadeIn(0);
				}else{
					$(this).parent().parent().find("li").fadeIn(0);
					$(this).addClass("active").text("닫기");
				}
			});
			//나와함께사는아이 img
			if ( $(".goods.detail .pdetail .review .rviewcon .mypet .pic img").width() > $(".goods.detail .pdetail .review .rviewcon .mypet .pic img").height() ){
				$(".goods.detail .pdetail .review .rviewcon .mypet .pic img").css({"height":"100%"});
			}else{
				$(".goods.detail .pdetail .review .rviewcon .mypet .pic img").css({"width":"100%"});
			}
			//reviewswiper swiper
			var reviewSwiper = new Swiper(".swiper-container.reviewswiper4", {
				slidesPerView: 4,
				spaceBetween: 4,
				loop: false,
				speed: 400,
				navigation: {
					nextEl: ".swiper-button-next-review4",
					prevEl: ".swiper-button-prev-review4",
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			if ( $(".swiper-container.reviewswiper4 .swiper-slide").length < 4 ){
				$(".swiper-button-next-review4").fadeOut(0);
				$(".swiper-button-prev-review4").fadeOut(0);
			}
			var reviewSwiper = new Swiper(".swiper-container.reviewswiper7", {
				slidesPerView: 7,
				spaceBetween: 7,
				loop: false,
				speed: 400,
				navigation: {
					nextEl: ".swiper-button-next-review7",
					prevEl: ".swiper-button-prev-review7",
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			if ( $(".swiper-container.reviewswiper7 .swiper-slide").length < 7 ){
				$(".swiper-button-next-review7").fadeOut(0);
				$(".swiper-button-prev-review7").fadeOut(0);
			}
			//howtouse swiper
			var howtouseThumbs = new Swiper('.swiper-container.howtouse-thumbs', {
				spaceBetween: 10,
				slidesPerView: 3,
				freeMode: true,
				watchSlidesVisibility: true,
				watchSlidesProgress: true,
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			var howtouseTop = new Swiper('.swiper-container.howtouse-top', {
				spaceBetween: 10,
				navigation: {
					nextEl: '.swiper-button-next-howtouse',
					prevEl: '.swiper-button-prev-howtouse',
				},
				thumbs: {
					swiper: howtouseThumbs
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			howtouseTop.on('slideChangeTransitionEnd', function () {
				$(".howtouse-top .swiper-slide").eq(howtouseTop.previousIndex).find("iframe").attr("src", "");
				setTimeout(function(){
					$(".howtouse-top .swiper-slide").eq(howtouseTop.previousIndex).find("iframe").attr("src", $(".howtouse-thumbs .swiper-slide").eq(howtouseTop.previousIndex).find("a").attr("data-mv"));
				}, 200);
			});

			setTimeout(function(){
				howtouseTop.thumbs.swiper = howtouseThumbs;
				howtouseTop.update();
				howtouseThumbs.update();
			},400);

			//similar swiper
			var similarSwiper = new Swiper(".swiper-container.similarswiper", {
				slidesPerView: 4,
				spaceBetween: 20,
				speed: 400,
				navigation: {
					nextEl: ".swiper-button-next-similar",
					prevEl: ".swiper-button-prev-similar",
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			//pic, tabs, bottombuybtn 고정
			$(window).scroll(function(event){
				detailProinfoScroll();
				detailTabsScroll();
				detailbuybtnScroll();
			});
			var proinfoTop;
			var tabsTop;
			var buybtnTop;
			setTimeout(function(){
				proinfoTop = $(".goods.detail .product .proinfo").outerHeight()-$(".goods.detail .product .propic").outerHeight();
				tabsTop = $(".goods.detail .pdetail .tabs").offset().top - $("#header").outerHeight();
				buybtnTop = $(".goods.detail .product .proinfo .btn-area").offset().top + $(".goods.detail .product .proinfo .btn-area").outerHeight() - $("#header").outerHeight();
				detailProinfoScroll();
				detailTabsScroll();
				detailbuybtnScroll();
			}, 100);
			//pic scroll
			function detailProinfoScroll(){
				var st = $(this).scrollTop();
				if ( st < proinfoTop ){
					$(".goods.detail .product .propic").css({"position":"fixed", "top":"150px"});
				}else{
					$(".goods.detail .product .propic").css({"position":"absolute", "top":+(proinfoTop+parseInt($(".goods.detail .product").css('padding-top')))+"px"});
				}
			}
			//tabs scroll
			function detailTabsScroll(){
				var st = $(this).scrollTop();
				$(".goods.detail .pdetail .tabs ul li").eq(0).addClass("active");
				if ( $(".goods.detail .pdetail > div").hasClass("petdoctor") ){
					var petdoctorTop = $(".goods.detail .pdetail .petdoctor").offset().top - $("#header").outerHeight() - $(".goods.detail .pdetail .tabs").outerHeight() - parseInt($(".goods.detail .pdetail .petdoctor").css('margin-top'));
					var petdoctorBottom = petdoctorTop + $(".goods.detail .pdetail .petdoctor").outerHeight() + $("#header").outerHeight() + $(".goods.detail .pdetail .tabs").outerHeight();
					if ( petdoctorTop <= st && petdoctorBottom > st ){
						$(".goods.detail .pdetail .tabs ul li").removeClass("active");
						$(".goods.detail .pdetail .tabs ul li.m-petdoctor").addClass("active");
					}
				}
				if ( $(".goods.detail .pdetail > div").hasClass("howtouse") ){
					var howtouseTop = $(".goods.detail .pdetail .howtouse").offset().top - $("#header").outerHeight() - $(".goods.detail .pdetail .tabs").outerHeight() - parseInt($(".goods.detail .pdetail .howtouse").css('margin-top'));
					var howtouseBottom = howtouseTop + $(".goods.detail .pdetail .howtouse").outerHeight() + $("#header").outerHeight() + $(".goods.detail .pdetail .tabs").outerHeight();
					if ( howtouseTop <= st && howtouseBottom > st ){
						$(".goods.detail .pdetail .tabs ul li").removeClass("active");
						$(".goods.detail .pdetail .tabs ul li.m-howtouse").addClass("active");
					}
				}
				if ( $(".goods.detail .pdetail > div").hasClass("review") ){
					var reviewTop = $(".goods.detail .pdetail .review").offset().top - $("#header").outerHeight() - $(".goods.detail .pdetail .tabs").outerHeight() - parseInt($(".goods.detail .pdetail .review").css('margin-top'));
					var reviewBottom = reviewTop + $(".goods.detail .pdetail .review").outerHeight() + $("#header").outerHeight() + $(".goods.detail .pdetail .tabs").outerHeight();
					if ( reviewTop <= st && reviewBottom > st ){
						$(".goods.detail .pdetail .tabs ul li").removeClass("active");
						$(".goods.detail .pdetail .tabs ul li.m-review").addClass("active");
					}
				}
				if ( $(".goods.detail .pdetail > div").hasClass("storypick") ){
					var storypickTop = $(".goods.detail .pdetail .storypick").offset().top - $("#header").outerHeight() - $(".goods.detail .pdetail .tabs").outerHeight() - parseInt($(".goods.detail .pdetail .storypick").css('margin-top'));
					var storypickBottom = storypickTop + $(".goods.detail .pdetail .storypick").outerHeight() + $("#header").outerHeight() + $(".goods.detail .pdetail .tabs").outerHeight();
					if ( storypickTop <= st && storypickBottom > st ){
						$(".goods.detail .pdetail .tabs ul li").removeClass("active");
						$(".goods.detail .pdetail .tabs ul li.m-storypick").addClass("active");
					}
				}
				if ( $(".goods.detail .pdetail > div").hasClass("detailinfo") ){
					var detailinfoTop = $(".goods.detail .pdetail .detailinfo").offset().top - $("#header").outerHeight() - $(".goods.detail .pdetail .tabs").outerHeight() - parseInt($(".goods.detail .pdetail .detailinfo").css('margin-top'));
					var detailinfoBottom = detailinfoTop + $(".goods.detail .pdetail .detailinfo").outerHeight() + $("#header").outerHeight() + $(".goods.detail .pdetail .tabs").outerHeight();
					if ( detailinfoTop <= st && detailinfoBottom > st ){
						$(".goods.detail .pdetail .tabs ul li").removeClass("active");
						$(".goods.detail .pdetail .tabs ul li.m-detailinfo").addClass("active");
					}
				}
				if ( $(".goods.detail .pdetail > div").hasClass("returninfo") ){
					var returninfoTop = $(".goods.detail .pdetail .returninfo").offset().top - $("#header").outerHeight() - $(".goods.detail .pdetail .tabs").outerHeight() - parseInt($(".goods.detail .pdetail .returninfo").css('margin-top'));
					var returninfoBottom = returninfoTop + $(".goods.detail .pdetail .returninfo").outerHeight() + $("#header").outerHeight() + $(".goods.detail .pdetail .tabs").outerHeight();
					if ( returninfoTop <= st && returninfoBottom > st ){
						$(".goods.detail .pdetail .tabs ul li").removeClass("active");
						$(".goods.detail .pdetail .tabs ul li.m-returninfo").addClass("active");
					}
					if ( returninfoBottom <= st ){
						$(".goods.detail .pdetail .tabs ul li").removeClass("active");
					}
				}
				if ( tabsTop < st ){
					if($('body').hasClass('ezwel-mode')){
						$(".goods.detail .pdetail .tabs").css({"position":"fixed", "top":"0px", "left":"50%", "transform":"translateX(-50%)"});
					}else{
						$(".goods.detail .pdetail .tabs").css({"position":"fixed", "top":+($("#header").outerHeight())+"px", "left":"50%", "transform":"translateX(-50%)"});
					}
				}else{
					$(".goods.detail .pdetail .tabs").css({"position":"absolute", "top":"0", "left":"0", "transform":"translateX(0)"});
				}
			}
			//tabs click
			$(".goods.detail .pdetail .tabs ul li").click(function(){
				var classname = $(this).attr("class").replace("active", "").replace("m-", "").trim();
				var tp = $(".goods.detail .pdetail ."+classname).offset().top - $("#header").outerHeight() - $(".goods.detail .pdetail .tabs").outerHeight();
				var tp2 = $(".goods.detail .pdetail ."+classname).offset().top - $(".goods.detail .pdetail .tabs").outerHeight();
				if($('body').hasClass('ezwel-mode')){
					$("html, body").animate({"scrollTop":+(tp2)+"px"}, 400);
				}else{
					$("html, body").animate({"scrollTop":+(tp-40)+"px"}, 400);
				}
			});
			function detailbuybtnScroll(){
				var st = $(this).scrollTop();
				if ( buybtnTop <= st ){
					$(".goods.detail .bottombuybtn").stop().animate({"bottom":"0"}, 200);
				}else{
					$(".goods.detail .bottombuybtn").stop().animate({"bottom":+(-$(".goods.detail .bottombuybtn").height()-$(".goods.detail .bottombuybtn .bbuybtn .btn-area").height())+"px"}, 200);
				}
			}
			//bottom option
			$(".goods.detail .bottombuybtn .btn-option").click(function(){
				if ( $(this).hasClass("active") ){
					$(".goods.detail .bottombuybtn .boptionarea").slideUp(200);
					$(this).removeClass("active");
				}else{
					$(".goods.detail .bottombuybtn .boptionarea").slideDown(400);
					$(this).addClass("active");
				}
			});
			//사이즈측정법
			$(".popdetailsize .tip-tabs li a").click(function(){
				$(".popdetailsize .tip-tabs li").removeClass("active");
				$(this).parent("li").addClass("active");
				if ( $(this).attr("data-mv") ){
					$(".popdetailsize .tip-mv").html('<iframe width="568" height="319" src="https://www.youtube.com/embed/'+$(this).attr("data-mv")+'?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
				}else{
					$(".popdetailsize .tip-mv").html('<img src="'+$(this).attr("data-pic")+'" alt="">');
				}
			});
			//정기배송담기 click
			$(".pro-club .regular").click(function(){
				$(".pro-club .club").prop("checked", false);
				if ( $(this).is(":checked") ){
					$(".pro-club .regular").prop("checked", true);
					fn.removeClass('.btn-area');
					fn.addClass('.btnarea-regular');
				}else{
					$(".pro-club .regular").prop("checked", false);
					fn.removeClass('.btn-area');
					fn.addClass('.btnarea-default');
				}
			});
			//클럽 장바구니 담기 click
			$(".pro-club .club").click(function(){
				$(".pro-club .regular").prop("checked", false);
				if ( $(this).is(":checked") ){
					$(".pro-club .club").prop("checked", true);
					fn.removeClass('.btn-area');
					fn.addClass('.btnarea-club');
				}else{
					$(".pro-club .club").prop("checked", false);
					fn.removeClass('.btn-area');
					fn.addClass('.btnarea-default');
				}
			});
		}

		//카테고리
		if ( path3 == "goods category" ){
			/* 카테고리 tab-area 없을 때 */
			if(!$('.goods.category > .inner .tab-area ul li').length){
				$('.goods.category > .inner .tab-area').addClass('notchild');
			}

			/* 상세검색 폴딩 */
			$('.inner-sort .btn-search').click(function(){
				$(".sort-filter > li").css({"width":+(100/$(".sort-filter li").length)+"%"});
				$(this).toggleClass('active');
				if($(this).hasClass('active')){
					$(".sort-filter").slideDown('fast');
					$(".filter-area").slideDown('fast');
				}else{
					$(".filter-area").slideUp('fast');
					$(".sort-filter").slideUp('fast');
				}
			});
			/* 체크박스 클릭 시 선택한 필터 목록 추가 */
			$('.sort-filter input[type="checkbox"]').click(function(){
				filterChkToggle($(this));
			});

			/* 초기화 버튼 */
			$('.btn-init').click(function(){
				filterInit();
			});
			/* 카테고리 filter 체크박스 이벤트 시 */
			function filterChkToggle(obj){
				var $obj = $(obj);
				var idx = obj.prop('id');
				var chkTxt = $(obj).closest('label').find('span').text();
				if($obj.prop('checked')){
					var txt = "<span>" + chkTxt + "<a href='javascript:void(0)' data-idx='" + idx + "'>삭제</a></span>"
					$('.filter-list').append(txt);
				}else{
					$('.filter-list span').each(function(){
						if(idx == $(this).find('a').attr('data-idx')){
							$(this).remove();
						}
					})
				}
			}

			/* 필터 초기화 */
			function filterInit(){
				$('.sort-filter label input[type=checkbox]').each(function(){
					$(this).prop('checked',false);
				});
				$('.filter-list').empty();
				if ( !$('.inner-sort .btn-search').hasClass("active") ){
					$(".filter-area").slideUp('fast');
				}
			}

			/* 필터 업데이트 */
			filterUpdate();
			function filterUpdate(){
				$('.sort-filter label input[type=checkbox]').each(function(){
					if($(this).prop('checked')){
						var chkTxt = $(this).closest('label').find('span').text();
						$('.filter-list').append("<span>" + chkTxt + "<a href='javascript:void(0)' data-idx='" + $(this).attr('id') + "'>삭제</a></span>");
					}
				});
			}

			//bom
			$(".goods.category .bom-btn .btn-openclose").click(function(){
				if ( $(this).hasClass("active") ){
					$(this).removeClass("active").text("닫기");
					$(".goods.category .bom-area").slideDown(400);
					$(".goods.category .bom-selected").slideDown(400);
				}else{
					$(this).addClass("active").text("열기");
					$(".goods.category .bom-area").slideUp(400);
					$(".goods.category .bom-selected").slideUp(400);
					$("html, body").animate({"scrollTop":"0px"}, 400);
				}
			});
			//bom div
			if ( $(".bom .swiper-container.swiperdiv .swiper-slide").length > 6 ){
				var snsSwiper = new Swiper(".swiper-container.swiperdiv", {
					slidesPerView: 6,
					spaceBetween: 65,
					navigation: {
						nextEl: $(this).find('.swiper-button-next-div'),
						prevEl: $(this).find('.swiper-button-prev-div')
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
			}else{
				$(".bom .swiper-button-next-div, .bom .swiper-button-prev-div").fadeOut(0);
				$(".bom .bom-div .swiperdiv .swiper-slide").css({"margin-left":"65px"});
				$(".bom .bom-div .swiperdiv .swiper-slide").eq(0).css({"margin-left":"3px"});
			}
			setTimeout(function(){
				$(".bom .bom-div").animate({"opacity":"1"}, 400);
			}, 500);
		}

		//스토리픽상세
		if ( path3 == "storypick detail" ){
			//sns
			if ( $(".sns-cont .swiper-container.snsswiper .swiper-slide").length > 1 ){
				var snsSwiper = new Swiper(".swiper-container.snsswiper", {
					loop: true,
					slidesPerView: 'auto',
					spaceBetween: 0,
					centeredSlides: true,
					navigation: {
						nextEl: $(this).find('.swiper-button-next-sns'),
						prevEl: $(this).find('.swiper-button-prev-sns')
					},
					pagination: {
						el: ".swiper-pagination-sns",
						clickable: true,
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
			}
			//댓글쓰기 바로가기
			$(".sns-cont .snsswiper .btn-comment").click(function(){
				var obj = $(this).attr("href");
				$("html, body").animate({"scrollTop":+($(obj).offset().top-$("#header").outerHeight())+"px"}, 400);
				$(obj).find("textarea").focus();
			});
		}

		//스토리픽상세 - slide type
		if ( path3 == "storypick detail-slide" ){
			$("body.storypick").css({"height":"100%"});
			$("body.storypick .sub").css({"height":"100%"});
			$(".storypick .sub #footer").fadeOut(0);
			var mv = new Array();
			$(".swiper-container.slideswiper .swiper-slide.mv").each(function(){
				mv[$(this).index()] = $(this).find(".info").html();
			});
			var slideSwiper = new Swiper(".swiper-container.slideswiper", {
				direction: 'vertical',
				slidesPerView: 1,
				mousewheel: true,
				simulateTouch: false,
				pagination: {
					el: ".swiper-pagination-slide",
					clickable: true,
					renderBullet: function (index, className) {
						var idx = 0;
						if ( index < 9 ){
							idx = "0"+(index+1);
						}else{
							idx = (index+1);
						}
						var pic = $(".slideswiper .swiper-slide").eq(index).find(".bg img").attr("src");
						return '<span class="' + className + '"><span class="pic"><img src="'+pic+'" alt=""></span>' + idx + '</span>';
					},
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			slideSwiper.on('slideChange', function () {
				$(".swiper-container.slideswiper .swiper-slide.mv .info").html("");
				if ( $(".swiper-container.slideswiper .swiper-slide").eq(slideSwiper.realIndex).hasClass("mv") ){
					$(".swiper-container.slideswiper .swiper-slide").eq(slideSwiper.realIndex).find(".info").html(mv[slideSwiper.realIndex]);
					slideSwiperResize();
				}
			});
			$(".slideswiper .swiper-pagination-slide .swiper-pagination-bullet").click(function(){
				fn.toggleClass('.swiper-thumbnail');
				fn.toggleClass(".btn-area .btn-slidelist");
			});
			$(".slideswiper .btn-area .btn-share").click(function(){
				$(".detail-slide .share-area").css({"left":+($(".slideswiper .btn-area .btn-share").offset().left)+"px"});
				setTimeout(function(){
					fn.toggleClass('.detail-slide .share-area');
					fn.toggleClass(".slideswiper .btn-area .btn-share");
				}, 200);
			});
			setTimeout(function(){
				slideSwiperResize();
			}, 100);
			$(window).resize(function(){
				slideSwiperResize();
			});
			function slideSwiperResize(){
				var wid = $(window).width();
				var hei = $(window).height()-100;
				if ( wid/hei >= (1920/980) ){
					$(".slideswiper .swiper-slide .bg img").css({"width":"100%", "height":"auto"});
				}else{
					$(".slideswiper .swiper-slide .bg img").css({"width":"auto", "height":"100%"});
				}
				$(".detail-slide .share-area").css({"left":+($(".slideswiper .btn-area .btn-share").offset().left)+"px"});
				if ( hei-225 <= 562 ){
					$(".swiper-container.slideswiper .swiper-slide.mv .info iframe").css({"width":+((hei-250)*1.779359)+"px", "height":+(hei-250)+"px"});
				}else{
					$(".swiper-container.slideswiper .swiper-slide.mv .info iframe").css({"width":"1000px", "height":"562px"});
				}
			}
		}

		//주문결제
		if ( path3 == "order ordersheet" ){
			//결제수단선택
			$(".pay-field .pay-div input:radio").click(function(){
				$(".pay-field > div").fadeOut(0);
				$(".pay-field .pay-div").fadeIn(0);
				$(".pay-field .pay-account input").eq(0).click();
				var paydiv = $(this).attr("data-paydiv");
				$(".pay-field ."+paydiv).fadeIn(0);
			});
			//현금영수증
			$(".pay-field .pay-account input:radio").click(function(){
				$(".pay-account > div").fadeOut(0);
				if ( $(this).attr("data-paydiv") ){
					$(".pay-account ."+$(this).attr("data-paydiv")).fadeIn(0);
				}
			});
			//scroll 결제정보
			var rareatop = $(".right-area").offset().top-$("#header").outerHeight();
			function ordersheetScroll(){
				var st = $(this).scrollTop();
				var endtop = $(document).height() - $(".right-area").outerHeight() - $("#footer").outerHeight() - $("#header").outerHeight()-$("#contents").css("padding-bottom").replace("px", "");
				if ( st < rareatop ){
					$(".right-area").css({"position":"absolute", "top":"14px", "right":"0", "bottom":"auto"});
				}else if ( st < endtop ){
					$(".right-area").css({"position":"fixed", "top":+$("#header").outerHeight()+"px", "right":+($(window).width()-$(".bottom-area").width())/2+"px", "bottom":"auto"});
				}else{
					$(".right-area").css({"position":"absolute", "top":"auto", "right":"0", "bottom":"0"});
				}
			}
			$(window).scroll(function(){
				ordersheetScroll();
			});
			$(window).resize(function(){
				ordersheetScroll();
			});
			setTimeout(function(){
				ordersheetScroll();
			}, 200);
			//달력
			$(document).mouseup(function(e){
				if ( !$("#from, .datecalform").is(e.target) && !$(".hasDatepicker").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-w").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-e").is(e.target) ){
					$(".datecalform").fadeOut(0);
				}
				if ( !$("#to, .datecalto").is(e.target) && !$(".hasDatepicker").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-w").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-e").is(e.target) ){
					$(".datecalto").fadeOut(0);
				}
				if ( !$(".datecalselect").is(e.target) && !$(".hasDatepicker").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-w").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-e").is(e.target) ){
					$(".datecalselect").fadeOut(0);
				}
			});
			$(".datecalform").datepicker({
				altField: "#from"
			}).on("change", function(){
				$(".datecalform").fadeOut(200);
			});
			$(".datecalto").datepicker({
				defaultDate: "+1m",
				altField: "#to"
			}).on("change", function(){
				$(".datecalto").fadeOut(200);
			});
			//datepicker click
			$("#from, .btn-calfrom").click(function(){
				$(".datecalform").fadeIn(400);
			});
			$("#to, .btn-calto").click(function(){
				$(".datecalto").fadeIn(400);
			});
			//deliverycycle
			$(".deliverycycle").change(function(){
				$(".direct-date").removeClass("active");
				$(".cyclediv").removeClass("active");
				$(".cyclediv."+$(this).val()).addClass("active");
			});
			//배송주기 직접선택
			$(".datecalselect").datepicker({
				altField: "#selectDate",
				minDate:4
			}).on("change", function(){
				$(".datecalselect").fadeOut(200);
				if ( $(".direct-date").hasClass("active") ){
				}else{
					$(".direct-date").addClass("active");
				}
				$("#selectDate").append('<a href="#" class="btn-datedel">'+this.value+'</a>');
			});
			$(".btn-calselect").click(function(){
				$(".datecalselect").fadeIn(400);
			});
			//선택배송일 삭제
			$(document).on('click', '.btn-datedel', function(e){
				$(this).remove();
				e.preventDefault();
				if ( $("#selectDate a").length <= 0 ){
					$(".direct-date").removeClass("active");
				}
			});
		}

		//클럽장바구니
		if ( path3 == "order cart club" ){
			//고정클럽설정
			$("#fixedClub").sortable();
			$("#fixedClub").disableSelection();
		}

		//마이페이지 lnb
		if($('#contents').hasClass('mypage')){
			//lnb active 초기화
			var depth1 =$('#contents').attr('class').split(" ");
			$('.lnb-area .lnb-depth1').each(function(){
				if($(this).attr('data-page')==depth1){
					$(this).addClass('active');
				}
			});
			if($('.lnb-depth1').hasClass('active')){
				var menuIndex = $('#contents').attr('data-index')
				$('.lnb-depth1.active .lnb-depth2 li').eq(menuIndex).addClass('active');
			}

			//lnb 초기화(active 메뉴 높이조정)
			$('.lnb-depth1 > a').each(function(){
				var obj = $(this).closest('.lnb-depth1');
				var depthHeight = obj.find('.lnb-depth2 li').length * obj.find('.lnb-depth2 li').height();
				if(obj.hasClass('active')){
					obj.find('.lnb-depth2').css({'height':depthHeight,'margin-top':'10px'});
				}else{
					obj.find('.lnb-depth2').css({'height':0,'margin-top':'6px'});
				}
			});

			//lnb 클릭이벤트
			$('.lnb-depth1 > a').click(function(){
				var obj = $(this).closest('.lnb-depth1');
				obj.toggleClass('active');
				var depthHeight = obj.find('.lnb-depth2 li').length * obj.find('.lnb-depth2 li').height();
				if(obj.hasClass('active')){
					obj.find('.lnb-depth2').stop().animate({'height':depthHeight,'margin-top':'10px'},400);
				}else{
					obj.find('.lnb-depth2').stop().animate({'height':0,'margin-top':'6px'},400);
				}
			});

			//등록 및 수정, 옵션 선택시 상품 테이블 출력
			$(document).on('change','select.prd-search',function(){
				var selTxt = $(this).val();
				var dataName;
				$(this).find('option').each(function(){
					if(selTxt == $(this).html()){
						dataName = $(this).attr('data-name');
					}
				})
				if(dataName == 'order'){
					$('table .generate').hide();
					$('table .generate input[type="text"]').val('');
					$('table .order').show();
				}else if(dataName == 'generate'){
					$('table .order').hide();
					$('table .order input[type="text"]').val('');
					$('table .generate').show();
				}else if(dataName == 'generate order' || dataName == 'order generate'){
					$('table .order input[type="text"], table .generate input[type="text"]').val('');
					$('table .order').show();
					$('table .generate').show();
				}else{
					$('table .generate input[type="text"],table .order input[type="text"]').val('');
					$('table .order, table .generate').hide();
				}
			});
		}

		if( path3 == "mypage mypage-home" ){
			var swiper1 = new Swiper('.swiper-regular .swiper-container',{
				slidesPerView: 2,
				spaceBetween: 20,
				loop: false,
				speed: 400,
				simulateTouch:false,
				navigation: {
					nextEl: $('.swiper-regular .swiper-button-next-prd'),
					prevEl: $('.swiper-regular .swiper-button-prev-prd')
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			var swiper2 = new Swiper('.swiper-pet .swiper-container',{
				loop: false,
				speed: 400,
				simulateTouch:false,
				navigation: {
					nextEl: $('.swiper-pet .swiper-button-next-prd'),
					prevEl: $('.swiper-pet .swiper-button-prev-prd')
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			var swiper3 = new Swiper('.swiper-view .swiper-container',{
				slidesPerView: 5,
				spaceBetween: 20,
				loop: false,
				speed: 400,
				simulateTouch:false,
				navigation: {
					nextEl: $('.swiper-view .swiper-button-next-prd'),
					prevEl: $('.swiper-view .swiper-button-prev-prd')
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			fn.ellipsis(".mypage-home .ellipsis");

			//이미지 크기 정렬 함수
			function profileImgUpdate(){
				$('.pet-img').removeClass('w-over h-over');
				$('.pet-img img').each(function(){
					if ( $(this).width() > $(this).height() ){
						$(this).css({"height":"100%"});
					}else{
						$(this).css({"width":"100%"});
					}
				});
			}
			profileImgUpdate();

		}

		if( path3 == "mypage payment" ){
			//달력
			$(document).mouseup(function(e){
				if ( !$("#from, .datecalform").is(e.target) && !$(".hasDatepicker").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-w").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-e").is(e.target) ){
					$(".datecalform").fadeOut(0);
				}
				if ( !$("#to, .datecalto").is(e.target) && !$(".hasDatepicker").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-w").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-e").is(e.target) ){
					$(".datecalto").fadeOut(0);
				}
				if ( !$(".datecalselect").is(e.target) && !$(".hasDatepicker").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-w").is(e.target) && !$(".ui-icon.ui-icon-circle-triangle-e").is(e.target) ){
					$(".datecalselect").fadeOut(0);
				}
			});
			$(".datecalform").datepicker({
				defaultDate: "-1m",
				altField: "#from"
			}).on("change", function(){
				$(".datecalform").fadeOut(200);
			});
			$(".datecalto").datepicker({
				altField: "#to"
			}).on("change", function(){
				$(".datecalto").fadeOut(200);
			});
			//datepicker click
			$("#from, .btn-calfrom").click(function(){
				$(".datecalform").fadeIn(400);
			});
			$("#to, .btn-calto").click(function(){
				$(".datecalto").fadeIn(400);
			});

			$('.date-form .btn-month button').click(function(){
				$('.date-form .btn-month button').removeClass('active');
				$(this).addClass('active');
			});

			if($('.cont-area').hasClass('regular-detail')){
				//deliverycycle
				$(".deliverycycle").change(function(){
					$(".direct-date").removeClass("active");
					$(".cyclediv").removeClass("active");
					if($(this).val()=='direct'){
						if($("#selectDate a").length > 0){
							$(".cycle-inp th").attr({'rowspan':2});
							$(".direct-date").addClass("active");
						}
					}else{
						$(".cycle-inp th").attr({'rowspan':''});
						$(".direct-date").removeClass("active");
					}
					$(".cyclediv."+$(this).val()).addClass("active");
				});

				//배송주기 직접선택
				$(".datecalselect").datepicker({
					altField: "#selectDate"
				}).on("change", function(){
					$(".datecalselect").fadeOut(200);
					if ( $(".direct-date").hasClass("active") ){
					}else{
						$(".cycle-inp th").attr({'rowspan':2});
						$(".direct-date").addClass("active");
					}
					$("#selectDate").append('<a href="#" class="btn-datedel">'+this.value+'</a>');
				});
				$(".btn-calselect").click(function(){
					$(".datecalselect").fadeIn(400);
				});

				//선택배송일 삭제
				$(document).on('click', '.btn-datedel', function(e){
					$(this).remove();
					e.preventDefault();
					if ( $("#selectDate a").length <= 0 ){
						$(".cycle-inp th").attr({'rowspan':''});
						$(".direct-date").removeClass("active");
					}
				});
			}
		}

		if ( path3 == "mypage active" ){
			$('.grade-stars a').click(function(){
				$(this).closest('.grade-stars').children('a').removeClass('active');
				$(this).prevAll().addClass('active');
				$(this).addClass('active');
				$(this).closest('.grade-stars').prop({'title':$(this).closest('.grade-stars').find('.active').length + '점'});
			});
		}

		if ( path3 == "mypage pet" ){
			//추천상품 슬라이드
			$('.pet-info .prd-list').each(function(){
				obj = $(this).find('.swiper-container');
				var swiper = new Swiper(obj, {
					slidesPerView: 5,
					spaceBetween: 15,
					loop: false,
					speed: 400,
					simulateTouch:false,
					navigation: {
						nextEl: $(this).find('.swiper-button-next-prd'),
						prevEl: $(this).find('.swiper-button-prev-prd')
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
			});
			$('.pet-info .pet-list li a').click(function(){
				fn.ellipsis(".pet-info .ellipsis");
			});
			fn.ellipsis(".pet-info .ellipsis");

			$('.pet-form .kind').on('change',function(e){
				if($('.pet-form .kind option:selected').hasClass('direct')){
					$('.direct-inp').addClass('active');
				}else{
					$('.direct-inp').removeClass('active');
				}
			});

			//이미지 크기 정렬 함수
			function profileImgUpdate(){
				$('.pet-img').removeClass('w-over h-over');
				$('.pet-img img').each(function(){
					if ( $(this).width() > $(this).height() ){
						$(this).css({"height":"100%"});
					}else{
						$(this).css({"width":"100%"});
					}
				});
			}
			profileImgUpdate();

			if ( $(".mypage.pet .pet-info .mybabe .babe-img figure img").width() > $(".mypage.pet .pet-info .mybabe .babe-img figure img").height() ){
				$(".mypage.pet .pet-info .mybabe .babe-img figure img").css({"height":"100%"});
			}else{
				$(".mypage.pet .pet-info .mybabe .babe-img figure img").css({"width":"100%"});
			}
			if($('.cont-area').hasClass('pet-form')){
				var fileTarget = $('.pet-form .file-area .upload-hidden');
				fileTarget.on('change', function(e){
					var value = document.getElementById('filename');
					if(value.files && value.files[0]){
						var reader = new FileReader();
						var imgSrc;
						reader.onload = function(){
							imgSrc = reader.result;
							if(value.files && value.files[0]){
								$('.pet-profile .pet-img img').attr({'src':imgSrc});
								setTimeout(function(){
									profileImgUpdate();
								},10);
							}
						};
						reader.readAsDataURL(event.target.files[0]);
					}
				});
			}
			//mypet_add
			$(document).on("change",".pet-form .chk-group label input[type='checkbox']",function(){
				if($(this).closest('label').hasClass('chk-none')){
					if($(this).prop('checked')){
						$(this).closest('.chk-group').children('label').not('.chk-none').children('input').prop({'checked':''});
					}else{
						$(this).closest('.chk-group').find('label.chk-none input').prop({'checked':'checked'});
					}
				}else{
					if($(this).prop('checked')){
						$(this).closest('.chk-group').find('label.chk-none input').prop({'checked':''});
					}else{
						var chkNone=0;
						$(this).closest('.chk-group').find('input').each(function(){
							if($(this).prop('checked')){
								chkNone+=1;
							}
						});
						if(chkNone==0){
							$(this).closest('.chk-group').find('label.chk-none input').prop({'checked':'checked'});
						}
					}
				}
			});
		}

		if ( path3 == "mypage club" ){
			//이미지 크기 정렬 함수
			function profileImgUpdate(){
				$('.profile-img').removeClass('w-over h-over');
				$('.profile-img img').each(function(){
					if ( $(this).width() > $(this).height() ){
						$(this).css({"height":"100%"});
					}else{
						$(this).css({"width":"100%"});
					}
				});
			}
			profileImgUpdate();
			if($('.cont-area').hasClass('detail')){
				var fileTarget = $('.file-area .upload-hidden');
				fileTarget.on('change', function(e){
					var value = document.getElementById('filename');
					if(value.files && value.files[0]){
						$('.popclubmake .file-area .upload-name').val(value.files[0].name);
					}
				});
			}
			if($('.cont-area').hasClass('main')){
				var fileTarget1 = $('#popClubMake .file-area .upload-hidden');
				fileTarget1.on('change', function(e){
					var value = document.getElementById('filename');
					if(value.files && value.files[0]){
						$('#popClubMake .file-area .upload-name').val(value.files[0].name);
					}
				});
				var fileTarget2 = $('#popClubImage .file-area .upload-hidden');
				fileTarget2.on('change', function(e){
					var value = document.getElementById('filename2');
					if(value.files && value.files[0]){
						$('#popClubImage .file-area .upload-name').val(value.files[0].name);
					}
				});
			}
		}

		//마이페이지 회원정보관리
		if ( path3 == "mypage members" ){
			$(document).ready(function(){
				//child 자녀정보관리 리스트
				$('.child .child-profile').removeClass('w-over h-over');
				$('.child .child-profile img').each(function(){
					if ( $(this).width() > $(this).height() ){
						$(this).css({"height":"100%"});
					}else{
						$(this).css({"width":"100%"});
					}
				});

				//child-add 자녀정보 추가페이지
				if($('.cont-area').hasClass('child-add')){
					var fileTarget = $('.child-add .file-area .upload-hidden');
					fileTarget.on('change', function(e){
						var value = document.getElementById('filename');
						if(value.files && value.files[0]){
							$(this).siblings('.upload-name').val(value.files[0].name);
						}
					});
				}
				//child-update 자녀정보 추가페이지
				if($('.cont-area').hasClass('child-update')){
					//이미지 크기 정렬 함수
					function profileImgUpdate(){
						$('.profile-img').removeClass('w-over h-over');
						$('.profile-img img').each(function(){
							if ( $(this).width() > $(this).height() ){
								$(this).css({"height":"100%"});
							}else{
								$(this).css({"width":"100%"});
							}
						});
					}
					profileImgUpdate();
					var fileTarget = $('.child-update .file-area .upload-hidden');
					fileTarget.on('change', function(e){
						var value = document.getElementById('filename');
						if(value.files && value.files[0]){
							var reader = new FileReader();
							var imgSrc;
							reader.onload = function(){
								imgSrc = reader.result;
								if(value.files && value.files[0]){
									$('.profile-img img').attr({'src':imgSrc});
									setTimeout(function(){
										profileImgUpdate();
									},10);
								}
							};
							reader.readAsDataURL(event.target.files[0]);
						}
					});
					$('.btn-whitegray.delete').click(function(){
						fileTarget.val('');
						$('.profile-img img').attr({'src':''});
					});
				}
			});
		}

		//이벤트 메인
		if ( path3 == "event index" ){
			//banner swiper
			if ( $(".swiper-container.eventswiper .swiper-slide").length > 1 ){
				var eventSwiper = new Swiper(".swiper-container.eventswiper", {
					loop: true,
					slidesPerView: 'auto',
					spaceBetween: 100,
					centeredSlides: true,
					navigation: {
						nextEl: ".swiper-button-next-event",
						prevEl: ".swiper-button-prev-event",
					},
					pagination: {
						el: '.swiper-pagination-event',
						clickable: true,
					},
					lazy: {
						loadPrevNext:true,
						loadPrevNextAmount:1
					}
				});
			}else{
				$(".eventswiper").css({"margin":"0 auto", "width":"1200px"});
				$(".swiper-button-prev-event, .swiper-button-next-event").fadeOut(0);
			}
		}

		//이벤트 detail
		if ( path3 == "event detail" ){
			$(".event .detail-pro .event-tabs a").click(function(){
				var obj = $(this).attr("href");
				$("html, body").animate({"scrollTop":+($(obj).offset().top-$("#header").outerHeight()+40)+"px"}, 400);
			});
		}

		//이벤트 - slide type
		if ( path3 == "event detail-slide" ){
			$("body").css({"height":"100%"});
			$("body .sub").css({"height":"100%"});
			$("body .sub #footer").fadeOut(0);
			var mv = new Array();
			$(".swiper-container.slideswiper .swiper-slide.mv").each(function(){
				mv[$(this).index()] = $(this).find(".info").html();
			});
			var slideSwiper = new Swiper(".swiper-container.slideswiper", {
				direction: 'vertical',
				slidesPerView: 1,
				mousewheel: true,
				simulateTouch: false,
				pagination: {
					el: ".swiper-pagination-slide",
					clickable: true,
					renderBullet: function (index, className) {
						var idx = 0;
						if ( index < 9 ){
							idx = "0"+(index+1);
						}else{
							idx = (index+1);
						}
						var pic = $(".slideswiper .swiper-slide").eq(index).find(".bg img").attr("src");
						return '<span class="' + className + '"><span class="pic"><img src="'+pic+'" alt=""></span>' + idx + '</span>';
					},
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			slideSwiper.on('slideChange', function () {
				$(".swiper-container.slideswiper .swiper-slide.mv .info").html("");
				if ( $(".swiper-container.slideswiper .swiper-slide").eq(slideSwiper.realIndex).hasClass("mv") ){
					$(".swiper-container.slideswiper .swiper-slide").eq(slideSwiper.realIndex).find(".info").html(mv[slideSwiper.realIndex]);
					slideSwiperResize();
				}
			});
			$(".slideswiper .swiper-pagination-slide .swiper-pagination-bullet").click(function(){
				fn.toggleClass('.swiper-thumbnail');
				fn.toggleClass(".btn-area .btn-slidelist");
			});
			$(".slideswiper .btn-area .btn-share").click(function(){
				$(".detail-slide .share-area").css({"left":+($(".slideswiper .btn-area .btn-share").offset().left)+"px"});
				setTimeout(function(){
					fn.toggleClass('.detail-slide .share-area');
					fn.toggleClass(".slideswiper .btn-area .btn-share");
				}, 200);
			});
			setTimeout(function(){
				slideSwiperResize();
			}, 100);
			$(window).resize(function(){
				slideSwiperResize();
			});
			function slideSwiperResize(){
				var wid = $(window).width();
				var hei = $(window).height()-100;
				if ( wid/hei >= (1920/980) ){
					$(".slideswiper .swiper-slide .bg img").css({"width":"100%", "height":"auto"});
				}else{
					$(".slideswiper .swiper-slide .bg img").css({"width":"auto", "height":"100%"});
				}
				$(".detail-slide .share-area").css({"left":+($(".slideswiper .btn-area .btn-share").offset().left)+"px"});
				if ( hei-225 <= 562 ){
					$(".swiper-container.slideswiper .swiper-slide.mv .info iframe").css({"width":+((hei-250)*1.779359)+"px", "height":+(hei-250)+"px"});
				}else{
					$(".swiper-container.slideswiper .swiper-slide.mv .info iframe").css({"width":"1000px", "height":"562px"});
				}
			}
		}

		//고객센터 faq
		if ( path3 == "cscenter faq" ){
			//faq search tag click
			$(".cscenter.faq .faq-search .faqsearch-field .search-tag a").click(function(){
				$(".cscenter.faq .faq-search .faqsearch-field input").val($(this).text());
			});
			//faq Q click
			$(".cscenter.faq .faq-list ul li .q").click(function(){
				if ( $(this).hasClass("active") ){
					$(this).next(".a").slideUp(300);
					$(this).removeClass("active");
				}else{
					$(this).next(".a").slideDown(400);
					$(this).addClass("active");
				}
			});
		}
		//etc 제휴/입점 안내
		if ( path3 == "etc proposal" ){
			var fileTarget1 = $('.file-area .upload-hidden');
			fileTarget1.on('change', function(e){
				var value = document.getElementById('filename');
				if(value.files && value.files[0]){
					$('.file-area .upload-name').val(value.files[0].name);
					if ( $(".file-area p").hasClass("file-end") ){
						$(".popupquestion .club-pic .file-end").remove();
					}
					$(".file-area").append('<p class="file-end">'+value.files[0].name+'<button type="button" class="btn-del">삭제</button></p>');
				}
			});
			$(".popupquestion").on("click", ".club-pic p.file-end .btn-del", function(){
				$('.popupquestion .file-area .upload-name').val('');
				$('.popupquestion .file-area .upload-hidden').val('');
				$(".popupquestion .club-pic .file-end").remove();
			});
		}
	}else if ( path2 == "main" && path1 != "home" ){
		//dailym swiper
		if ( $(".swiper-container.swiperdailym .swiper-slide").length == 1 ){
			$(".swiper-button-prev-dailym, .swiper-button-next-dailym, .dailym .mv-area .btn-prev, .dailym .mv-area .btn-next").fadeOut(0);
			$(".swiperdailym .swiper-slide").addClass("swiper-slide-active");
			var mv = $(".swiperdailym .swiper-slide").eq(0).find("a").attr("data-mv");
			var ti = $(".swiperdailym .swiper-slide").eq(0).find("a").attr("data-ti");
			$(".main .dailym .mv-area .mv").html('<iframe width="820" height="462" src="'+mv+'" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
			$(".main .dailym .mv-area .ti").html(ti);
		}else if ( $(".swiper-container.swiperdailym .swiper-slide").length <= 5 ){
			$(".main .dailym .swiperdailym").css({"height":"500px"});
			$(".main .dailym .swiperdailym .swiper-slide a").css({"cursor":"pointer"});
			var dailymSwiper = new Swiper(".swiper-container.swiperdailym", {
				slidesPerView: 'auto',
				loop: false,
				slidesOffsetBefore: 20,
				simulateTouch: false,
				direction: 'vertical',
				navigation: {
					nextEl: ".swiper-button-next-dailym",
					prevEl: ".swiper-button-prev-dailym",
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			$(".swiper-slide").click(function(){
				var idx = $(this).index();
				var mv = $(".swiperdailym .swiper-slide").eq(idx).find("a").attr("data-mv");
				var ti = $(".swiperdailym .swiper-slide").eq(idx).find("a").attr("data-ti");
				$(".swiperdailym .swiper-slide").removeClass("swiper-slide-active");
				$(".swiperdailym .swiper-slide").eq(idx).addClass("swiper-slide-active");
				$(".main .dailym .mv-area .mv").html('<iframe width="820" height="462" src="'+mv+'" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
				$(".main .dailym .mv-area .ti").html(ti);

				$(".dailym .mv-area .btn-prev, .dailym .mv-area .btn-next").removeClass('disabled');
				if(idx == 0){
					$(".dailym .mv-area .btn-prev").addClass('disabled');
				}else if(idx == $(".swiperdailym .swiper-slide").length-1){
					$(".dailym .mv-area .btn-next").addClass('disabled');
				}
			});
			$(".swiper-slide").eq(0).click();
			$(".swiper-button-prev-dailym, .swiper-button-next-dailym").fadeOut(0);

			$(".dailym .mv-area .btn-prev").click(function(){
				if($('.swiperdailym .swiper-slide-active').index() > 0 ){
					$('.swiperdailym .swiper-slide').eq($('.swiperdailym .swiper-slide-active').index()-1).click();
				}
			});
			$(".dailym .mv-area .btn-next").click(function(){
				if($('.swiperdailym .swiper-slide').length-1 != $('.swiperdailym .swiper-slide-active').index()){
					$('.swiperdailym .swiper-slide').eq($('.swiperdailym .swiper-slide-active').index()+1).click();
				}
			});
		}else{
			var dailymSwiper = new Swiper(".swiper-container.swiperdailym", {
				initialSlide: 1,
				slidesPerView: 'auto',
				slidesOffsetBefore: -35,
				simulateTouch: false,
				direction: 'vertical',
				centeredSlides: true,
				navigation: {
					nextEl: ".swiper-button-next-dailym",
					prevEl: ".swiper-button-prev-dailym",
				},
				lazy: {
					loadPrevNext:true,
					loadPrevNextAmount:1
				}
			});
			$(".swiper-slide").click(function(e){
				e.preventDefault();
				dailymSwiper.slideTo($(this).index());
			});
			dailymSwiper.on("slideChange", function(){
				var mv = $(".swiperdailym .swiper-slide").eq(dailymSwiper.realIndex).find("a").attr("data-mv");
				var ti = $(".swiperdailym .swiper-slide").eq(dailymSwiper.realIndex).find("a").attr("data-ti");
				$(".main .dailym .mv-area .mv").html('<iframe width="820" height="462" src="'+mv+'" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
				$(".main .dailym .mv-area .ti").html(ti);

				$(".dailym .mv-area .btn-prev, .dailym .mv-area .btn-next").removeClass('disabled');
				if(dailymSwiper.realIndex == 0){
					$(".dailym .mv-area .btn-prev").addClass('disabled');
				}else if(dailymSwiper.realIndex == $(".swiperdailym .swiper-slide").length-1){
					$(".dailym .mv-area .btn-next").addClass('disabled');
				}
			});
			$(".swiper-button-next-dailym").click();
			$(".dailym .mv-area .btn-prev").click(function(){
				$(".swiper-button-prev-dailym").click();
			});
			$(".dailym .mv-area .btn-next").click(function(){
				$(".swiper-button-next-dailym").click();
			});
		}

		//review Swiper
		var choicetot = $(".review .swiper-container.swiperchoice .swiper-slide").length;
		var choicemax = 0;
		var choiceidx = 0;

		var choiceloop = false;
		if(choicetot > 3){
			choiceloop = true;
		}

		var swiperchoiceSwiper = new Swiper(".review .swiper-container.swiperchoice", {
			slidesPerView: 'auto',
			spaceBetween: 0,
			centeredSlides: false,
			loop: choiceloop,
			observer: true,
			observeParents: true,
			pagination: {
				el: ".swiper-pagination-choice",
				clickable: true,
			},
			navigation: {
				nextEl: ".swiper-button-next-choice",
				prevEl: ".swiper-button-prev-choice",
			},
			lazy: {
				loadPrevNext:true,
				loadPrevNextAmount:6
			},
			on: {
			   lazyImageReady: function(e) {
				    $(e).find("a .pic").css({"height":+ $(e).find("a .pic img").height()+"px"});
			   }
			},
		});

		function choiceInit(){
			if ( $(window).width() < 1620 ){
				choicemax = 3;
				if ( choicetot <= choicemax ){
					$(".review .swiper-area").css({"margin":"0 auto", "width":"1200px"});
					$(".review .swiper-button-next-choice, .review .swiper-button-prev-choice").fadeOut(0);
					$(".review .swiper-area").css({"margin":"0 auto", "width":"1110px", "overflow":"hidden"});
					$(".review .swiper-slide").css({"width":"370px","padding":"0 10px"});
					$(".review .swiperchoice .swiper-slide").addClass("swiper-slide-hover").removeClass("swiper-slide-active");
				}else{
					$(".review .swiper-button-next-choice, .review .swiper-button-prev-choice").fadeIn(0);
					$(".review .swiper-area").css({"margin":"0 auto", "width":"1110px", "overflow":"hidden"});
					$(".review .swiper-slide").css({"width":"370px","padding":"0 10px"});
					$(".review .swiperchoice .swiper-slide").removeClass("swiper-slide-hover, swiper-slide-active");
					$(".main .review .btn-area").css({"width":"1200px"});
				}
			}else{
				choicemax = 4;
				if ( choicetot < choicemax ){
					$(".review .swiper-button-next-choice, .review .swiper-button-prev-choice").fadeOut(0);
					$(".review .swiper-area").css({"margin":"0 auto", "width":"1520px", "overflow":"hidden"});
					$(".review .swiper-slide").css({"width":"380px","padding":"0 15px"});
					$(".review .swiperchoice .swiper-slide").addClass("swiper-slide-hover").removeClass("swiper-slide-active");
				}else{
					$(".review .swiper-button-next-choice, .review .swiper-button-prev-choice").fadeIn(0);
					$(".review .swiper-area").css({"margin":"0 auto", "width":"1520px", "overflow":"hidden"});
					$(".review .swiper-slide").css({"width":"380px","padding":"0 15px"});
					$(".review .swiperchoice .swiper-slide").removeClass("swiper-slide-hover, swiper-slide-active");
					$(".main .review .btn-area").css({"width":"1620px"});
				}
			}
			$(".story-pick .swiper-area").animate({"opacity":"1"}, 400);
		}
		choiceInit();
		$(window).resize(function(){
			choiceInit();
		});
		/*
		setTimeout(function(){
			for( var i = 0 ; i < $(".main .review .swiperchoice .swiper-slide").length ; i++){
				$(".main .review .swiperchoice .swiper-slide").eq(i).find("a .pic").css({"height":+($(".main .review .swiperchoice .swiper-slide").eq(i).find("a .pic img").height())+"px"});
			}
		}, 500);
		*/
		$(".main .review .swiperchoice .swiper-slide > a .pic img").hover(function(){
			$(this).parent().addClass("hover");
		}, function(){
			$(this).parent().removeClass("hover");
		});

		//storypick Swiper
		var storypicktot = $(".story-pick .swiperstorypick .swiper-slide").length;
		var storypickmax = 0;
		var storypickidx = 0;
		function storypickInit(){
			if ( $(window).width() < 1620 ){
				storypickmax = 3;
				if ( storypicktot <= storypickmax ){
					$(".story-pick .swiper-area").css({"margin":"0 auto", "width":"1200px"});
					$(".story-pick .swiper-button-next-storypick, .story-pick .swiper-button-prev-storypick").fadeOut(0);
					$(".story-pick .swiperstorypick").css({"margin-left":"-15px"});
					$(".story-pick .swiperstorypick .swiper-slide").addClass("swiper-slide-hover").removeClass("swiper-slide-active");
				}else{
					$(".story-pick .swiper-button-next-storypick, .story-pick .swiper-button-prev-storypick").fadeIn(0);
					$(".story-pick .swiper-area").css({"margin":"0 auto", "width":"1090px", "overflow":"hidden"});
					$(".story-pick .swiperstorypick").css({"margin-left":+(-storypickidx*330)+"px"});
					$(".story-pick .swiperstorypick .swiper-slide").removeClass("swiper-slide-hover, swiper-slide-active");
					$(".story-pick .swiperstorypick .swiper-slide").eq(storypickidx+1).addClass("swiper-slide-active");
					$(".main .story-pick .btn-area").css({"width":"1200px"});
				}
			}else{
				storypickmax = 4;
				if ( storypicktot < storypickmax ){
					$(".story-pick .swiper-area").css({"margin":"0 auto", "width":"1200px"});
					$(".story-pick .swiper-button-next-storypick, .story-pick .swiper-button-prev-storypick").fadeOut(0);
					$(".story-pick .swiperstorypick").css({"margin-left":"-15px"});
					$(".story-pick .swiperstorypick .swiper-slide").addClass("swiper-slide-hover").removeClass("swiper-slide-active");
				}else if ( storypicktot <= storypickmax ){
					$(".story-pick .swiper-area").css({"margin":"0 auto", "width":"1410px"});
					$(".story-pick .swiper-button-next-storypick, .story-pick .swiper-button-prev-storypick").fadeOut(0);
					$(".story-pick .swiperstorypick .swiper-slide").addClass("swiper-slide-hover").removeClass("swiper-slide-active");
				}else{
					$(".story-pick .swiper-button-next-storypick, .story-pick .swiper-button-prev-storypick").fadeIn(0);
					$(".story-pick .swiper-area").css({"margin":"0 auto", "width":"1520px", "overflow":"hidden"});
					$(".story-pick .swiperstorypick .swiper-slide").removeClass("swiper-slide-hover, swiper-slide-active");
					if ( storypickidx >= (storypicktot-storypickmax) ){
						$(".story-pick .swiperstorypick").css({"margin-left":+(-(storypickidx-1)*330)+"px"});
						$(".story-pick .swiperstorypick .swiper-slide").eq(storypickidx).addClass("swiper-slide-active");
						$(".story-pick .swiperstorypick .swiper-slide").eq(storypickidx+2).addClass("swiper-slide-active");
					}else{
						$(".story-pick .swiperstorypick").css({"margin-left":+(-storypickidx*330)+"px"});
						$(".story-pick .swiperstorypick .swiper-slide").eq(storypickidx+1).addClass("swiper-slide-active");
						$(".story-pick .swiperstorypick .swiper-slide").eq(storypickidx+3).addClass("swiper-slide-active");
					}
//					$(".story-pick .swiperstorypick").css({"margin-left":+(-storypickidx*330)+"px"});
					$(".main .story-pick .btn-area").css({"width":"1620px"});
				}
			}
			$(".story-pick .swiper-area").animate({"opacity":"1"}, 400);
		}
		storypickInit();
		$(window).resize(function(){
			storypickInit();
		});
		$(".story-pick .swiper-button-prev-storypick").click(function(){
			if ( storypickidx > 0 ){
				storypickidx--;
				storypickGo();
			}else{
				storypickidx = 0;
			}
		});
		$(".story-pick .swiper-button-next-storypick").click(function(){
			if ( storypickidx < storypicktot - storypickmax ){
				storypickidx++;
				storypickGo();
			}else{
				storypickidx = storypicktot - storypickmax;
			}
		});
		var storypickAuto = setInterval(function(){
			$(".story-pick .swiper-button-next-storypick").click();
		}, 5000);
		function storypickGo(){
			clearInterval(storypickAuto);
			$(".story-pick .swiperstorypick .swiper-slide").removeClass("swiper-slide-active");
			$(".story-pick .swiperstorypick .swiper-slide").eq(storypickidx+1).addClass("swiper-slide-active");
			$(".story-pick .swiperstorypick .swiper-slide").eq(storypickidx+3).addClass("swiper-slide-active");
			$(".story-pick .swiperstorypick").stop().animate({"margin-left":+(-storypickidx*330)+"px"}, function(){
				storypickAuto = setInterval(function() {
					$(".story-pick .swiper-button-next-storypick").click();
				}, 5000);
			});
			if ( storypickidx == 0 ){
				$(".story-pick .swiper-button-prev-storypick").css({"opacity":".2"});
				$(".story-pick .swiper-button-next-storypick").css({"opacity":".5"});
			}else if ( storypickidx >= storypicktot - storypickmax ){
				$(".story-pick .swiper-button-prev-storypick").css({"opacity":".5"});
				$(".story-pick .swiper-button-next-storypick").css({"opacity":".2"});
			}else{
				$(".story-pick .swiper-button-prev-storypick").css({"opacity":".5"});
				$(".story-pick .swiper-button-next-storypick").css({"opacity":".5"});
			}
		}
	}else if ( path2 == "main" ){
		//main wing banner
		$(".main .banner-wing .ban").css({"width":+($(".main .banner-wing .ban img").width())+"px", "margin-left":+(-$(".main .banner-wing .ban img").width()-10)+"px"});
	}
});
