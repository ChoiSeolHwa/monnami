<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.getParameter("UTF-8");

String cp = request.getContextPath();	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>MonamiMall</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="format-detection" content="telephone=no, email=no, address=no">
<meta name="keywords" content="" />
<meta name="description" content="문구, 모나미펫, 크래프트&하비, 모나르떼를 통합한 라이프스타일 편집샵" />

<meta property="og:type" content="website">
<meta property="og:title" content="">
<meta property="og:image" content="">
<meta property="og:url" content="">
<meta property="og:description" content="">

<link rel="canonical" href="https://www.monamimall.com/w/main.do"/>
<link rel="stylesheet" href="<%=cp %>/test/css/test.css" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/test.css" />
<link rel="stylesheet" type="text/css" href="/test.css">
<link rel="stylesheet" type="text/css" href="/test.css">
<link rel="stylesheet" type="text/css" href="/test.css">
<link rel="stylesheet" type="text/css" href="/w/css/w/common.css" />
<link rel="stylesheet" type="text/css" href="/w/css/w/main.css">
<link rel="stylesheet" type="text/css" href="/w/css/w/products.css" />
<link rel="stylesheet" type="text/css" href="/w/css/w/contents.css" />

<script src="/w/js/w/lib/jquery-3.3.1.min.js"></script>
<script src="/w/js/w/lib/jquery-ui.min.js"></script>
<script src="/w/js/w/lib/jquery.scrollbar.min.js"></script>
<script src="/w/js/w/lib/imagesloaded.pkgd.min.js"></script>
<script src="/w/js/w/lib/lazyload.min.js"></script>
<script src="/w/js/w/lib/jquery.countdown.js"></script>
<script src="/w/js/w/lib/swiper.min.js"></script>
<script src="/w/js/w/lib/jquery.ez-plus.js"></script>
<script src="/w/js/w/function.js"></script>
<script src="/w/js/w/monamimall.js"></script>

<script src="/w/js/commonScript.js"></script>
<script src="/w/js/w/cart.js"></script>

<!-- 네이버유입스크립트 -->
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<!-- <script type="text/javascript"> 
	var currentUrl = window.location.href;
	if(!currentUrl.match("/order/orderComplete.do")){
		if(currentUrl.match("/member/joinComplete.do") || currentUrl.match("/member/joinSsoComplete.do")){
			var _nasa={};
			_nasa["cnv"] = wcs.cnv("2","0"); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
		}else{
			var _nasa={};
			_nasa["cnv"] = wcs.cnv("5","0"); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
		}
	}
</script> -->


<meta name="decorator" content="default.main" />
<meta name="bodycss" content="home"/>
<meta name="divcss" content="main"/>
</head>
<body class="home">	
	<div id="wrap" class="main">
		<noscript>
	이 사이트를 이용하기 위해서 자바스크립트를 활성화 시킬 필요가 있습니다.
	<a href="http://www.enable-javascript.com/ko/" target="_blank">브라우저에서 자바스크립트를 활성화하는 방법</a>을 참고 하세요.
</noscript>
	
	<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
	<script type="text/javascript"> 
		if (!wcs_add) var wcs_add={};
		wcs_add["wa"] = "s_22b1f65c4041";
		if (!_nasa) var _nasa={};
		wcs.inflow("monamimall.com");
		wcs_do(_nasa);
	</script>
<div class="skip">
	 <a href="#contents">본문으로 건너뛰기</a>
</div>

