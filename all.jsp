<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.getParameter("UTF-8");

String cp = request.getContextPath();	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=cp %>/monnami/css/top.css" type="text/css"/>
<script type="text/javascript" src="<%=cp%>/monnami/js/cart.js"></script>
<script type="text/javascript" src="<%=cp%>/monnami/js/commonScript.js"></script>
<script type="text/javascript" src="<%=cp%>/monnami/js/function.js"></script>
<script type="text/javascript" src="<%=cp%>/monnami/js/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="<%=cp%>/monnami/js/jquery-3.3.1.min.js"></script>

</head>
<body>


<header id="header" style="display: block;" class="active">
	<a href="#" class="btn-allmenu active"><span class="menu-trigger"><span></span><span></span><span></span><small class="hide">메뉴</small></span></a>
	<div class="allmenu active">
		<div class="inner">
			<div class="scroll-wrapper cont scrollbar-macosx" style="position: relative; height: 463px;"><div class="cont scrollbar-macosx scroll-content scroll-scrollx_visible scroll-scrolly_visible" style="height: 463px; margin-bottom: 0px; margin-right: 0px; max-height: 463px;">
				<ul>
					<li class="stationery">
						<a href="/w/stationeryMain.do"><span>Stationery</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221"><span>기록의 시작</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=222"><span>필기용</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=223"><span>메모용</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=224"><span>글자강조(Highlighting)</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=485"><span>고급필기류</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=487"><span>리필</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225"><span>취미의 발견</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=226"><span>인테리어/소품 꾸미기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=228"><span>패브릭 꾸미기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=230"><span>다이어리 꾸미기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=231"><span>그림그리기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=229"><span>기타</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=232"><span>상상과 표현</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=232&amp;schCateIdx3=233"><span>유아~어린이</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=234"><span>프로들의 도구</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=234&amp;schCateIdx3=235"><span>산업용</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=463"><span>생활 속 문구 </span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=463&amp;schCateIdx3=465"><span>디자인 문구</span></a></li>
												</ul>	
									</li>							
								</ul>
						</div>
					</li>
					<li class="monamipet">
						<a href="/w/petMain.do"><span>MonamiPet</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
							<li>
									<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2"><span>DOG</span></a>
									<ul>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3"><span>골라먹는 즐거움</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=4"><span>사료 전연령용</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=11"><span>사료- 자견용 (퍼피)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=18"><span>사료- 성견용 (어덜트)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=25"><span>사료- 노견용 (시니어)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=28"><span>간식</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=36"><span>영양제</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43"><span>내 친구의 공간</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=44"><span>위생/배변</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=53"><span>하우스/이동장/울타리</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=60"><span>줄/이름표</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=64"><span>급식기/급수기</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69"><span>내 친구의 작은 옷장</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69&amp;schCateIdx4=70"><span>의류</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69&amp;schCateIdx4=76"><span>미용/목욕</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83"><span>신나는 하루</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83&amp;schCateIdx4=84"><span>장난감</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83&amp;schCateIdx4=473"><span>작가의 솜씨</span></a></li>
											</ul>										
										</li>
									</ul>
								</li>
							<li>
									<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93"><span>CAT</span></a>
									<ul>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94"><span>골라먹는 즐거움</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=95"><span>사료 전연령용</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=102"><span>사료- 자묘용(키튼)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=109"><span>사료- 성묘용 (어덜트)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=116"><span>사료- 노묘용 (시니어)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=119"><span>간식</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=127"><span>영양제</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134"><span>내 친구의 공간</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=135"><span>모래/화장실/패드</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=144"><span>하우스/이동장/울타리</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=151"><span>스크래쳐/캣타워</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=155"><span>급식기/급수기</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=160"><span>내 친구의 작은 옷장</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=160&amp;schCateIdx4=167"><span>미용/목욕/위생/액세서리</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174"><span>신나는 하루</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174&amp;schCateIdx4=175"><span>장난감</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174&amp;schCateIdx4=474"><span>작가의 솜씨</span></a></li>
											</ul>										
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</li>
					<li class="hobby">
						<a href="/w/hobbyMain.do"><span>Craft&amp;Hobby</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li>
										<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=242"><span>내 공간 완성하기</span></a>
											<ul></ul></li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=243"><span>일상의 즐거움</span></a>
											<ul></ul></li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=244"><span>센스있게 마음 전달</span></a>
											<ul></ul></li>							
								</ul>
						</div>
					</li>
					<li class="monarte">
						<a href="/w/monarteMain.do"><span>Monarte</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li>
										<a href="/w/product/productList.do?schCateIdx1=237&amp;schCateIdx2=238"><span>스스로 자라는 아이</span></a>
											<ul></ul></li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=237&amp;schCateIdx2=240"><span>모나르떼 화방</span></a>
											<ul></ul></li>							
								</ul>
						</div>
					</li>
					<li class="storypick">
						<a href="/w/storypickMain.do"><span>Story Pick</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=30"><span>Stationery</span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&amp;level3Idx=35"><span>필기</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&amp;level3Idx=36"><span>취미</span></a></li>
												</ul>
									</li>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=31"><span>MonamiPet</span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=40"><span>훈련</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=39"><span>노하우</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=43"><span>일상</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=42"><span>푸드</span></a></li>
												</ul>
									</li>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=33"><span>Craft&amp;Hobby      </span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=45"><span>DIY</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=46"><span>Gift</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=49"><span>인테리어</span></a></li>
												</ul>
									</li>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=34"><span>Monarte</span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&amp;level3Idx=51"><span>미술</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&amp;level3Idx=50"><span>교육</span></a></li>
												</ul>
									</li>
								</ul>
						</div>
					</li>
					<li class="event">
						<a href="/w/promotion/event/eventList.do"><span>Event</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li><a href="/w/promotion/event/eventList.do"><span>이벤트</span></a></li>
								<li><a href="/w/promotion/exhibition/exhibitionList.do"><span>기획전</span></a></li>
								<li><a href="/w/promotion/outlet/outletList.do"><span>아울렛</span></a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div><div class="scroll-element scroll-x scroll-scrollx_visible scroll-scrolly_visible" style="display: none;"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 0px; left: 0px;"></div></div></div><div class="scroll-element scroll-y scroll-scrollx_visible scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 296px; top: 0px;"></div></div></div></div>
		</div>
	</div>

	<h1 class="logo"><a href="/w/">Monami Mall</a></h1>
	<nav>
		<ul>
			<li class="stationery">
				<a href="/w/stationeryMain.do"><span><small>문구</small>Stationery</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221"><span>기록의 시작</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=222"><span>필기용</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=223"><span>메모용</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=224"><span>글자강조(Highlighting)</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=485"><span>고급필기류</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=487"><span>리필</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225"><span>취미의 발견</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=226"><span>인테리어/소품 꾸미기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=228"><span>패브릭 꾸미기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=230"><span>다이어리 꾸미기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=231"><span>그림그리기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=229"><span>기타</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=232"><span>상상과 표현</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=232&amp;schCateIdx3=233"><span>유아~어린이</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=234"><span>프로들의 도구</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=234&amp;schCateIdx3=235"><span>산업용</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=463"><span>생활 속 문구 </span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=463&amp;schCateIdx3=465"><span>디자인 문구</span></a></li>
										</ul>	
							</li>							
						</ul>
				</div>
			</li>
			<li class="monamipet">
				<a href="/w/petMain.do"><span><small>모나미펫</small>MonamiPet</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
									<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2"><span>DOG</span></a>
									<ul>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3"><span>골라먹는 즐거움</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=4"><span>사료 전연령용</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=11"><span>사료- 자견용 (퍼피)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=18"><span>사료- 성견용 (어덜트)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=25"><span>사료- 노견용 (시니어)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=28"><span>간식</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=36"><span>영양제</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43"><span>내 친구의 공간</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=44"><span>위생/배변</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=53"><span>하우스/이동장/울타리</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=60"><span>줄/이름표</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=64"><span>급식기/급수기</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69"><span>내 친구의 작은 옷장</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69&amp;schCateIdx4=70"><span>의류</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69&amp;schCateIdx4=76"><span>미용/목욕</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83"><span>신나는 하루</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83&amp;schCateIdx4=84"><span>장난감</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83&amp;schCateIdx4=473"><span>작가의 솜씨</span></a></li>
													</ul>										
											</li>
											</ul>	
								</li>							
							<li>
									<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93"><span>CAT</span></a>
									<ul>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94"><span>골라먹는 즐거움</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=95"><span>사료 전연령용</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=102"><span>사료- 자묘용(키튼)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=109"><span>사료- 성묘용 (어덜트)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=116"><span>사료- 노묘용 (시니어)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=119"><span>간식</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=127"><span>영양제</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134"><span>내 친구의 공간</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=135"><span>모래/화장실/패드</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=144"><span>하우스/이동장/울타리</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=151"><span>스크래쳐/캣타워</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=155"><span>급식기/급수기</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=160"><span>내 친구의 작은 옷장</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=160&amp;schCateIdx4=167"><span>미용/목욕/위생/액세서리</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174"><span>신나는 하루</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174&amp;schCateIdx4=175"><span>장난감</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174&amp;schCateIdx4=474"><span>작가의 솜씨</span></a></li>
													</ul>										
											</li>
											</ul>	
								</li>							
							</ul>
				</div>
			</li>
			<li class="hobby">
				<a href="/w/hobbyMain.do"><span><small>취미DIY</small>Craft&amp;Hobby</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
								<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=242"><span>내 공간 완성하기</span></a>
									<ul></ul></li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=243"><span>일상의 즐거움</span></a>
									<ul></ul></li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=244"><span>센스있게 마음 전달</span></a>
									<ul></ul></li>							
						</ul>
				</div>
			</li>
			<li class="monarte">
				<a href="/w/monarteMain.do"><span><small>모나르떼</small>Monarte</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
								<a href="/w/product/productList.do?schCateIdx1=237&amp;schCateIdx2=238"><span>스스로 자라는 아이</span></a>
									<ul></ul></li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=237&amp;schCateIdx2=240"><span>모나르떼 화방</span></a>
									<ul></ul></li>							
						</ul>
				</div>
			</li>
			<li class="storypick">
				<a href="/w/storypickMain.do"><span><small>스토리픽</small>Story Pick</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=30"><span>Stationery</span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&amp;level3Idx=35"><span>필기</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&amp;level3Idx=36"><span>취미</span></a></li>
									</ul>
						</li>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=31"><span>MonamiPet</span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=40"><span>훈련</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=39"><span>노하우</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=43"><span>일상</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=42"><span>푸드</span></a></li>
									</ul>
						</li>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=33"><span>Craft&amp;Hobby      </span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=45"><span>DIY</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=46"><span>Gift</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=49"><span>인테리어</span></a></li>
									</ul>
						</li>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=34"><span>Monarte</span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&amp;level3Idx=51"><span>미술</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&amp;level3Idx=50"><span>교육</span></a></li>
									</ul>
						</li>
						</ul>
				</div>
			</li>
			<li class="event">
				<a href="/w/promotion/event/eventList.do"><span><small>이벤트</small>Event</span></a>
				<div class="subnav" style="top: 100px;">
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
		<input type="hidden" name="searchGbn" value="top">
			<fieldset class="search-field">
				<legend class="hide">검색</legend>
				<!-- 검색어 따라 fn.removeClass('.sdefault');fn.addClass('.slist');fn.addClass('.snodata'); 이용하시면 됩니다. -->
				<input type="text" placeholder="검색어를 입력하세요." name="keyword" id="top_search_keyword" title="검색어 입력" onkeyup="topSearchKeyup(event);" autocomplete="off">
				<button type="submit" class="btn-search">검색</button>
			</fieldset>
		</form>

		<!-- 초기화면// -->
		<div class="sdefault active">
			<div class="sword">
				<!-- 추천 검색어// -->
				<div class="recom">
					<h3>추천 검색어</h3>
					<div class="scroll-wrapper ls scrollbar-macosx" style="position: relative;"><div class="ls scrollbar-macosx scroll-content" style="height: 382px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
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
					</div><div class="scroll-element scroll-x" style="display: none;"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div><div class="scroll-element scroll-y"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div></div>
				</div>
				<!-- //추천 검색어 -->

				<!-- 최근 검색어// -->
				<div class="latest">
					<h3>최근 검색어</h3>
					<div class="scroll-wrapper ls scrollbar-macosx" style="position: relative;"><div class="ls scrollbar-macosx scroll-content" id="recentSearchList" style="height: 382px; margin-bottom: 0px; margin-right: 0px; max-height: none;"><div class="nodata">최근 검색한 내역이 없습니다.</div></div><div class="scroll-element scroll-x" style="display: none;"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div><div class="scroll-element scroll-y"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div></div>
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
		<div class="slist" id="searchHelperInner">
			
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



