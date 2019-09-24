/**
* --------------------------------
* FUNCTION JS
* --------------------------------
*/

var fn = (function() {
    'use strict';

    return {
		//popup
        popupOpen : function(obj,num){
            if (typeof obj === 'object') {
                obj = obj.attributes.href.value
            }

            var $obj = $(obj);

            $obj.fadeIn(200);
            if(num > 0){
                $obj.find('.popinner').animate({'opacity':'1', 'top':+ (num + 300) +'px'},0);
                $obj.addClass('popNumChk');
                setTimeout(function(){
    	            $obj.find('.popinner').animate({'opacity':'1', 'top':+ num +'px'},300);
    			}, 300);
            }else{
                setTimeout(function(){
    				if ( $(window).height() < $obj.find('.popinner').height() ){
    					$obj.find('.popinner .scrollbar-macosx').css({"height":+($(window).height()-150)+"px"});
    				}
    	            $obj.find('.popinner').animate({'opacity':'1', 'top':+(($(window).height()-$obj.find('.popinner').outerHeight())/2)+'px'},300);
    			}, 300);
            }
            //fn.scroll('disabled');
        },

        popupClose : function(callback){

			$('.popup').each(function(){
				var $obj = $(this);
				if ( !$obj.hasClass("popaddr") && !$obj.hasClass('popNumChk')){
					$obj.find('.popinner').animate({'opacity':'0', 'top':'50%'},300);
					$obj.fadeOut(200);
				}
                if($obj.hasClass('popNumChk')){
                    $obj.find('.popinner').animate({'opacity':'0', 'top': $obj.find('.popinner').position().top+300},300);
                    $obj.fadeOut(200);
                }
			});

            //fn.scroll('enabled');

            if (callback) {
                setTimeout(function(){
                    callback();
                }, 400);
            }
        },

		//말줄임 처리
		ellipsis: function(obj) {
			$(obj).each(function() {
				var obj = $(this),
					tempTxt = obj.text(),
					tempTxtArr = tempTxt.split(''),
					tempTxtLen = tempTxt.length,
					ellipsisTxt = '',
					ellipsisTxtLen;

				obj.empty();
				obj.append('<div></div>');

				for (var i = 0; i <= tempTxtLen - 1; i++) {
					if (obj.height() >= obj.children().height()) {
						ellipsisTxt += tempTxtArr[i];
						obj.children().text(ellipsisTxt);
					}
				}

				if (obj.height() < obj.children().height()) {
					ellipsisTxtLen = ellipsisTxt.length;
					ellipsisTxt = ellipsisTxt.substr(0, ellipsisTxtLen - 5);
					ellipsisTxt += '...';
				}

				obj.empty();
				obj.text(ellipsisTxt);
			});
		},

		//탭메뉴
        tabMenu : function(e, obj){
            var $obj = $(obj),
                objHref = obj.attributes.href.value;

            if (objHref.indexOf('#') != -1) {
                e.preventDefault();

                $obj.parent().find('a').removeClass('active');
    			$obj.addClass('active');

    			$obj.parent().parent().children('.tab-contents').removeClass('active on').stop().fadeOut(0);
    			$(objHref).addClass('active').stop().fadeIn(800);
            }
        },

        //toggleClass
		toggleClass : function(obj){
            $(obj).toggleClass("active");
        },

        //addClass
		addClass : function(obj){
            $(obj).addClass("active");
        },

        //removeClass
		removeClass : function(obj){
            $(obj).removeClass("active");
        },

		//selectbox
		selectboxDropdowns : function(){
			$('select').each(function(i, select){
				if (!$(this).next().hasClass('dropdown')){
					$(this).after('<div class="dropdown ' + ($(this).attr('class') || '') + '" tabindex="0"><span class="current"></span><div class="list"><ul></ul></div></div>');
					var dropdown = $(this).next();
					var options = $(select).find('option');
					var selected = $(this).find('option:selected');
					var disabled = $(this).find('option:disabled');
					if ( selected.attr("data-color") ){
						dropdown.find('.current').html('<img src="' + selected.attr("data-color") + '" alt="">' + selected.text());
					}else{
						dropdown.find('.current').html(selected.data('display-text') || selected.text());
					}
					options.each(function(j, o){
						var display = $(o).data('display-text') || '';
						if ( $(o).attr("data-color") ){
							dropdown.find('ul').append('<li class="option ' + ($(o).is(':selected') ? 'selected' :'')  + ($(o).is(':disabled') ? 'disabled' :'') + '" data-value="' + $(o).val() + '" data-display-text="' + display + '"><img src="' + $(o).attr("data-color") + '" alt="">' + $(o).text() + '</li>');
						}else{
							dropdown.find('ul').append('<li class="option ' + ($(o).is(':selected') ? 'selected' :'')  + ($(o).is(':disabled') ? 'disabled' :'') + '" data-value="' + $(o).val() + '" data-display-text="' + display + '">' + $(o).text() + '</li>');
						}
					});
				}
			});
		},

		//addSelect
		addSelect : function(obj, data){
			$(obj).append(data);
			fn.selectboxDropdowns();
		},

		//removeSelect
		removeSelect : function(obj){
			$(obj).remove();
		},

		//changeSelect
		changeSelect : function(obj, idx){
			$(obj+" option:eq("+idx+")").attr('selected', 'selected');
			$(obj+".dropdown ul li").removeClass("selected");
			$(obj+".dropdown ul li").eq(idx).addClass("selected");
			$(obj+".dropdown .current").html($(obj+".dropdown ul li").eq(idx).text());
		},

		//굿즈 옵션 수량 올리기
        optionEaUp : function(obj){
            var $obj = $(obj),
                eaVal = parseInt($obj.siblings('input').val());

            eaVal++;
            $obj.siblings('input').val(eaVal);
        },

        //굿즈 옵션 수량 내리기
        optionEaDown : function(obj){
            var $obj = $(obj),
                eaVal = parseInt($obj.siblings('input').val());

            if (eaVal > 1) {
                eaVal--;
                $obj.siblings('input').val(eaVal);
            }
        },

		//alterror message
        altError : function(obj, msg){
            var $this = $(obj);
			$this.parent().append('<p class="alterror">'+msg+'</p>');
        },

		//altErrorClear
		altErrorClear : function(){
			$(".alterror").remove();
		},

		//mynotice
		myPetNotice : function(){
			$("#header .hperson .person-area .mypet-notice .petls .petlist .petinfo .ls a").each(function(){
				if ( $(this).find("strong").height() > 24 ){
					fn.ellipsis($(this).find("strong"));
					$(this).find("span").css({"max-height":"20px", "text-overflow":"ellipsis", "white-space":"nowrap"});
				}else{
					$(this).find("strong").css({"max-height":"24px", "text-overflow":"ellipsis", "white-space":"nowrap"});
					$(this).find("span").css({"max-height":"40px"});
					fn.ellipsis($(this).find("span"));
				}
			});
		},
    }
})();