<header id="header">
	<a href="#" class="btn-allmenu"><span class="menu-trigger"><span></span><span></span><span></span><small class="hide">메뉴</small></span></a>
	<div class="allmenu">
		<div class="inner">
			<div class="cont scrollbar-macosx">
				<ul>
					<li class="stationery">
						<a href="/w/stationeryMain.do"><span>Stationery</span></a>
						<div class="subnav">
							<ul>
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221"><span>기록의 시작</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=222"><span>필기용</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=223"><span>메모용</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=224"><span>글자강조(Highlighting)</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=485"><span>고급필기류</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=487"><span>리필</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225"><span>취미의 발견</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=226"><span>인테리어/소품 꾸미기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=228"><span>패브릭 꾸미기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=230"><span>다이어리 꾸미기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=231"><span>그림그리기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=229"><span>기타</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=232"><span>상상과 표현</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=232&schCateIdx3=233"><span>유아~어린이</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=234"><span>프로들의 도구</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=234&schCateIdx3=235"><span>산업용</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=463"><span>생활 속 문구 </span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=463&schCateIdx3=465"><span>디자인 문구</span></a></li>
												</ul>	
									</li>							
								</ul>
						</div>
					</li>
				
					<li class="hobby">
						<a href="/w/hobbyMain.do"><span>Craft&Hobby</span></a>
						<div class="subnav">
							<ul>
								<li>
										<a href="/w/product/productList.do?schCateIdx1=241&schCateIdx2=242"><span>내 공간 완성하기</span></a>
											<ul></ul></li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=241&schCateIdx2=243"><span>일상의 즐거움</span></a>
											<ul></ul></li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=241&schCateIdx2=244"><span>센스있게 마음 전달</span></a>
											<ul></ul></li>							
								</ul>
						</div>
					</li>
					<li class="monarte">
						<a href="/w/monarteMain.do"><span>Monarte</span></a>
						<div class="subnav">
							<ul>
								<li>
										<a href="/w/product/productList.do?schCateIdx1=237&schCateIdx2=238"><span>스스로 자라는 아이</span></a>
											<ul></ul></li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=237&schCateIdx2=240"><span>모나르떼 화방</span></a>
											<ul></ul></li>							
								</ul>
						</div>
					</li>
					<li class="storypick">
						<a href="/w/storypickMain.do"><span>Story Pick</span></a>
						<div class="subnav">
							<ul>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=30"><span>Stationery</span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&level3Idx=35"><span>필기</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&level3Idx=36"><span>취미</span></a></li>
												</ul>
									</li>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=31"><span>MonamiPet</span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&level3Idx=40"><span>훈련</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&level3Idx=39"><span>노하우</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&level3Idx=43"><span>일상</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&level3Idx=42"><span>푸드</span></a></li>
												</ul>
									</li>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=33"><span>Craft&Hobby      </span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&level3Idx=45"><span>DIY</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&level3Idx=46"><span>Gift</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&level3Idx=49"><span>인테리어</span></a></li>
												</ul>
									</li>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=34"><span>Monarte</span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&level3Idx=51"><span>미술</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&level3Idx=50"><span>교육</span></a></li>
												</ul>
									</li>
								</ul>
						</div>
					</li>
					<li class="event">
						<a href="/w/promotion/event/eventList.do"><span>Event</span></a>
						<div class="subnav">
							<ul>
								<li><a href="/w/promotion/event/eventList.do"><span>이벤트</span></a></li>
								<li><a href="/w/promotion/exhibition/exhibitionList.do"><span>기획전</span></a></li>
								<li><a href="/w/promotion/outlet/outletList.do"><span>아울렛</span></a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<h1 class="logo"><a href="/w/">Monami Mall</a></h1>
	<nav>
		<ul>
			<li class="stationery">
				<a href="/w/stationeryMain.do"><span><small>문구</small>Stationery</span></a>
				<div class="subnav">
					<ul>
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221"><span>기록의 시작</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=222"><span>필기용</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=223"><span>메모용</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=224"><span>글자강조(Highlighting)</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=485"><span>고급필기류</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=221&schCateIdx3=487"><span>리필</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225"><span>취미의 발견</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=226"><span>인테리어/소품 꾸미기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=228"><span>패브릭 꾸미기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=230"><span>다이어리 꾸미기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=231"><span>그림그리기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=225&schCateIdx3=229"><span>기타</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=232"><span>상상과 표현</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=232&schCateIdx3=233"><span>유아~어린이</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=234"><span>프로들의 도구</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=234&schCateIdx3=235"><span>산업용</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=463"><span>생활 속 문구 </span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&schCateIdx2=463&schCateIdx3=465"><span>디자인 문구</span></a></li>
										</ul>	
							</li>							
						</ul>
				</div>
			</li>
			<li class="monamipet">
				<a href="/w/petMain.do"><span><small>모나미펫</small>MonamiPet</span></a>
				<div class="subnav">
					<ul>
						<li>
									<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2"><span>DOG</span></a>
									<ul>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=3"><span>골라먹는 즐거움</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=3&schCateIdx4=4"><span>사료 전연령용</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=3&schCateIdx4=11"><span>사료- 자견용 (퍼피)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=3&schCateIdx4=18"><span>사료- 성견용 (어덜트)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=3&schCateIdx4=25"><span>사료- 노견용 (시니어)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=3&schCateIdx4=28"><span>간식</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=3&schCateIdx4=36"><span>영양제</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=43"><span>내 친구의 공간</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=43&schCateIdx4=44"><span>위생/배변</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=43&schCateIdx4=53"><span>하우스/이동장/울타리</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=43&schCateIdx4=60"><span>줄/이름표</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=43&schCateIdx4=64"><span>급식기/급수기</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=69"><span>내 친구의 작은 옷장</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=69&schCateIdx4=70"><span>의류</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=69&schCateIdx4=76"><span>미용/목욕</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=83"><span>신나는 하루</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=83&schCateIdx4=84"><span>장난감</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=2&schCateIdx3=83&schCateIdx4=473"><span>작가의 솜씨</span></a></li>
													</ul>										
											</li>
											</ul>	
								</li>							
							<li>
									<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93"><span>CAT</span></a>
									<ul>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=94"><span>골라먹는 즐거움</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=94&schCateIdx4=95"><span>사료 전연령용</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=94&schCateIdx4=102"><span>사료- 자묘용(키튼)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=94&schCateIdx4=109"><span>사료- 성묘용 (어덜트)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=94&schCateIdx4=116"><span>사료- 노묘용 (시니어)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=94&schCateIdx4=119"><span>간식</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=94&schCateIdx4=127"><span>영양제</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=134"><span>내 친구의 공간</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=134&schCateIdx4=135"><span>모래/화장실/패드</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=134&schCateIdx4=144"><span>하우스/이동장/울타리</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=134&schCateIdx4=151"><span>스크래쳐/캣타워</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=134&schCateIdx4=155"><span>급식기/급수기</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=160"><span>내 친구의 작은 옷장</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=160&schCateIdx4=167"><span>미용/목욕/위생/액세서리</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=174"><span>신나는 하루</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=174&schCateIdx4=175"><span>장난감</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&schCateIdx2=93&schCateIdx3=174&schCateIdx4=474"><span>작가의 솜씨</span></a></li>
													</ul>										
											</li>
											</ul>	
								</li>							
							</ul>
				</div>
			</li>
			<li class="hobby">
				<a href="/w/hobbyMain.do"><span><small>취미DIY</small>Craft&Hobby</span></a>
				<div class="subnav">
					<ul>
						<li>
								<a href="/w/product/productList.do?schCateIdx1=241&schCateIdx2=242"><span>내 공간 완성하기</span></a>
									<ul></ul></li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=241&schCateIdx2=243"><span>일상의 즐거움</span></a>
									<ul></ul></li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=241&schCateIdx2=244"><span>센스있게 마음 전달</span></a>
									<ul></ul></li>							
						</ul>
				</div>
			</li>
			<li class="monarte">
				<a href="/w/monarteMain.do"><span><small>모나르떼</small>Monarte</span></a>
				<div class="subnav">
					<ul>
						<li>
								<a href="/w/product/productList.do?schCateIdx1=237&schCateIdx2=238"><span>스스로 자라는 아이</span></a>
									<ul></ul></li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=237&schCateIdx2=240"><span>모나르떼 화방</span></a>
									<ul></ul></li>							
						</ul>
				</div>
			</li>
			<li class="storypick">
				<a href="/w/storypickMain.do"><span><small>스토리픽</small>Story Pick</span></a>
				<div class="subnav">
					<ul>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=30"><span>Stationery</span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&level3Idx=35"><span>필기</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&level3Idx=36"><span>취미</span></a></li>
									</ul>
						</li>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=31"><span>MonamiPet</span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&level3Idx=40"><span>훈련</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&level3Idx=39"><span>노하우</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&level3Idx=43"><span>일상</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&level3Idx=42"><span>푸드</span></a></li>
									</ul>
						</li>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=33"><span>Craft&Hobby      </span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&level3Idx=45"><span>DIY</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&level3Idx=46"><span>Gift</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&level3Idx=49"><span>인테리어</span></a></li>
									</ul>
						</li>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=34"><span>Monarte</span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&level3Idx=51"><span>미술</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&level3Idx=50"><span>교육</span></a></li>
									</ul>
						</li>
						</ul>
				</div>
			</li>
			<li class="event">
				<a href="/w/promotion/event/eventList.do"><span><small>이벤트</small>Event</span></a>
				<div class="subnav">
					<ul>
						<li><a href="/w/promotion/event/eventList.do"><span>이벤트</span></a></li>
						<li><a href="/w/promotion/exhibition/exhibitionList.do"><span>기획전</span></a></li>
						<li><a href="/w/promotion/outlet/outletList.do"><span>아울렛</span></a></li>
					</ul>
				</div>
			</li>
		</ul>
	</nav>

	<div class="util">
		<ul>
			<li><a href="/w/cart.do" class="btn-cart">장바구니 <em class="cartCnt">0</em></a></li>
					<li>
						<a href="javascript:" class="btn-member">회원</a>
						<div class="popinfo">
							<a href="/w/login/loginPage.do">로그인</a>
							<a href="/w/member/joinStep01.do">회원가입</a>
							<a href="/w/login/loginPage.do?memberFlag=N">비회원로그인</a>
						</div>
					</li>
				<li><a href="javascript:" class="btn-search">검색</a></li>
		</ul>
	</div>

	<!-- //검색 -->
	<script>
	$(document).ready(function(){
		recentSearchCall();
	});
	
	// 최근 검색어 목록 
	function recentSearchCall(){
		var searchItem = JSON.parse(localStorage.getItem("searchItem"));					// 로컬스토리지 값
		var html = "";
		if(searchItem != null){
			var totCnt = searchItem.length;
			
			if (totCnt == 0) {
				html = "<div class=\"nodata\">최근 검색한 내역이 없습니다.</div>";
			} else {
				html = "<ul>";				
				for(var i=0; i < searchItem.length; i++){
					var keyword = XSSfilter(searchItem[i].keyword);
					var date = searchItem[i].date;
					html += "<li>";
					html += "	<a href='javascript:void(0)' onclick=\"goTopSearch('"+keyword+"')\" >"+keyword+"</a><button type='button' class='btn-delete' onclick=\"deleteTopSearch('"+keyword+"');\">삭제</button> ";
					html += "</li>";
				}
				html += "</ul>";
			}
		}else{
			html = "<div class=\"nodata\">최근 검색한 내역이 없습니다.</div>";	
		}
		$("#recentSearchList").html(html);				// 리스트
	}
	
	//최근 검색어 한개 삭제
	function deleteTopSearch(k) {
		
		//최근검색어
		var array = new Array();		
		var searchItem = JSON.parse(localStorage.getItem("searchItem"));
		if(searchItem != null){
			for(var i=0; i < searchItem.length; i++){
				if(k != searchItem[i].keyword){
					var itemObj = new Object();
					itemObj.keyword = searchItem[i].keyword;
					itemObj.date = searchItem[i].date;
					array.push(itemObj);
				}
			}			
			
		}		
		localStorage.setItem("searchItem", JSON.stringify(array));
		recentSearchCall();
		
	}
	
	// 최근 검색어 목록  삭제
	function recentSearchClear(){
		if (confirm("최근검색어를 삭제하시겠습니까?")) {
			localStorage.removeItem("searchItem");
			recentSearchCall();
		}
	}
	
	function topsearch() {
		if( ($.trim($("#top_search_keyword").val()) == "")){
			alert('검색어를 입력해주세요.'); 
			return false; 						
		}
		
		if (textLength($.trim($("#top_search_keyword").val())) < 2) {
			alert("검색어는 2글자 이상 입력하여야 합니다.");
			$("#top_search_keyword").focus();
			return false;
		}

		if ($.trim($("#top_search_keyword").val()).indexOf('%') > -1) {
			alert("검색어에 '%'문자를 포함할수 없습니다.");
			$("#top_search_keyword").focus();
			return false;
		}
		
		XSSfilter($("#top_search_keyword").val());
		searchItemSave($.trim($("#top_search_keyword").val()));
		return true;
	
	}
	
	//최근검색어 저장
	function searchItemSave(keyword) {
		XSSfilter(keyword);
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1; //January is 0!
		var yyyy = today.getFullYear();
		if (mm < 10) {
			mm ="0"+mm;
		}
		if (dd < 10) {
			dd ="0"+dd;
		}
		
		var curr = mm+"."+dd;
		var array = new Array();
		var obj = new Object();
		obj.keyword = keyword;
		obj.date = curr;
		
		//최근검색어
		var searchItem = JSON.parse(localStorage.getItem("searchItem"));
		
		if(searchItem != null){
			
			for(var i=0; i < searchItem.length; i++){
				if(keyword != searchItem[i].keyword){
					var itemObj = new Object();
					itemObj.keyword = searchItem[i].keyword;
					itemObj.date = searchItem[i].date;
					array.push(itemObj);
				}
			}
			
			array.unshift(obj);
			
			if(searchItem.length > 9){					// 10개 제한
				array.pop();
			}
			
		}else{
			array.push(obj);
		}
		localStorage.setItem("searchItem", JSON.stringify(array));
		recentSearchCall();
	}
	
	function goTopSearch(keyword) {
		XSSfilter(keyword);
		$("#top_search_keyword").val($.trim(keyword));
		$("#topSearchFrm").submit();
	}
	
	function topSearchKeyup(e) {
		e.preventDefault();
		e.stopPropagation();
		var searchKeyword = $.trim($("#top_search_keyword").val());
		if (searchKeyword == "") {
			fn.removeClass('.slist');fn.addClass('.sdefault');
		}
		else {
			fn.removeClass('.sdefault');fn.addClass('.slist');
	        setTimeout(topsearchAjax(searchKeyword), 400);
		}
		
	}
	
	function help_switch(t) {
		var gubun = $(t).data('gubun'); //1상품, 2:스토리, 3:기획전이벤트
		var title = $(t).data('title');
		var keyword = $(t).data('keyword');
		var img = $(t).data('img');
		var goodsno = $(t).data('goodsno');
		var normalprice = $(t).data('normalprice');
		var price = $(t).data('price');
		var price_txt = "<em>"+comma(price)+"</em>원";
		var brandnm = $(t).data('brandnm');
		
		if (gubun == "1") {
			if (normalprice > price ) {
				price_txt = "<del><em>"+comma(normalprice)+"</em></del>"+price_txt;
			}
		}
		
		var imgpath = 'https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer';
		var html = "";
		//상품
		if (gubun == "1") {
			html += "<a href=\"/w/product/productDetail.do?goodsNo="+goodsno+"\">";
			html += "<img  src=\""+imgpath+img+"\" alt=\"\" onerror=\"this.src='/w/images/240x240.jpg'\">";
			html += "<span class=\"txt-ti\">"+title+"</span> ";
			html += "<span class=\"txt-price\">"+price_txt+"</span>";			
			html += "</a>";
		}
		else if (gubun == "2") {
			html += "<a href=\"/w/storypick/storypickView.do?storyIdx="+goodsno+"\">";
			html += "<img  src=\""+imgpath+'/storypick/'+goodsno+'/'+img+"\" alt=\"\" onerror=\"this.src='/w/images/240x240.jpg'\">";
			html += "<span class=\"txt-ti\">"+title+"</span> ";
			html += "</a>";			
		}
		else if (gubun == "3") {
			//이벤트
			if (brandnm == "E") {
				html += "<a href=\"/w/promotion/event/eventView.do?promotionIdx="+goodsno+"\">";
				html += "<img  src=\""+imgpath+'/promotion/'+goodsno+'/'+img+"\" alt=\"\" onerror=\"this.src='/w/images/240x240.jpg'\">";
				html += "<span class=\"txt-ti\">"+title+"</span> ";
				html += "</a>";	
			}  else {
				//기획전
				html += "<a href=\"/w/promotion/exhibition/exhibitionView.do?promotionIdx="+goodsno+"\">";
				html += "<img  src=\""+imgpath+'/promotion/'+goodsno+'/'+img+"\" alt=\"\" onerror=\"this.src='/w/images/240x240.jpg'\">";
				html += "<span class=\"txt-ti\">"+title+"</span> ";
				html += "</a>";
			}
						
		}
		$("#searchHelperInner .result .recom").html(html);		
	}
	
	function topsearchAjax(query) {
		$.ajaxSetup({cache:false});
		$.ajax({			
			url: getContextPath()+"/ajax/common/topSearchAjax.do",
			data: {"query":query},
		 	type: "post",
		 	async: false,
		 	cache: false,
		 	contentType: "application/x-www-form-urlencoded; charset=UTF-8",  
		 	error: function(request, status, error){ 
		 		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
			},
		 	beforeSend: function() {
		    },
			success: function(data){
				if ($.trim(data) == "검색결과가 없습니다.") {
					$("#searchHelperInner").addClass("snodata").removeClass("slist");
					$("#searchHelperInner").html(data);
					
				} else {
					$("#searchHelperInner").addClass("slist").removeClass("snodata");
					$("#searchHelperInner").html(data);
					 
					$("#topsearchResultProducts > ul > li > a").on("mouseover", function(e){
						e.preventDefault();
						help_switch($(this));
					});
					
					$("#topsearchResultProducts > ul > li > a").on("click", function(e){
						var keyword =$(this).data("keyword");
						goTopSearch(keyword);
					});
					
					help_switch($("#topsearchResultProducts > ul > li:first > a"));
				}
			 }
		});

	};
	
