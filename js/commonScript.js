// 새창 센터띄우기 scroll yes
var winRef;
function owScrollYesCenter(xurl, tar, wid, hei){
	var winl = (screen.width - wid) / 2;
	var wint = (screen.height - hei) / 2;
	set = 'width='+wid+',height='+hei+',top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no';
	
	if(winRef == null){
		winRef = window.open(xurl,tar,set);
	}else{
		if (winRef.closed == false) {
			winRef.focus();
		}else{
			winRef = window.open(xurl,tar,set);
		}
	}
};

//	새창 submit 
function submitPopup(frm, url, formName, wid, hei, top, left){
	var winl;
	var wint;
	
	if (typeof top == "undefined" && typeof left == "undefined"){
		winl = (screen.width - wid) / 2;
		wint = (screen.height - hei) / 2;
	}else{
		wint = top;
		winl = left;
	}
	
	newOpen = window.open("" ,formName,'width='+wid+',height='+hei+',top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no');
	frm.action = url; 
	frm.method = "post";
	frm.target = formName;
	frm.submit();
}

//	숫자만 입력 가능
function createNumeric(selector) {
//	$(selector).attr("disabled",false); 
	jQuery(selector).css('imeMode','disabled').keypress(function(event) {
		if(event.which && (event.which < 48 || event.which > 57) ) {
			event.preventDefault();
		}
	}).keyup(function(){
		if( jQuery(this).val() != null && jQuery(this).val() != '' ) {
			jQuery(this).val( jQuery(this).val().replace(/[^0-9,.]/g, '') );
		}
	});
}

// 소수점까지 입력가능
function createDouble(selector) {
	$(selector).attr("disabled",false); 
	jQuery(selector).css('imeMode','disabled').keypress(function(event) {
		if(event.which && (event.which < 46 || event.which > 57 || event.which ==47) ) {
			event.preventDefault();
		}
	}).keyup(function(){
		if( jQuery(this).val() != null && jQuery(this).val() != '' ) {
			jQuery(this).val( jQuery(this).val().replace(/[^0-9,.]/g, '') );
		}
	});
} 

// 일반전화 유효성 체크
function telCheck($this){
	var regExp = /^\d{2,3}-\d{3,4}-\d{4}$/;
	if(regExp.test($this) == false) {  
	    return false;  
	} else {  
		return true;
	}
}

// 휴대폰 유효성 체크
function phoneCheck($this){
	var regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
	if(regExp.test($this) == false) {  
	    return false;  
	} else {  
		return true;
	}
}

// 이메일 유효성 체크
function emailCheck($this){
	var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	
	if(regex.test($this) == false) {  
	    return false;  
	} else {  
		return true;
	}
}

// 첨부파일 확장자, 용량 체크
function fileCheck($this, type, sizeType){     
	var agt = navigator.userAgent.toLowerCase();
	var fileName = $($this).val();
	var maxSize = "";
	
	// sizeType A : 5Mb, B : 10Mb
	if(sizeType == "A"){		
		maxSize = 5242880;				//5Mb
	}else if(sizeType == "B"){
		maxSize = 10485760;			//10Mb
	}
	
	if (agt.indexOf("msie") != -1) {
		 if(fileName != ""){
			var myFSO = new ActiveXObject("Scripting.FileSystemObject");
			var filepath = $($this).val();
			var thefile = myFSO.getFile(filepath);
			var size = thefile.size;
			if(size > maxSize){
				 $($this).replaceWith( $this = $($this).clone( true ) );   
				 return callbackFileCheck("1");	//용량 초과시
			 }       
		 }
	}else{
		if(fileName != ""){
			var upfiles = document.getElementById($this.id);
			if (upfiles.files.length > 0) {
				var size = document.getElementById($this.id).files[0].size; 
				 if(size> maxSize){
					 $($this).val(""); 
					 return callbackFileCheck("1");	//용량 초과시
				 }
			}
		}
	}   
	 var fileFormat = fileName.substring(fileName.lastIndexOf(".")+1).toLowerCase(); 
	 if(fileName != ""){
		 if(type =="image"){																							
			 if(fileFormat !="gif" && fileFormat !="jpg" && fileFormat !="jpeg" && fileFormat !="png"){ 
				 if (agt.indexOf("msie") != -1) {
					 $($this).replaceWith( $this = $($this).clone( true ) );  //첨부파일 삭제
				 }else{ 
					 $($this).val("");
				 }  
				 return callbackFileCheck("2");		//이미지 파일 첨부
			 } 
		 }else if(type =="document"){																							
			 if(fileFormat !="hwp" && fileFormat !="xls" && fileFormat !="xlsx" && fileFormat !="ppt" && fileFormat !="pptx"  && fileFormat !="doc"  && fileFormat !="docx"  && fileFormat !="txt" && fileFormat !="zip"  ){ 
				 if (agt.indexOf("msie") != -1) {
					 $($this).replaceWith( $this = $($this).clone( true ) );  //첨부파일 삭제
				 }else{ 
					 $($this).val("");
				 }  
				 return callbackFileCheck("3");	//문서파일 첨부
			 } 
		 }  
	 }
}