// 새창 띄우기 scroll no
function owScrollNo(xurl, tar, wid, hei, t, l){
	set = 'width='+wid+',height='+hei+',top='+t+',left='+l+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no';
	win = window.open(xurl,tar,set);
};
// 새창 띄우기 scroll yes
function owScrollYes(xurl, tar, wid, hei, t, l){
	set = 'width='+wid+',height='+hei+',top='+t+',left='+l+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no';
	win = window.open(xurl,tar,set);
};
// 새창 센터띄우기 scroll no
function owScrollNoCenter(xurl, tar, wid, hei){
	var winl = (screen.width - wid) / 2;
	var wint = (screen.height - hei) / 2;
	set = 'width='+wid+',height='+hei+',top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no';
	win = window.open(xurl,tar,set);
};
// 새창 센터띄우기 scroll yes
function owScrollYesCenter(xurl, tar, wid, hei){
	var winl = (screen.width - wid) / 2;
	var wint = (screen.height - hei) / 2;
	set = 'width='+wid+',height='+hei+',top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no';
	win = window.open(xurl,tar,set);
};
// 팝업창 닫기
function popWinClose(){
	window.close();
};
// setCookie
function setCookie( name, value, expiredays ) {
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}
//쿠키값을 가져오는 함수
function getCookie(name) {
   var from_idx = document.cookie.indexOf(name+'=');
   if (from_idx != -1) {
	  from_idx += name.length + 1
	  to_idx = document.cookie.indexOf(';', from_idx)

	  if (to_idx == -1) {
			to_idx = document.cookie.length
	  }
	  return unescape(document.cookie.substring(from_idx, to_idx))
   }
}
// 체크후 닫기버튼을 눌렀을때 쿠키를 만들고 창을 닫습니다
function closeBanner(obj, cookieidx){
	if ( $(obj).find("input:checkbox[name='oneday']").is(":checked") ){
		setCookie( cookieidx, "no" , 1);
	}
	$(obj).removeClass("active");
	if ( obj == ".banner-belt"){
		$("#header").css({"position":"fixed", "top":"0"});
		$("#header .subnav").css({"top":"100px"});
	}
}