<header id="header" style="display: block;" class="">
	<a href="#" class="btn-allmenu out"><span class="menu-trigger"><span></span><span></span><span></span><small class="hide">메뉴</small></span></a>
	<div class="allmenu">
		<div class="inner">
			<div class="scroll-wrapper cont scrollbar-macosx" style="position: relative; height: 463px;"><div class="cont scrollbar-macosx scroll-content scroll-scrollx_visible scroll-scrolly_visible" style="height: 463px; margin-bottom: 0px; margin-right: 0px; max-height: 463px;">
				<ul>
					<li class="stationery">
						<a href="/w/stationeryMain.do"><span>Stationery</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221"><span>기록의 시작</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=222"><span>필기용</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=223"><span>메모용</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=224"><span>글자강조(Highlighting)</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=485"><span>고급필기류</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=487"><span>리필</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225"><span>취미의 발견</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=226"><span>인테리어/소품 꾸미기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=228"><span>패브릭 꾸미기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=230"><span>다이어리 꾸미기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=231"><span>그림그리기</span></a></li>
												<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=229"><span>기타</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=232"><span>상상과 표현</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=232&amp;schCateIdx3=233"><span>유아~어린이</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=234"><span>프로들의 도구</span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=234&amp;schCateIdx3=235"><span>산업용</span></a></li>
												</ul>	
									</li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=463"><span>생활 속 문구 </span></a>
										<ul>
											<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=463&amp;schCateIdx3=465"><span>디자인 문구</span></a></li>
												</ul>	
									</li>							
								</ul>
						</div>
					</li>
					<li class="monamipet">
						<a href="/w/petMain.do"><span>MonamiPet</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
							<li>
									<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2"><span>DOG</span></a>
									<ul>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3"><span>골라먹는 즐거움</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=4"><span>사료 전연령용</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=11"><span>사료- 자견용 (퍼피)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=18"><span>사료- 성견용 (어덜트)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=25"><span>사료- 노견용 (시니어)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=28"><span>간식</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=36"><span>영양제</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43"><span>내 친구의 공간</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=44"><span>위생/배변</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=53"><span>하우스/이동장/울타리</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=60"><span>줄/이름표</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=64"><span>급식기/급수기</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69"><span>내 친구의 작은 옷장</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69&amp;schCateIdx4=70"><span>의류</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69&amp;schCateIdx4=76"><span>미용/목욕</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83"><span>신나는 하루</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83&amp;schCateIdx4=84"><span>장난감</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83&amp;schCateIdx4=473"><span>작가의 솜씨</span></a></li>
											</ul>										
										</li>
									</ul>
								</li>
							<li>
									<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93"><span>CAT</span></a>
									<ul>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94"><span>골라먹는 즐거움</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=95"><span>사료 전연령용</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=102"><span>사료- 자묘용(키튼)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=109"><span>사료- 성묘용 (어덜트)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=116"><span>사료- 노묘용 (시니어)</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=119"><span>간식</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=127"><span>영양제</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134"><span>내 친구의 공간</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=135"><span>모래/화장실/패드</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=144"><span>하우스/이동장/울타리</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=151"><span>스크래쳐/캣타워</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=155"><span>급식기/급수기</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=160"><span>내 친구의 작은 옷장</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=160&amp;schCateIdx4=167"><span>미용/목욕/위생/액세서리</span></a></li>
											</ul>										
										</li>
									<li>
										<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174"><span>신나는 하루</span></a>
										<ul>
										<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174&amp;schCateIdx4=175"><span>장난감</span></a></li>
											<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174&amp;schCateIdx4=474"><span>작가의 솜씨</span></a></li>
											</ul>										
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</li>
					<li class="hobby">
						<a href="/w/hobbyMain.do"><span>Craft&amp;Hobby</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li>
										<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=242"><span>내 공간 완성하기</span></a>
											<ul></ul></li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=243"><span>일상의 즐거움</span></a>
											<ul></ul></li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=244"><span>센스있게 마음 전달</span></a>
											<ul></ul></li>							
								</ul>
						</div>
					</li>
					<li class="monarte">
						<a href="/w/monarteMain.do"><span>Monarte</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li>
										<a href="/w/product/productList.do?schCateIdx1=237&amp;schCateIdx2=238"><span>스스로 자라는 아이</span></a>
											<ul></ul></li>							
								<li>
										<a href="/w/product/productList.do?schCateIdx1=237&amp;schCateIdx2=240"><span>모나르떼 화방</span></a>
											<ul></ul></li>							
								</ul>
						</div>
					</li>
					<li class="storypick">
						<a href="/w/storypickMain.do"><span>Story Pick</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=30"><span>Stationery</span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&amp;level3Idx=35"><span>필기</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&amp;level3Idx=36"><span>취미</span></a></li>
												</ul>
									</li>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=31"><span>MonamiPet</span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=40"><span>훈련</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=39"><span>노하우</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=43"><span>일상</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=42"><span>푸드</span></a></li>
												</ul>
									</li>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=33"><span>Craft&amp;Hobby      </span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=45"><span>DIY</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=46"><span>Gift</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=49"><span>인테리어</span></a></li>
												</ul>
									</li>
								<li>
										<a href="/w/storypick/storypickCateList.do?level2Idx=34"><span>Monarte</span></a>
										<ul>
											<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&amp;level3Idx=51"><span>미술</span></a></li>
												<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&amp;level3Idx=50"><span>교육</span></a></li>
												</ul>
									</li>
								</ul>
						</div>
					</li>
					<li class="event">
						<a href="/w/promotion/event/eventList.do"><span>Event</span></a>
						<div class="subnav" style="top: 100px;">
							<ul>
								<li><a href="/w/promotion/event/eventList.do"><span>이벤트</span></a></li>
								<li><a href="/w/promotion/exhibition/exhibitionList.do"><span>기획전</span></a></li>
								<li><a href="/w/promotion/outlet/outletList.do"><span>아울렛</span></a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div><div class="scroll-element scroll-x scroll-scrollx_visible scroll-scrolly_visible" style="display: none;"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 0px; left: 0px;"></div></div></div><div class="scroll-element scroll-y scroll-scrollx_visible scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 296px; top: 0px;"></div></div></div></div>
		</div>
	</div>

	<h1 class="logo"><a href="/w/">Monami Mall</a></h1>
	<nav>
		<ul>
			<li class="stationery">
				<a href="/w/stationeryMain.do"><span><small>문구</small>Stationery</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221"><span>기록의 시작</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=222"><span>필기용</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=223"><span>메모용</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=224"><span>글자강조(Highlighting)</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=485"><span>고급필기류</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=221&amp;schCateIdx3=487"><span>리필</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225"><span>취미의 발견</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=226"><span>인테리어/소품 꾸미기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=228"><span>패브릭 꾸미기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=230"><span>다이어리 꾸미기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=231"><span>그림그리기</span></a></li>
										<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=225&amp;schCateIdx3=229"><span>기타</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=232"><span>상상과 표현</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=232&amp;schCateIdx3=233"><span>유아~어린이</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=234"><span>프로들의 도구</span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=234&amp;schCateIdx3=235"><span>산업용</span></a></li>
										</ul>	
							</li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=463"><span>생활 속 문구 </span></a>
								<ul>
									<li><a href="/w/product/productList.do?schCateIdx1=184&amp;schCateIdx2=463&amp;schCateIdx3=465"><span>디자인 문구</span></a></li>
										</ul>	
							</li>							
						</ul>
				</div>
			</li>
			<li class="monamipet">
				<a href="/w/petMain.do"><span><small>모나미펫</small>MonamiPet</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
									<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2"><span>DOG</span></a>
									<ul>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3"><span>골라먹는 즐거움</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=4"><span>사료 전연령용</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=11"><span>사료- 자견용 (퍼피)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=18"><span>사료- 성견용 (어덜트)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=25"><span>사료- 노견용 (시니어)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=28"><span>간식</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=3&amp;schCateIdx4=36"><span>영양제</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43"><span>내 친구의 공간</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=44"><span>위생/배변</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=53"><span>하우스/이동장/울타리</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=60"><span>줄/이름표</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=43&amp;schCateIdx4=64"><span>급식기/급수기</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69"><span>내 친구의 작은 옷장</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69&amp;schCateIdx4=70"><span>의류</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=69&amp;schCateIdx4=76"><span>미용/목욕</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83"><span>신나는 하루</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83&amp;schCateIdx4=84"><span>장난감</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=2&amp;schCateIdx3=83&amp;schCateIdx4=473"><span>작가의 솜씨</span></a></li>
													</ul>										
											</li>
											</ul>	
								</li>							
							<li>
									<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93"><span>CAT</span></a>
									<ul>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94"><span>골라먹는 즐거움</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=95"><span>사료 전연령용</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=102"><span>사료- 자묘용(키튼)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=109"><span>사료- 성묘용 (어덜트)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=116"><span>사료- 노묘용 (시니어)</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=119"><span>간식</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=94&amp;schCateIdx4=127"><span>영양제</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134"><span>내 친구의 공간</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=135"><span>모래/화장실/패드</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=144"><span>하우스/이동장/울타리</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=151"><span>스크래쳐/캣타워</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=134&amp;schCateIdx4=155"><span>급식기/급수기</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=160"><span>내 친구의 작은 옷장</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=160&amp;schCateIdx4=167"><span>미용/목욕/위생/액세서리</span></a></li>
													</ul>										
											</li>
											<li>
												<a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174"><span>신나는 하루</span></a>
												<ul>
												<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174&amp;schCateIdx4=175"><span>장난감</span></a></li>
													<li><a href="/w/product/productList.do?schCateIdx1=1&amp;schCateIdx2=93&amp;schCateIdx3=174&amp;schCateIdx4=474"><span>작가의 솜씨</span></a></li>
													</ul>										
											</li>
											</ul>	
								</li>							
							</ul>
				</div>
			</li>
			<li class="hobby">
				<a href="/w/hobbyMain.do"><span><small>취미DIY</small>Craft&amp;Hobby</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
								<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=242"><span>내 공간 완성하기</span></a>
									<ul></ul></li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=243"><span>일상의 즐거움</span></a>
									<ul></ul></li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=241&amp;schCateIdx2=244"><span>센스있게 마음 전달</span></a>
									<ul></ul></li>							
						</ul>
				</div>
			</li>
			<li class="monarte">
				<a href="/w/monarteMain.do"><span><small>모나르떼</small>Monarte</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
								<a href="/w/product/productList.do?schCateIdx1=237&amp;schCateIdx2=238"><span>스스로 자라는 아이</span></a>
									<ul></ul></li>							
						<li>
								<a href="/w/product/productList.do?schCateIdx1=237&amp;schCateIdx2=240"><span>모나르떼 화방</span></a>
									<ul></ul></li>							
						</ul>
				</div>
			</li>
			<li class="storypick">
				<a href="/w/storypickMain.do"><span><small>스토리픽</small>Story Pick</span></a>
				<div class="subnav" style="top: 100px;">
					<ul>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=30"><span>Stationery</span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&amp;level3Idx=35"><span>필기</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=30&amp;level3Idx=36"><span>취미</span></a></li>
									</ul>
						</li>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=31"><span>MonamiPet</span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=40"><span>훈련</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=39"><span>노하우</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=43"><span>일상</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=31&amp;level3Idx=42"><span>푸드</span></a></li>
									</ul>
						</li>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=33"><span>Craft&amp;Hobby      </span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=45"><span>DIY</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=46"><span>Gift</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=33&amp;level3Idx=49"><span>인테리어</span></a></li>
									</ul>
						</li>
						<li>
							<a href="/w/storypick/storypickCateList.do?level2Idx=34"><span>Monarte</span></a>
							<ul>
								<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&amp;level3Idx=51"><span>미술</span></a></li>
									<li><a href="/w/storypick/storypickCateList.do?level2Idx=34&amp;level3Idx=50"><span>교육</span></a></li>
									</ul>
						</li>
						</ul>
				</div>
			</li>
			<li class="event">
				<a href="/w/promotion/event/eventList.do"><span><small>이벤트</small>Event</span></a>
				<div class="subnav" style="top: 100px;">
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
		<input type="hidden" name="searchGbn" value="top">
			<fieldset class="search-field">
				<legend class="hide">검색</legend>
				<!-- 검색어 따라 fn.removeClass('.sdefault');fn.addClass('.slist');fn.addClass('.snodata'); 이용하시면 됩니다. -->
				<input type="text" placeholder="검색어를 입력하세요." name="keyword" id="top_search_keyword" title="검색어 입력" onkeyup="topSearchKeyup(event);" autocomplete="off">
				<button type="submit" class="btn-search">검색</button>
			</fieldset>
		</form>

		<!-- 초기화면// -->
		<div class="sdefault active">
			<div class="sword">
				<!-- 추천 검색어// -->
				<div class="recom">
					<h3>추천 검색어</h3>
					<div class="scroll-wrapper ls scrollbar-macosx" style="position: relative;"><div class="ls scrollbar-macosx scroll-content" style="height: 382px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
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
					</div><div class="scroll-element scroll-x" style="display: none;"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div><div class="scroll-element scroll-y"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div></div>
				</div>
				<!-- //추천 검색어 -->

				<!-- 최근 검색어// -->
				<div class="latest">
					<h3>최근 검색어</h3>
					<div class="scroll-wrapper ls scrollbar-macosx" style="position: relative;"><div class="ls scrollbar-macosx scroll-content" id="recentSearchList" style="height: 382px; margin-bottom: 0px; margin-right: 0px; max-height: none;"><div class="nodata">최근 검색한 내역이 없습니다.</div></div><div class="scroll-element scroll-x" style="display: none;"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div><div class="scroll-element scroll-y"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div></div>
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
		<div class="slist" id="searchHelperInner">
			
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
	
	
	
</body>
</html>