</script>

	<div id="popHSearch" class="hsearch">
	
		<button type="button" class="btn-close">닫기</button>
		<form action="/w/product/searchResult.do" id="topSearchFrm" method="post" onsubmit="return topsearch();">
		<input type="hidden" name="searchGbn" value="top" />
			<fieldset class="search-field">
				<legend class="hide">검색</legend>
				<!-- 검색어 따라 fn.removeClass('.sdefault');fn.addClass('.slist');fn.addClass('.snodata'); 이용하시면 됩니다. -->
				<input type="text" placeholder="검색어를 입력하세요." name="keyword" id="top_search_keyword" title="검색어 입력" onkeyup="topSearchKeyup(event);">
				<button type="submit" class="btn-search">검색</button>
			</fieldset>
		</form>

		<!-- 초기화면// -->
		<div class="sdefault active">
			<div class="sword">
				<!-- 추천 검색어// -->
				<div class="recom">
					<h3>추천 검색어</h3>
					<div class="ls scrollbar-macosx">
						<ul>
						<li><a href="javascript:goTopSearch('네츄럴코어');">네츄럴코어</a></li>
						<li><a href="javascript:goTopSearch('컬러트윈브러쉬');">컬러트윈브러쉬</a></li>
						<li><a href="javascript:goTopSearch('모나미펫 클린패드');">모나미펫 클린패드</a></li>
						<li><a href="javascript:goTopSearch('FX 153');">FX 153</a></li>
						<li><a href="javascript:goTopSearch('모나그라피');">모나그라피</a></li>
						<li><a href="javascript:goTopSearch('시저');">시저</a></li>
						<li><a href="javascript:goTopSearch('모나르떼');">모나르떼</a></li>
						<li><a href="javascript:goTopSearch('153블라썸');">153블라썸</a></li>
						<li><a href="javascript:goTopSearch('프로베스트캣');">프로베스트캣</a></li>
						<li><a href="javascript:goTopSearch('강아지간식');">강아지간식</a></li>
						<li><a href="javascript:goTopSearch('쉬바');">쉬바</a></li>
						<li><a href="javascript:goTopSearch('내추럴키티');">내추럴키티</a></li>
						<li><a href="javascript:goTopSearch('그르르');">그르르</a></li>
						<li><a href="javascript:goTopSearch('북커버');">북커버</a></li>
						<li><a href="javascript:goTopSearch('홀로그램파우치');">홀로그램파우치</a></li>
						</ul>
					</div>
				</div>
				<!-- //추천 검색어 -->

				<!-- 최근 검색어// -->
				<div class="latest">
					<h3>최근 검색어</h3>
					<div class="ls scrollbar-macosx" id="recentSearchList">
						 
						<div class="nodata">
							최근 검색한 내역이 없습니다.
						</div>
						
					</div>
					<div class="btn-area">
						<button type="button" class="btn-whitegray small btn-alldelete" onclick="recentSearchClear();">전체삭제</button>
					</div>
				</div>
				<!-- //최근 검색어 -->
			</div>

			<!-- 추천 태그// -->
			<div class="recomtag">
				<h3>추천 태그</h3>
				<div class="ls">
					<a href="javascript:goTopSearch('#냥스타그램');">#냥스타그램</a>
					<a href="javascript:goTopSearch('#노즈워크에좋은간식');">#노즈워크에좋은간식</a>
					<a href="javascript:goTopSearch('#취미생활');">#취미생활</a>
					<a href="javascript:goTopSearch('#올바른사료고르기');">#올바른사료고르기</a>
					<a href="javascript:goTopSearch('#고양이털관리TIP');">#고양이털관리TIP</a>
					<a href="javascript:goTopSearch('#랜선집들이');">#랜선집들이</a>
					<a href="javascript:goTopSearch('#개스타그램');">#개스타그램</a>
					<a href="javascript:goTopSearch('#루프탑패밀리');">#루프탑패밀리</a>
					<a href="javascript:goTopSearch('#주말나들이');">#주말나들이</a>
					<a href="javascript:goTopSearch('#불투명네임펜132');">#불투명네임펜132</a>
					<a href="javascript:goTopSearch('#라이브칼라');">#라이브칼라</a>
					<a href="javascript:goTopSearch('#암기잘하는법');">#암기잘하는법</a>
					<a href="javascript:goTopSearch('#간식추천');">#간식추천</a>
					<a href="javascript:goTopSearch('#초등인문학배우기');">#초등인문학배우기</a>
					<a href="javascript:goTopSearch('#다이어리꾸미기');">#다이어리꾸미기</a>
					<a href="javascript:goTopSearch('#프러스펜');">#프러스펜</a>
					</div>
			</div>
			<!-- //추천 태그 -->
		</div>
		<!-- //초기화면 -->

		<!-- 검색입력시 데이타있을때// -->
		<div class="slist" id="searchHelperInner" >
			
		</div>
		<!-- //검색입력시 데이타있을때 -->

		<!-- 검색입력시 데이타없을때// -->
		<div class="snodata" id="searchHelperInnerNodata">
			검색된결과가 없습니다.
		</div>
		<!-- //검색입력시 데이타없을때 -->
	</div>