// 천단위 콤마
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

// 천단위 콤마 제거
function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}

// 공백 체크
function checkBlank(str){
	var blank_pattern = /[\s]/g;
	
	if(blank_pattern.test(str)){
		return false;
	}
	return true;
}

// 좌, 우 공백 제거
function trimVal(str){
	return str.replace(/(^\s*)|(\s*$)/g, "");
}

// 생년월일 유효성 체크
function checkBirthDate(str){
	var y_sub = parseInt(str.substring(0, 2)); 
	var y = parseInt(str.substr(0, 4), 10); 
	var m = parseInt(str.substr(4, 2), 10); 
	var d = parseInt(str.substr(6, 2), 10); 
	var dt = new Date(y, m-1, d);
	
	if(str.length < 8 ){
		return false;
	}else if(y_sub != 19 && y_sub != 20){
		return false;
	}else if(dt.getDate() != d) {
		return false;
	}else if(dt.getMonth()+1 != m) { 
		return false;
	}else if(dt.getFullYear() != y) { 
		return false;
	}else { 
		return true;
	} 
}

// 날짜 형식 YYYY(구분기호)MM(구분기호)DD로 반환
function getFormatDate(date,delimiter){
	delimiter = typeof delimiter !== 'undefined' ? delimiter : "-";	// delimiter 기본값
	
	var dt = new Date(date);
	var currentDate="";
	
	var year = Number(dt.getFullYear());
	var month=Number(dt.getMonth() + 1);
	var day = Number(dt.getDate());
	
	if(month <10){
		month = "0"+month;
	}
	if(day <10){
		day = "0"+day;
	}
	
	currentDate = year+delimiter+month+delimiter+day;
	
	return currentDate;
}

// 1주일, 1개월, 3개월 날짜 세팅
function setDate(val){
	var settingDate = new Date();
	$("#schEndDt").val(getFormatDate(settingDate));
	
	switch(val){
	case "1" :	// 오늘
		$("#schStartDt").val(getFormatDate(settingDate));
		break;
	case "2" :	// 1주일	
		settingDate.setDate(settingDate.getDate()-7);
		$("#schStartDt").val(getFormatDate(settingDate));
		break;
	case "3" :	// 1개월
		settingDate.setMonth(settingDate.getMonth()-1);
		$("#schStartDt").val(getFormatDate(settingDate));
		break;
	case "4" :	// 3개월
		settingDate.setMonth(settingDate.getMonth()-3);
		$("#schStartDt").val(getFormatDate(settingDate));
		break;
	case "5" :	// 6개월
		settingDate.setMonth(settingDate.getMonth()-6);
		$("#schStartDt").val(getFormatDate(settingDate));
		break;
	case "6" :	// 1년
		settingDate.setFullYear(settingDate.getFullYear()-1);
		$("#schStartDt").val(getFormatDate(settingDate));
		break;
	case "7" :	// 2년
		settingDate.setFullYear(settingDate.getFullYear()-2);
		$("#schStartDt").val(getFormatDate(settingDate));
		break;	
	}
}

// 1주일, 1개월, 3개월 날짜 반환 
function getDate(val, delimiter){
	
	delimiter = typeof delimiter !== 'undefined' ? delimiter : "-";	// delimiter 기본값
	
	var settingDate = new Date();
	
	switch(val){
	case "1" :	// 오늘
		return getFormatDate(settingDate, delimiter);
		break;
	case "2" :	// 1주일 전
		settingDate.setDate(settingDate.getDate()-7);
		return getFormatDate(settingDate, delimiter);
		break;
	case "3" :	// 1개월 전
		settingDate.setMonth(settingDate.getMonth()-1);
		return getFormatDate(settingDate, delimiter);
		break;
	case "4" :	// 3개월 전
		settingDate.setMonth(settingDate.getMonth()-3);
		return getFormatDate(settingDate, delimiter);
		break;
	case "5" :	// 6개월 전
		settingDate.setMonth(settingDate.getMonth()-6);
		return getFormatDate(settingDate, delimiter);
		break;
	case "6" :	// 1년 전
		settingDate.setFullYear(settingDate.getFullYear()-1);
		return getFormatDate(settingDate, delimiter);
		break;
	case "7" :	// 2년 전
		settingDate.setFullYear(settingDate.getFullYear()-2);
		return getFormatDate(settingDate, delimiter);
		break;	

	case "12" :	// 1주일 후
		settingDate.setDate(settingDate.getDate()+7);
		return getFormatDate(settingDate, delimiter);
		break;
	case "13" :	// 1개월 후
		settingDate.setMonth(settingDate.getMonth()+1);
		return getFormatDate(settingDate, delimiter);
		break;
	case "14" :	// 3개월 후
		settingDate.setMonth(settingDate.getMonth()+3);
		return getFormatDate(settingDate, delimiter);
		break;
	case "15" :	// 6개월 후
		settingDate.setMonth(settingDate.getMonth()+6);
		return getFormatDate(settingDate, delimiter);
		break;
	case "16" :	// 1년 후
		settingDate.setFullYear(settingDate.getFullYear()+1);
		return getFormatDate(settingDate, delimiter);
		break;
	case "17" :	// 2년 후
		settingDate.setFullYear(settingDate.getFullYear()+2);
		return getFormatDate(settingDate, delimiter);
		break;
	}
}

