	function getContextPath(){
	    var offset=location.href.indexOf(location.host)+location.host.length;
	    var ctxPath=location.href.substring(offset,location.href.indexOf('/',offset+1));
	    return ctxPath;
	}
/*
	// 장바구니 저장
	function addCart(goodsNo, goodsCnt){
		if($.trim(goodsNo) == ""){
			alert("상품정보가 없습니다!");
			return false;
		}
		
		if(!$.isNumeric(goodsCnt)){
			alert("수량을 확인하세요!");
			return false;
		}

		var arr = new Array();
		var obj = new Object();
		
		obj.goodsNo = goodsNo;
		obj.goodsCnt = goodsCnt;
		obj.sessionId = getSessionId();
		
		arr.push(obj);
		
		addCartObject(arr);
	}
*/	
	// 장바구니 저장
	function addCartObject(arrayOfGoods){
		var arrObjStr = JSON.stringify(arrayOfGoods);
		
		$.ajax({			
			url: getContextPath()+"/ajax/cart/addCartAjax.do",
		 	data: arrObjStr,
		 	type: "post",
		 	async: false,
		 	cache: false,
	        dataType : 'json',
	        contentType: "application/json", 
		 	error: function(request, status, error){ 
		 		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
			},
			success: function(data){
				if(data.result == true){
					if(data.msg != ""){
						var cartCnt = Number(uncomma($(".cartCnt:eq(0)").text()));
						$(".cartCnt").text(comma(cartCnt+1));

						if(confirm(data.msg)){
							location.href=getContextPath()+"/cart.do";
						}
					}
					return true;
				}else{
					if(data.msg != ""){
						alert(data.msg);
					}
					return false;
				}
			 }
		});
	}

	// 찜하기 (상품)
	function addWishObject(arrayOfGoods, t){
		var arrObjStr = JSON.stringify(arrayOfGoods);
		
		$.ajax({
			url: getContextPath()+"/ajax/wish/addWishAjax.do",
		 	data: arrObjStr,
		 	type: "post",
		 	async: false,
		 	cache: false,
		 	dataType : 'json',
	        contentType: "application/json", 
		 	error: function(request, status, error){
		 		didSubmit = false;	// 버튼 연타 방지 초기화
		 		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
			 },
			 success: function(data){
				 if(data.result == true){					 
					 $(t).removeClass("active").addClass("active");  //성공시버튼 active
					 if(data.msg != ""){
						didSubmit = false;	// 버튼 연타 방지 초기화
						alert(data.msg);
					}
				 }else{
					 if(data.errorCode == "99"){
						if(confirm("찜하려면 로그인 해야 합니다. 로그인 하시겠습니까?")){
							location.href=getContextPath()+"/login/loginPage.do?refererYn=Y"; 
						}
					 }else{
						 if(data.msg != ""){
							 didSubmit = false;	// 버튼 연타 방지 초기화
							 alert(data.msg);
						 }
					 }
				 }

			 }
		});
	}
	

	// 찜하기 삭제 (상품)
	function deleteWishObject(arrayOfGoods, t){
		var arrObjStr = JSON.stringify(arrayOfGoods);
		
		$.ajax({
			url: getContextPath()+"/ajax/wish/deleteWishAjax.do",
		 	data: arrObjStr,
		 	type: "post",
		 	async: false,
		 	cache: false,
		 	dataType : 'json',
	        contentType: "application/json", 
		 	error: function(request, status, error){
		 		didSubmit = false;	// 버튼 연타 방지 초기화
		 		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
			 },
			 success: function(data){
				 if(data.result == true){					 
					 $(t).removeClass("active");  //성공시버튼 active
					 if(data.msg != ""){
						didSubmit = false;	// 버튼 연타 방지 초기화
						alert(data.msg);
					}
				 }else{
					 if(data.errorCode == "99"){
						if(confirm("찜하려면 로그인 해야 합니다. 로그인 하시겠습니까?")){
							location.href=getContextPath()+"/login/loginPage.do?refererYn=Y"; 
						}
					 }else{
						 if(data.msg != ""){
							 didSubmit = false;	// 버튼 연타 방지 초기화
							 alert(data.msg);
						 }
					 }
				 }

			 }
		});
	}
	
	// 찜하기 (스토리)
	function addWishStoryObject(arrayOfGoods, t){
		var arrObjStr = JSON.stringify(arrayOfGoods);
		
		$.ajax({
			url: getContextPath()+"/ajax/wish/addStoryWishAjax.do",
		 	data: arrObjStr,
		 	type: "post",
		 	async: false,
		 	cache: false,
		 	dataType : 'json',
	        contentType: "application/json", 
		 	error: function(request, status, error){
		 		didSubmit = false;	// 버튼 연타 방지 초기화
		 		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
			 },
			 success: function(data){
				 if(data.result == true){					 
					 $(t).removeClass("active").addClass("active");  //성공시버튼 active
					 if(data.msg != ""){
						didSubmit = false;	// 버튼 연타 방지 초기화
						alert(data.msg);
					}
				 }else{
					 if(data.errorCode == "99"){
						if(confirm("찜하려면 로그인 해야 합니다. 로그인 하시겠습니까?")){
							location.href=getContextPath()+"/login/loginPage.do?refererYn=Y"; 
						}
					 }else{
						 if(data.msg != ""){
							 didSubmit = false;	// 버튼 연타 방지 초기화
							 alert(data.msg);
						 }
					 }
				 }

			 }
		});
	}
	// 찜하기 삭제 (스토리)
	function deleteWishStoryObject(arrayOfGoods, t){
		var arrObjStr = JSON.stringify(arrayOfGoods);
		
		$.ajax({
			url: getContextPath()+"/ajax/wish/deleteStoryWishAjax.do",
		 	data: arrObjStr,
		 	type: "post",
		 	async: false,
		 	cache: false,
		 	dataType : 'json',
	        contentType: "application/json", 
		 	error: function(request, status, error){
		 		didSubmit = false;	// 버튼 연타 방지 초기화
		 		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
			 },
			 success: function(data){
				 if(data.result == true){						 
					 $(t).removeClass("active");  //성공시버튼 active 삭제
					 
					 if(data.msg != ""){
						didSubmit = false;	// 버튼 연타 방지 초기화
						alert(data.msg);
					}
				 }else{
					 if(data.errorCode == "99"){
						if(confirm("찜하려면 로그인 해야 합니다. 로그인 하시겠습니까?")){
							location.href=getContextPath()+"/login/loginPage.do?refererYn=Y"; 
						}
					 }else{
						 if(data.msg != ""){
							 didSubmit = false;	// 버튼 연타 방지 초기화
							 alert(data.msg);
						 }
					 }
				 }

			 }
		});
	}
	
	// 바로 구매
	function orderNow(arrayOfGoods){
		$.ajax({			
			url: getContextPath()+"/ajax/cart/cartOrderAjax.do",
		 	type: "post",
		 	async: false,
		 	cache: false,
		 	contentType: "application/x-www-form-urlencoded; charset=UTF-8",  
		 	error: function(request, status, error){ 
		 		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
			},
			success: function(data){
				if(data.result == true){
					$("#commonOrderGoodsInfoListStr").val(JSON.stringify(arrayOfGoods));
					var frm = document.commonOrderForm;
					$("#commonSessionId").val(getSessionId());
					frm.action=getContextPath()+"/order/cartOrderProc.do";
					frm.submit();
				}else{
					if(data.msg != ""){
						alert(data.msg);
					}
				}
			 }
		});
	}

	//찜하기 기능
	function likebtnBindandDisplay(area) {
		$(area+'.btn-like, .btn-wish').unbind('click');
		
		//찜하기
		$(area+'.btn-like, .btn-wish').bind('click', function() { 
			var arr = new Array();

			var goodsNo = $(this).data("goodsno");
			var storyIdx = $(this).data("storyidx");
			
			if ((typeof storyIdx != 'undefined') && (storyIdx != '')) {
				arr.push(storyIdx);
				if ($(this).hasClass("active") ) {
					deleteWishStoryObject(arr, $(this));
				} else {
					addWishStoryObject(arr, $(this));
				}
			} else {
				arr.push(goodsNo);
				if ($(this).hasClass("active") ) {
					deleteWishObject(arr, $(this));
				} else {
					addWishObject(arr, $(this));
				}									
			}
		});
		
		//찜하기 active
		if ($(area+'.btn-like, .btn-wish').length > 0) {
			$.ajax({			
				url: getContextPath()+"/ajax/wish/getWishListAjax.do",
			 	type: "post",
			 	async: false,
			 	cache: false,
			 	contentType: "application/x-www-form-urlencoded; charset=UTF-8",  
			 	error: function(request, status, error){ 			 		
				},
				success: function(data){
					if(data.result == true){
						if (data.resultList.length > 0 || data.resultList2.length > 0)
						{	
							$(area+' .btn-like, .btn-wish').each(function(idx) {
								var goodsNo = $(this).data("goodsno");
								var storyIdx = $(this).data("storyidx");								
								//스토리픽 (resultList2)
								if ((typeof storyIdx != 'undefined') && (storyIdx != '')) {
									var result = $.grep(data.resultList2, function(e){ return e.storyIdx == storyIdx; });
									
									if (result.length != 0) {							
										$(this).removeClass("active").addClass("active");  //성공시버튼 active
									}	
								} else if ((typeof goodsNo != 'undefined') && (goodsNo != '')) {
								//상품찜	(resultList)
									var result = $.grep(data.resultList, function(e){ return e.goodsNo == goodsNo; });
									if (result.length != 0) {
										$(this).removeClass("active").addClass("active");  //성공시버튼 active
									}
								}
							});
						}
					}
				 }
			});
		}

	}
	
	
	$(document).ready(function() {

		likebtnBindandDisplay('');
		
	});

    
	