<!-- //검색 -->

	<!-- 개인화// -->
	</header>

<hr>

<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({			
			url: "/w/ajax/cart/getCartListCntAjax.do",
			data : {
				"sessionId" : getSessionId()
			},
		 	type: "post",
		 	async: false,
		 	cache: false,
		 	contentType: "application/x-www-form-urlencoded; charset=UTF-8",  
		 	error: function(request, status, error){
//		 		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error); 
			},
			success: function(data){
				$(".cartCnt").text(comma(data));
			}
		});
	});
</script>



<div class="banner-wing active" style="position: absolute; top: 1058px;">
	<div class="ban">
		<button type="button" class="btn-white small btn-close" onclick="fn.removeClass('.banner-wing');">닫기</button>
		
			
				<a href="/w/promotion/event/eventView.do?promotionIdx=72" >
			
			
		
			<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/banner/22/2019030610572251710.png" alt="3월 구매사은품 ">
		</a>
	</div>
</div>




<div class="banner-pop">
	<form name="bannerPop">
		<fieldset>
			
				<div id="banPop1" class="banpop" style="top:100px;left:0px;width:340px;">
					
						
							<div class="pic-area">
								
									
										<a href="/w/promotion/event/eventView.do?promotionIdx=30" >
									
									
								
									<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/popup/1/2019030613035793166.jpg" alt="통합 회원 전환 포인트 이벤트">
								</a>
							</div>
						
						
					
					<div class="btn-area">
						<label><input type="checkbox" name="oneday" class="small"><span>오늘 하루 보지 않기</span></label>
						<button type="button" class="btn-white small btn-close" onclick="closeBanner('#banPop1', 'bannerPop1');">닫기</button>
					</div>
				</div>
			
				<div id="banPop21" class="banpop" style="top:290px;left:320px;width:300px;">
					
						
							<div class="pic-area">
								
									
										<a href="/w/promotion/event/eventView.do?promotionIdx=70" >
									
									
								
									<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/popup/21/2019030613052507782.jpg" alt="라이프컨설팅">
								</a>
							</div>
						
						
					
					<div class="btn-area">
						<label><input type="checkbox" name="oneday" class="small"><span>오늘 하루 보지 않기</span></label>
						<button type="button" class="btn-white small btn-close" onclick="closeBanner('#banPop21', 'bannerPop21');">닫기</button>
					</div>
				</div>
			
		</fieldset>
	</form>
	<script type="text/javascript">
		
			var idx = "1";
			
			if (getCookie("bannerPop"+idx) != "no") {
				$("#banPop"+idx).addClass("active");
			}
		
			var idx = "21";
			
			if (getCookie("bannerPop"+idx) != "no") {
				$("#banPop"+idx).addClass("active");
			}
		
	</script>