// 쿠키 저장하기
function setCookie(name, value, expiredays){
	var today = new Date();
	today.setDate(today.getDate() + expiredays);
	document.cookie = name + "=" + escape(value) + "; path=/; expires=" + today.toGMTString() + ";";
}

// 쿠키 가져오기
function getCookie( name ) {  
   var nameOfCookie = name + "=";  
   var x = 0;  
   while ( x <= document.cookie.length )  
   {  
       var y = (x+nameOfCookie.length);  
       if ( document.cookie.substring( x, y ) == nameOfCookie ) {  
           if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )  
               endOfCookie = document.cookie.length;  
           return unescape( document.cookie.substring( y, endOfCookie ) );  
       }  
       x = document.cookie.indexOf( " ", x ) + 1;  
       if ( x == 0 )  
           break;  
   }  
   return "";  
}

// XSS 
function XSSfilter(content) {
	content = content+"";
	return content.replace(/\<|\>|\"|\'|\%|\;|\(|\)|\&|\+|\-/g,"");
}

// 사업자 유효성 체크
function checkBizno(bizno){
	var re = /-/g;
	 var bizno = bizno.replace(re,'');
	 var checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1);
	 var tmpBizID, i, chkSum=0, c2, remander;
	 
	 for (i=0; i<=7; i++){
		 chkSum += checkID[i] * bizno.charAt(i);
	 }
	 
	 c2 = "0" + (checkID[8] * bizno.charAt(8));
	 c2 = c2.substring(c2.length - 2, c2.length);
	 chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1));
	 remander = (10 - (chkSum % 10)) % 10 ;
	 if (Math.floor(bizno.charAt(9)) == remander){
		 return true; 
	 }else{
		 alert("사업자등록번호가 유효하지 않습니다.");
		 return false;
	 }
}

// 아이디 유효성 체크 (5~16자, 영문, 숫자 또는 영문+숫자 조합)
function checkId(str){
	var reg = /^[a-z0-9]{5,16}$/;						
	return(reg.test(str));
}

//비밀번호 유효성 체크 (6~16자 영문 대소문자, 숫자, 특수문자 중 2가지)
function checkPwd(str){
	var regex1=/^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{6,16}$/;  	
	var regex2=/^(?=.*[a-zA-Z])(?=.*[!@#$%^?_~])[a-zA-Z!@#$%^?_~]{6,16}$/;  
	var regex3=/^(?=.*[0-9])(?=.*[!@#$%^?_~])[0-9!@#$%^?_~]{6,16}$/;  
	var regex4=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^?_~])[a-zA-Z0-9!@#$%^?_~]{6,16}$/;   
	
	if(regex1.test(str) || regex2.test(str) || regex3.test(str) || regex4.test(str)){ 
		return true;
	}else{
		return false;
	}
}

// 이름 유효성 체크 (한글,영문)
function checkNm(str){
	var regex1= /^[가-힣a-zA-Z]+$/;
	
	if(regex1.test(str)){ 
		return true;
	}else{
		return false;
	}
}

// 만 나이 계산
function calcAge(birthDate){                 
	var date = new Date();
	var year = date.getFullYear();
	var month = (date.getMonth() + 1);
	var day = date.getDate();
	
	if (month < 10){
		month = "0" + month;
	}
	
    if (day < 10){
    	day = "0" + day;
    }
    
    var monthDay = month + day;
    birthDate = birthDate.replace("-", "").replace("-", "");
    var birthdayy = birthDate.substr(0, 4);
    var birthdaymd = birthDate.substr(4, 4);
    var age = monthDay < birthdaymd ? year - birthdayy - 1 : year - birthdayy;
    
    return age;
} 

// 핸드폰 번호 숫자만 입력
function checkHp(str){
	var regex= /^[0-9]+$/
	
	if(regex.test(str)){ 
		return true;
	}else{
		return false;
	}
}

// 한글포함 문자열 길이
function textLength(str) {
    var len = 0;
    for (var i = 0; i < str.length; i++) {
        if (escape(str.charAt(i)).length == 6) {
            len++;
        }
        len++;
    }
    return len;
}