</div>


	<main id="contents">
		
		
			
		
			
		
			
		
		
		
		<section class="inner visual">
			<div class="innerfull">
				<div class="swiper-container swipervisual">
					<div class="swiper-wrapper">
						
							
								<div class="swiper-slide">
									
										
											<a href="/w/storypick/storypickView.do?storyIdx=46">
										
										
									
										<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019022611382739063.jpg" alt="">
									</a>
								</div>
							
						
							
								<div class="swiper-slide">
									
										
											<a href="/w/storypick/storypickView.do?storyIdx=8">
										
										
									
										<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019011018013682891.jpg" alt="">
									</a>
								</div>
							
						
							
								<div class="swiper-slide">
									
										
											<a href="/w/storypick/storypickView.do?storyIdx=55">
										
										
									
										<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019021217132213373.jpg" alt="">
									</a>
								</div>
							
						
					</div>
					<div class="swiper-pagination-visual"></div>
				</div>
			</div>
			<div class="swiper-button-next-visual"></div>
			<div class="swiper-button-prev-visual"></div>
			
			
			
			
				
			
				
					
					
				
			
				
			
				
			
				
			
				
			
			
			
				
					
					<div class="slide-txt slide-txt0">
						<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019021217122375265.png" class="txt-date"><br>
						<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019022609552418759.png" class="txt-ti"><br>
						
							
						
							
								<a href="javascript:void(0);" data-link="1"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019022610162073519.png"></a><br>
							
						
							
								<a href="javascript:void(0);" data-link="2"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019021311372058079.png"></a><br>
							
						
					</div>
				
			
				
					
					<div class="slide-txt slide-txt1">
						<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019021217122375265.png" class="txt-date"><br>
						<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019022610161995071.png" class="txt-ti"><br>
						
							
								<a href="javascript:void(0);" data-link="0"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019022609552497013.png"></a><br>
							
						
							
						
							
								<a href="javascript:void(0);" data-link="2"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019021311372058079.png"></a><br>
							
						
					</div>
				
			
				
					
					<div class="slide-txt slide-txt2">
						<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019021217122375265.png" class="txt-date"><br>
						<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019021311371992284.png" class="txt-ti"><br>
						
							
								<a href="javascript:void(0);" data-link="0"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019022609552497013.png"></a><br>
							
						
							
								<a href="javascript:void(0);" data-link="1"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/banner/56/2019022610162073519.png"></a><br>
							
						
							
						
					</div>
				
			
		</section>
		
		
		
		
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
		
			
		
			
		
			
		
			
		
			
		
			
		
		
		
		<section class="inner storypick-area">
			
				
					<h2>Story Pick</h2>
				
			
				
			
				
			
				
			
				
			
				
			
			<div class="tab-menu">
				<a href="#All" class="active">All</a>
				
					<a href="#30">Stationery</a>
				
					<a href="#31">MonamiPet</a>
				
					<a href="#33">Craft&Hobby      </a>
				
					<a href="#34">Monarte</a>
				
			</div>
			
			<div id="All" class="tab-contents on">
				<div class="pick-ti">
					
						
							<small>march, 2019</small>
							<h3>따뜻한 봄날</br>나만을 위한 시간</h3>
						
					
						
					
						
					
						
					
						
					
						
					
					
				</div>
				<div class="pick-ls">
					
					
					
					
						
							
								
							
								
							
								
							
								
							
								
							
								
							
								
									<a href="/w/storypick/storypickView.do?storyIdx=78">
										
											
											
												<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/78/2019012417441948544.jpg" alt=""></span>
											
										
										<small class="txt-tag">[이럴 땐 이런 마카]</small>
										<strong class="txt-ti">내 소품에 나만의 감성을 입히고 싶을 땐? 패브릭마카</strong>
										<span class="txt-info ellipsis">패브릭마카로 감성을 담다</span>
									</a>
								
									
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
							
							
						
					
						
							
								
							
								
							
								
							
								
									<a href="/w/storypick/storypickView.do?storyIdx=1">
										
											
												<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/1/2019010914091863471.jpg" alt=""></span>
											
											
										
										<small class="txt-tag">[#ISSUE-tag] Keyword #반려견 동반여행 </small>
										<strong class="txt-ti">떠나요 둘이서 모든 걸 훌훌 버리고 ♬</strong>
										<span class="txt-info ellipsis">반려견과 떠나는 여행 지침서</span>
									</a>
								
									
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
							
							
						
					
						
							
								
							
								
							
								
							
								
							
								
							
								
									<a href="/w/storypick/storypickView.do?storyIdx=201">
										
											
											
												<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/201/2019021209134334523.jpg" alt=""></span>
											
										
										<small class="txt-tag">[랜선집들이]</small>
										<strong class="txt-ti">손재주 부리기</strong>
										<span class="txt-info ellipsis">너랑 나 </span>
									</a>
								
									
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
							
							
						
					
						
							
								
							
								
							
								
							
								
							
								
									<a href="/w/storypick/storypickView.do?storyIdx=138">
										
											
											
												<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/138/2019020116515335519.jpg" alt=""></span>
											
										
										<small class="txt-tag">[교실은 지금]</small>
										<strong class="txt-ti">찾아가는 인문학 교실 첫번째 이야기</strong>
										<span class="txt-info ellipsis">#1.모나르떼 찾아가는 인문학 교실</span>
									</a>
								
									
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
							
							
						
					
					
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
				</div>
			</div>
			
			
			
			<div id="30" class="tab-contents">
				<div class="pick-ti">
					
						
							<small>march, 2019</small>
							<h3>따뜻한 봄날</br>나만을 위한 시간</h3>
						
					
						
					
						
					
						
					
						
					
						
					
					
				</div>
				<div class="pick-ls">
					
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=78">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/78/2019012417441948544.jpg" alt=""></span>
									
								
								<small class="txt-tag">[이럴 땐 이런 마카]</small>
								<strong class="txt-ti">내 소품에 나만의 감성을 입히고 싶을 땐? 패브릭마카</strong>
								<span class="txt-info ellipsis">패브릭마카로 감성을 담다</span>
							</a>
							
						
					
						
					
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=72">
								
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/72/2019012414421556093.jpg" alt=""></span>
									
									
								
								<small class="txt-tag">[M storyteller]</small>
								<strong class="txt-ti">펜, 필기구 그 이상의 가치, Fisherman</strong>
								<span class="txt-info ellipsis">153 Fisherman은 그물로 물고기를 잡는 어부의 모습과 성당의 스테인드글라스에서 영감을 받아  디자인된 펜입니다.</span>
							</a>
							
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=97">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/97/2019012912044335101.jpg" alt=""></span>
									
								
								<small class="txt-tag">[필기의 신]</small>
								<strong class="txt-ti">포인트를 주고 싶을 때, 형광펜</strong>
								<span class="txt-info ellipsis">필기에도 강, 약이 필요하다!</span>
							</a>
							
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=16">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/16/2019011114241627198.jpg" alt=""></span>
									
								
								<small class="txt-tag">[Inside the case] </small>
								<strong class="txt-ti">나에게 필기구란 ‘일상’이다</strong>
								<span class="txt-info ellipsis">문구회사에서 일하는 A씨의 필기구</span>
							</a>
							
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
				</div>
			</div>
			
			<div id="31" class="tab-contents">
				<div class="pick-ti">
					
						
							<small>march, 2019</small>
							<h3>따뜻한 봄날</br>나만을 위한 시간</h3>
						
					
						
					
						
					
						
					
						
					
						
					
					
				</div>
				<div class="pick-ls">
					
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=1">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/1/2019010914091686795.jpg" alt=""></span>
									
								
								<small class="txt-tag">[#ISSUE-tag] Keyword #반려견 동반여행 </small>
								<strong class="txt-ti">떠나요 둘이서 모든 걸 훌훌 버리고 ♬</strong>
								<span class="txt-info ellipsis">반려견과 떠나는 여행 지침서</span>
							</a>
							
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=29">
								
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/29/2019011411275780542.jpg" alt=""></span>
									
									
								
								<small class="txt-tag">[With.함께살기] </small>
								<strong class="txt-ti">고양이 화장실 쾌적한 환경 만들기</strong>
								<span class="txt-info ellipsis">집사의 본분, 우리 고양이가 매일 사용하는 모래 이야기</span>
							</a>
							
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=31">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/31/2019011413112426394.jpg" alt=""></span>
									
								
								<small class="txt-tag">[With.함께살기] </small>
								<strong class="txt-ti">통통해도 귀엽지만 건강을 위한다면 다이어트를!</strong>
								<span class="txt-info ellipsis">뚱멍이 다이어트 프로젝트</span>
							</a>
							
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=36">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/36/2019011414085011770.jpg" alt=""></span>
									
								
								<small class="txt-tag">[#ISSUE-tag] Keyword #노즈워크  #실내노즈워크</small>
								<strong class="txt-ti">킁킁- 저는 지금 스트레스 푸는 중이에요</strong>
								<span class="txt-info ellipsis">강아지의 스트레스 해소법 ‘노즈워크’</span>
							</a>
							
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
				</div>
			</div>
			
			<div id="33" class="tab-contents">
				<div class="pick-ti">
					
						
							<small>march, 2019</small>
							<h3>따뜻한 봄날</br>나만을 위한 시간</h3>
						
					
						
					
						
					
						
					
						
					
						
					
					
				</div>
				<div class="pick-ls">
					
					
						
					
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=201">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/201/2019021209134334523.jpg" alt=""></span>
									
								
								<small class="txt-tag">[랜선집들이]</small>
								<strong class="txt-ti">손재주 부리기</strong>
								<span class="txt-info ellipsis">너랑 나 </span>
							</a>
							
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=200">
								
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/200/2019021209054553741.jpg" alt=""></span>
									
									
								
								<small class="txt-tag">[랜선집들이]</small>
								<strong class="txt-ti">감성 넘치는 캘리그라피 </strong>
								<span class="txt-info ellipsis">직접 만들다. </span>
							</a>
							
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=198">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/198/2019021208351394871.jpg" alt=""></span>
									
								
								<small class="txt-tag">[랜선집들이]</small>
								<strong class="txt-ti">내 마음대로 컬러링</strong>
								<span class="txt-info ellipsis">인테리어 소품</span>
							</a>
							
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=193">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/193/2019021208113304420.jpg" alt=""></span>
									
								
								<small class="txt-tag">[랜선집들이]</small>
								<strong class="txt-ti">길쭉이 파우치</strong>
								<span class="txt-info ellipsis">대용량 파우치라 맘에 들어</span>
							</a>
							
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
				</div>
			</div>
			
			<div id="34" class="tab-contents">
				<div class="pick-ti">
					
						
							<small>march, 2019</small>
							<h3>따뜻한 봄날</br>나만을 위한 시간</h3>
						
					
						
					
						
					
						
					
						
					
						
					
					
				</div>
				<div class="pick-ls">
					
					
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=138">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/138/2019020116515335519.jpg" alt=""></span>
									
								
								<small class="txt-tag">[교실은 지금]</small>
								<strong class="txt-ti">찾아가는 인문학 교실 첫번째 이야기</strong>
								<span class="txt-info ellipsis">#1.모나르떼 찾아가는 인문학 교실</span>
							</a>
							
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=142">
								
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/142/2019020708350318553.jpg" alt=""></span>
									
									
								
								<small class="txt-tag">[교실은 지금]</small>
								<strong class="txt-ti">찾아가는 인문학 교실 두번째 이야기. 사립명문 박문초등학교
</strong>
								<span class="txt-info ellipsis">#2.모나르떼 찾아가는 인문학 교실</span>
							</a>
							
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=160">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/160/2019020711200048853.jpg" alt=""></span>
									
								
								<small class="txt-tag">#1.Review - Monarte Level 5</small>
								<strong class="txt-ti">파브르곤충일기와 스캠프 발상을 배우는 초등인문학</strong>
								<span class="txt-info ellipsis">파브르 곤충기나 시튼 동물기는 아이들이 참 좋아하는 책이기도한데,
연계해서 읽어주어도 좋겠죠? 
</span>
							</a>
							
						
					
						
					
						
					
						
					
						
							<a href="/w/storypick/storypickView.do?storyIdx=161">
								
									
									
										<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/161/2019020711531685968.jpg" alt=""></span>
									
								
								<small class="txt-tag">#2.Review - Monarte Level 3</small>
								<strong class="txt-ti">로버트훅과 테셀레이션을 배웠어요</strong>
								<span class="txt-info ellipsis">3단계는 절대왕권과 귀족사회에 대한 내용인데요.
바로크, 로코코 미술에 대해서 배울수 있답니다.</span>
							</a>
							
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
				</div>
			</div>
			
		</section>
		
		
		
		
		
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
		
			
		
			
		
			
		
			
		
			
		
			
		
		
		
		<div class="inner cont-area">
			<div class="innerfull">
				<h2>
					
						
					
						
					
						
					
						
							<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/thema2/58/2019021217225705831.jpg" alt="">
							<span class="txt-ti">
								격이 다른 기본 
								<strong>Stationery</strong>
							</span>
						
					
						
					
						
					
				</h2>
			</div>
			<div class="cont-list">
				<div class="list list1">
					<ul>
						
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=28">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/28/2019011410391257663.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>나에게 필기구란 '소통의수단'이다</strong>
										<span>모나미란 사춘기 아이와 친해질 수 있게 만들어 준  ‘소통의 수단 ’ </span>
									</a>
									
									
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
												
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										<span class="tag">
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#프러스펜S');">#프러스펜S</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#153리스펙트');">#153리스펙트</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나미153플라워');">#모나미153플라워</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#올리카EF');">#올리카EF</a>
											
										</span>
									
								</li>
								
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=25">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/25/2019011409520470877.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>나에게 필기구란 ‘fashion’이다</strong>
										<span>소문난 패셔니스타 jk9씨의 필통</span>
									</a>
									
									
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
												
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										<span class="tag">
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#153DIY');">#153DIY</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#DIY');">#DIY</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나미DIY');">#모나미DIY</a>
											
										</span>
									
								</li>
								
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
					</ul>
				</div>
				<div class="list list2">
					<ul>
						
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=7">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/7/2019010917222143116.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>153 Brand Story 첫번째 이야기</strong>
										<span>대한민국 필기구의 역사, 모나미가 걸어온 길
<br/></span>
									</a>
								</li>
								
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=10">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/10/2019011013470292953.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>153 Brand Story 두번째 이야기</strong>
										<span>대한민국 필기구의 역사, 모나미가 걸어온 길</span>
									</a>
								</li>
								
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=27">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/27/2019011410274556592.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>나에게 필기구란 ‘친구’다</strong>
										<span>자연스럽게 문구 덕후의 길을 걷게 된 학생</span>
									</a>
								</li>
								
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=189">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/189/2019021116425155798.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>수험생이 전하는 필기TIP</strong>
										<span>나만의 필기법으로 암기 효율 UP! </span>
									</a>
								</li>
								
							
						
							
						
							
						
							
						
							
						
							
						
					</ul>
				</div>
				<div class="list list3">
					<ul>
						
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=79">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/thema2/58/2019022611403825337.jpg" alt=""/></span>
														
														
													
												
												
											
										
										
									
										<strong>6 SIGNATURES 과거와 현재를 잇다</strong>
										<span>Since 1963 과거와 현재</span>
									</a>
									
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
												
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										<span class="tag">
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나미153');">#모나미153</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#프러스펜');">#프러스펜</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#네임펜');">#네임펜</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나미네임펜');">#모나미네임펜</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#보드마카');">#보드마카</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#유성매직');">#유성매직</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#불투명네임펜132');">#불투명네임펜132</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#생잉크');">#생잉크</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('유성매직');">유성매직</a>
											
										</span>
									
								</li>
								
							
						
							
						
					</ul>
				</div>
			</div>
		</div>
		
		
		
		
		
		
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
		
			
		
			
		
			
		
			
		
			
		
			
		
		
		
		<div class="inner cont-area">
			<div class="innerfull">
				<h2>
					
						
					
						
					
						
							<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/thema1/57/2019013011541427726.jpg" alt="">
							<span class="txt-ti">
								반려동물의 모든 것 
								<strong>MonamiPet</strong>
							</span>
						
					
						
					
						
					
						
					
				</h2>
			</div>
			<div class="cont-list">
				<div class="list list1">
					<ul>
						
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=37">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/37/2019011414114223306.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>반려견과 나누는 건강 교감</strong>
										<span>건강+교감, 두 마리 토끼를 동시에</span>
									</a>
									
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
												
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										<span class="tag">
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#도그요가');">#도그요가</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#운동');">#운동</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#반려견건강');">#반려견건강</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#강아지건강');">#강아지건강</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#건강');">#건강</a>
											
										</span>
									
								</li>
								
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=35">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/35/2019011413363752075.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>간단하게 알아보는 반려견 건강 CHECK!</strong>
										<span>반려견에게 필요한 건, 사랑과 관심!</span>
									</a>
									
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
												
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										<span class="tag">
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#강아지');">#강아지</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#강아지건강');">#강아지건강</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#반려견');">#반려견</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#건강');">#건강</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#반려견건강');">#반려견건강</a>
											
										</span>
									
								</li>
								
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
					</ul>
				</div>
				<div class="list list2">
					<ul>
						
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=34">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/34/2019011413320274836.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>나는 길냥이와 교감을 꿈꾼다 </strong>
										<span>길냥이 길들이기, 쉽지 않아요</span>
									</a>
								</li>
								
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=17">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/17/2019011114340652909.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>우리 강아지에게 딱 맞는 개껌 고르는 꿀팁</strong>
										<span>언제 어떤 간식을 주면 좋을까요? </span>
									</a>
								</li>
								
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=30">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/30/2019011411545123260.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>고양이 발톱 관리의 모든 것</strong>
										<span>고양이의 발톱을 자르는 방법과 꼭 필요한 상품만을 소개해 드립니다!</span>
									</a>
								</li>
								
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=14">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/14/2019011110074813580.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>서툴러도 괜찮아- 우리 아이 셀프 미용</strong>
										<span>직접 해주고 싶은 마음 :   셀프 미용의 중요성과 필수품</span>
									</a>
								</li>
								
							
						
							
						
							
						
							
						
							
						
							
						
							
						
					</ul>
				</div>
				<div class="list list3">
					<ul>
						
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=36">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/thema1/57/2019013011550705815.jpg" alt=""/></span>
														
														
													
												
												
											
										
										
									
										<strong>킁킁- 저는 지금 스트레스 푸는 중이에요</strong>
										<span>강아지의 스트레스 해소법 ‘노즈워크’</span>
									</a>
									
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
												
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										<span class="tag">
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#노즈워크');">#노즈워크</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#강아지노즈워크');">#강아지노즈워크</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#훈련');">#훈련</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#반려견');">#반려견</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#노즈워크간식');">#노즈워크간식</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#노즈워크매트리스');">#노즈워크매트리스</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#매트리스');">#매트리스</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#노즈워크에좋은간식');">#노즈워크에좋은간식</a>
											
										</span>
									
								</li>
								
							
						
							
						
							
						
					</ul>
				</div>
			</div>
		</div>
		
		
		
		
		
		
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
		
			
		
			
		
			
		
			
		
			
		
			
		
		
		
		<div class="inner cont-area">
			<div class="innerfull">
				<h2>
					
						
					
						
					
						
					
						
					
						
							<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/thema3/60/2019013011570839363.jpg" alt="">
							<span class="txt-ti">
								내 공간으로의 초대 
								<strong>Craft&Hobby</strong>
							</span>
						
					
						
					
				</h2>
			</div>
			<div class="cont-list">
				<div class="list list1">
					<ul>
						
						
							
						
							
						
							
								<li>
									
										
											
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=67">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/thema3/60/2019021217281566728.jpg" alt=""/></span>
														
														
													
												
												
											
										
										
									
										<strong>손글씨로 남다르게</strong>
										<span>파우치 꾸미기</span>
									</a>
									
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
												
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										<span class="tag">
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#랜선집들이');">#랜선집들이</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나그라피');">#모나그라피</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#캘리그라피');">#캘리그라피</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#취미');">#취미</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나르떼하비');">#모나르떼하비</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#홀로그램파우치');">#홀로그램파우치</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#불투명네임펜132');">#불투명네임펜132</a>
											
										</span>
									
								</li>
								
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
													
														
														
															<a href="/w/storypick/storypickView.do?storyIdx=69&level2Idx=33&level3Idx=&pageNo=2">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/thema3/60/2019030610061573603.jpg" alt=""/></span>
														
													
												
												
											
										
										
									
										<strong>아이랑 함께 하는 취미</strong>
										<span>엄마는 캘리그라피를, 아이는 꾸미기를</span>
									</a>
									
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
												
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										<span class="tag">
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나미볼펜');">#모나미볼펜</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#라이브칼라');">#라이브칼라</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#랜선집들이');">#랜선집들이</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나르떼하비');">#모나르떼하비</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#컬러링액자캘린더');">#컬러링액자캘린더</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#2019달력');">#2019달력</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나미덕후');">#모나미덕후</a>
											
										</span>
									
								</li>
								
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
					</ul>
				</div>
				<div class="list list2">
					<ul>
						
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=68">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/68/2019012309572964093.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>화분에게 옷을 입히다</strong>
										<span>직접 꾸민 화분 페이퍼 커버</span>
									</a>
								</li>
								
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=63">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/63/2019012217252893392.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>ON THE TABLE</strong>
										<span>지극히 개인적인 공간</span>
									</a>
								</li>
								
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=71">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/71/2019012310342880308.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>오랜만의 커피 타임</strong>
										<span>홈카페 분위기 연출</span>
									</a>
								</li>
								
							
						
							
								<li>
									
										
											
												
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=94">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/storypick/94/2019012818493032292.jpg" alt=""/></span>
														
														
													
												
											
										
										
									
										<strong>기억을 머무르게 하는 책갈피</strong>
										<span>좋아하는 글귀를 적었더니 마음이 몽글몽글</span>
									</a>
								</li>
								
							
						
							
						
							
						
							
						
					</ul>
				</div>
				<div class="list list3">
					<ul>
						
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
						
							
								<li>
									
										
											
												
													
														
															<a href="/w/storypick/storypickView.do?storyIdx=55">
																<span class="pic"><img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/thema3/60/2019013013153611561.jpg" alt=""/></span>
														
														
													
												
												
											
										
										
									
										<strong>나만의 사인보드 만들기</strong>
										<span>버려지는 원목 판자를 사인보드로 업사이클링</span>
									</a>
									
										
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
												
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
											
										
										<span class="tag">
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#diy');">#diy</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#업사이클링');">#업사이클링</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#인테리어');">#인테리어</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#모나그라피');">#모나그라피</a>
											
												<a href="javascript:void(0);" class="lk-tag" onclick="goTopSearch('#취미생활');">#취미생활</a>
											
										</span>
									
								</li>
								
							
						
					</ul>
				</div>
			</div>
		</div>
		
		
		
		
		
		
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
			
		
		
			
		
			
		
			
		
			
		
			
		
			
		
		
		
			<div class="instagram">
				<h2>
					
					
					
					
					
					
					
					
					
					
					
					
						<small>FOLLOW US ON INSTAGRAM</small>
						#Monami_Official
					
					
				</h2>
				<ul>
				
				
					
						<li>
							
								<a href="https://www.instagram.com/p/BtKt9hsDwBL/" target="_BLANK">
								
							
								<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/sns/61/2019013013130521385.jpg" alt="">
							</a>
						</li>
						
					
				
					
						<li>
							
								<a href="https://www.instagram.com/p/BsM-2VODXNc/" target="_BLANK">
								
							
								<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/sns/61/2019013013160724934.jpg" alt="">
							</a>
						</li>
						
					
				
					
						<li>
							
								<a href="https://www.instagram.com/p/Bs4tX7cD9il/" target="_BLANK">
								
							
								<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/sns/61/2019013013130625582.jpg" alt="">
							</a>
						</li>
						
					
				
					
						<li>
							
								<a href="https://www.instagram.com/p/Broba6Mg4pv/" target="_BLANK">
								
							
								<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/sns/61/2019013013130662882.jpg" alt="">
							</a>
						</li>
						
					
				
					
						<li>
							
								<a href="https://www.instagram.com/p/BsmRrLNA0E5/" target="_BLANK">
								
							
								<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/sns/61/2019013013130731459.jpg" alt="">
							</a>
						</li>
						
					
				
					
						<li>
							
								<a href="https://www.instagram.com/p/BtMwY8KnwT_/" target="_BLANK">
								
							
								<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/sns/61/2019013013130781831.jpg" alt="">
							</a>
						</li>
						
					
				
					
						<li>
							
								<a href="https://www.instagram.com/p/BrPI0_vlOlB/" target="_BLANK">
								
							
								<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/sns/61/2019013013130899378.jpg" alt="">
							</a>
						</li>
						
					
				
					
						<li>
							
								<a href="https://www.instagram.com/p/BseRAM7l14P/" target="_BLANK">
								
							
								<img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/allmain/sns/61/2019013013130871523.jpg" alt="">
							</a>
						</li>
						
					
				
				</ul>
			</div>
		
		
	</main>
	
	<div id="popHomeMv" class="popup popdetailmv" style="display: none;">
		<div class="popinner" style="opacity: 1; top: 65.7px;">
			<header class="header">
				<h2 class="tit"></h2>

				<button type="button" class="btn-close">닫기</button>
			</header>

			<div class="contents">
				<div class="mv"><iframe width="736" height="415" src="" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe></div>
			</div>
		</div>
	</div>
<hr/>
		<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-133173275-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-133173275-1');
</script>

<!-- 다음우편번호 -->
<div id="popAddr" class="popup popaddr">
	<div class="popinner">
		<header class="header">
			<h2 class="tit">주소찾기</h2>
			<button type="button" class="btn-close" onclick="closeDaumPostcode();">닫기</button>
		</header>
	</div>
</div>

<div id="btnTop">
	<a href="#TOP">TOP</a>
</div>

<!-- 이지웰 이중스크롤방지 -->
<footer id="footer">
	<div class="util">
		<div class="inner">
			<div class="notice">
				<strong>공지사항</strong>
				<a href="/w/cscenter/notice/noticeList.do" class="btn-more">공지사항 더보기</a>
				<ul>
					<li>
							<a href="/w/cscenter/notice/noticeView.do?noticeIdx=43">
								<span class="txt-subject">통합회원 전환 방법을 안내합니다. </span>
								<span class="txt-date">2019.03.06</span>
							</a>
						</li>
					<li>
							<a href="/w/cscenter/notice/noticeView.do?noticeIdx=23">
								<span class="txt-subject">3월 카드사 무이자 할부 안내</span>
								<span class="txt-date">2019.02.28</span>
							</a>
						</li>
					<li>
							<a href="/w/cscenter/notice/noticeView.do?noticeIdx=6">
								<span class="txt-subject">편리한 예치금 서비스! 소개합니다. </span>
								<span class="txt-date">2019.02.12</span>
							</a>
						</li>
					</ul>
			</div>
			<div class="customer">
				<strong><a href="/w/cscenter/faq/faqList.do">고객지원센터  ></a></strong>
				<div class="info">
					<em>1544-2884</em>
					평일 <strong>08:30~17:30</strong> (점심시간 <strong>12:00~13:00</strong>)<br>
					주말/공휴일: 휴무
				</div>
				<p class="btn-area">
					<a href="/w/mypage/activity/inquiry/inquiryWrite.do" class="btn-whitegray small">1:1 상담 문의</a>
				</p>
			</div>
			<div class="helper">
				<strong><small>전화 한통으로 간편하게 주문</small> 컨시어지 서비스</strong>
				<p class="btn-area">
					<a href="/w/cscenter/notice/noticeView.do?noticeIdx=1" class="btn-whitegray small">컨시어지 서비스 문의</a>
				</p>
			</div>
			<div class="sns">
				<strong>모나미 공식 SNS</strong>
				<p class="btn-area">
					<a href="https://www.instagram.com/monami_pet/" target="_blank" class="btn-Instagram" title="인스타그램 새창 열림">인스타그램</a>
					<a href="https://www.facebook.com/monami1960" target="_blank" class="btn-facebook" title="페이스북 새창 열림">페이스북</a>
				</p>
			</div>
		</div>
	</div>
	<div class="cont">
		<div class="inner">
			<span class="logo">monamimall</span>
			<nav>
				<ul>
					<li><a href="http://www.monami.com/about/ceo.php" target="_blank" title="회사소개 새창 열림">회사소개</a></li>
					<li><a href="/w/etc/terms.do">이용약관</a></li>
					<li><a href="/w/etc/privacy.do"><strong>개인정보처리방침</strong></a></li>
					<li><a href="javascript:void(0);" onclick="owScrollYesCenter('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1208108227&apv_perm_no=', '_ftcpopup', '900', '800')">사업자 정보확인</a></li>
					<li><a href="/w/etc/proposal.do">제휴/입점 안내</a></li>
				</ul>
			</nav>
			<div class="familysite">
				<select>
					<option value="">패밀리 사이트</option>
					<option value="http://www.monami.com/">모나미공식사이트</option>
					<option value="http://www.mon-arte.com">모나르떼</option>
					<option value="http://www.monamistation.com">모나미스테이션</option>
					<option value="http://monamiconcept.com/">모나미컨셉스토어</option>
					<option value="http://www.monami.co.kr/art_contest/contest/introduction.asp">모나미환경사랑미술대회</option>
				</select>
			</div>
			<div class="copyright">
				<address>
					(주)모나미 | 대표 : 송하경 | 주소 : 경기도 용인시 수지구 손곡로 17 | 사업자등록번호 : 120-81-08227<br>
					고객센터 : 1544-2884 | 개인정보관리책임자 : 김준혁(monamihelp@monami.com)  | 통신판매업신고 : 제2008-용인수지-0117
				</address>
				<p>
					본 사이트의 모든 저작물의 저작권은 (주)모나미에 있습니다.<br>
					무단 복제나 도용은 저작권법 제 97조 5항에 의해 법으로 금지되어 있습니다.<br>
					<small>Copyright(c) (주)모나미 All rights Reserved.</small>
				</p>

			</div>
			<div class="escrow">
				<strong>이니시스(에스크로) 서비스</strong>
				<p>고객님은 안전거래를 위해 모든 거래 결제 시 <br>저희 쇼핑몰에서 가입한 전자 결제의 <br>매매보호(에스크로) 서비스를 이용하실 수 <br>있습니다.</p>
				<!-- <a href="#" onclick="owScrollYesCenter('https://pgweb.uplus.co.kr/ms/escrow/s_escrowYn.do?mertid=ws_monami', '_upluspopup', '460', '520')">서비스 가입사실 확인 ></a> -->
			</div>
		</div>
	</div>
	<div class="secure">
		<img src="/w/images/w/common/footer_secure1.jpg" alt="모나미 공식사이트">
		<img src="/w/images/w/common/footer_secure2.jpg" alt="">
		<img src="/w/images/w/common/footer_secure3.jpg" alt="">
		<img src="/w/images/w/common/footer_secure4.jpg" alt="">
		<img src="/w/images/w/common/footer_secure5.jpg" alt="">
		<img src="/w/images/w/common/footer_secure6.jpg" alt="">
		<img src="/w/images/w/common/footer_secure7.jpg" alt="">
		<img src="/w/images/w/common/footer_secure8.jpg" alt="">
		<img src="/w/images/w/common/footer_secure9.jpg" alt="">
	</div>
</footer>
<script type="text/javascript">

	var ezwelheight = 0;


	//우편번호 찾기 화면을 넣을 element
	var element_layer = document.getElementById('popAddr');

	function closeDaumPostcode() {
		// iframe을 넣은 element를 안보이게 한다.
		element_layer.style.display = 'none';
	}

	function execDaumPostcode(callback) {
		new daum.Postcode({
			oncomplete: function(data) {
				// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullAddr = data.address; // 최종 주소 변수
				var extraAddr = ''; // 조합형 주소 변수
	
				// 기본 주소가 도로명 타입일때 조합한다.
				if(data.addressType === 'R'){
					//법정동명이 있을 경우 추가한다.
					if(data.bname !== ''){
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가한다.
					if(data.buildingName !== ''){
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
				}
	
				// iframe을 넣은 element를 안보이게 한다.
				// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
				element_layer.style.display = 'none';
				
	            // 콜백 함수 
				callback(data.zonecode, fullAddr);
			},
			width : '100%',
			height : '100%',
			maxSuggestItems : 5
		}).embed(element_layer);
	
		// iframe을 넣은 element를 보이게 한다.
		element_layer.style.display = 'block';
	
		// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
		initLayerPosition();
	}

	// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
	// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
	// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
	function initLayerPosition(){
		var width = 500; //우편번호서비스가 들어갈 element의 width
		var height = 460; //우편번호서비스가 들어갈 element의 height
		var borderWidth = 1; //샘플에서 사용하는 border의 두께
	
		// 위에서 선언한 값들을 실제 element에 넣는다.
		element_layer.style.width = width + 'px';
		element_layer.style.height = height + 'px';
		element_layer.style.border = borderWidth + 'px solid';
		// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
		element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
		if (ezwelheight > 0) {
			element_layer.style.top = '300px';			
		} else {
			element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
		}
	}

	
	function getSessionId(){
		if(localStorage.getItem("monamiSessionId") == null){
			localStorage.setItem("monamiSessionId","B0C15CB800873508B0DA032E1D14984B");
		}
	
		return localStorage.getItem("monamiSessionId");
	}
	
	
	function deliveryTracking(trackingUrl, invoiceNo){
		if($.trim(trackingUrl) == ""){
			alert("배송추적 URL이 없습니다. 관리자에게 문의하세요.");
			return false;
		}
		
		if($.trim(invoiceNo) == ""){
			alert("송장번호를 확인하세요!");
			return false;
		}
		
		var url = trackingUrl.replace("__INVOICENO__", invoiceNo);
		
		var openNewWindow = window.open("about:blank");
		
		openNewWindow.location.href = url;
	}

</script>




<!-- 이지웰 이중스크롤방지 -->
<!-- 유입경로 호출 -->
<script type="text/javascript">
	var srcPathUrl = window.location.search.substring(1);
	
	if(srcPathUrl != ""){
		$.ajax({
			 url: "/w/ajax/srcPathAjax.do",
			 data : {
				 			"srcPathUrl"	:	srcPathUrl
				 		},
			 type: "GET",	
			 async: false,
			 cache: false,
			 contentType: "application/x-www-form-urlencoded; charset=UTF-8"  
		}); 
		
	}
</script>

<!-- 네이버 로그분석 스크립트 -->
<!-- <script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_22b1f65c4041";
	if (!_nasa) var _nasa={};
	wcs.inflow();
	wcs_do(_nasa);
</script> --></div>
</body>
</html>