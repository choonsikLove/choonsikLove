<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/Main.css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<title>메인페이지</title>
</head>
<body>

<header>
	<div id="customerCenter">
			<ul class = "CC">
				<li><a id="linkToCC" href="CS1.jsp">고객센터</a></li>
			</ul>
		</div>

		<div id="logo">
			<a href="Main.jsp"><img src="../image/logo2.png" alt="로고" style="width: 13.74em; height: 3em;"></a> <!-- 로고 주소는 일단 고친거임  -->
		</div>

		<div id="menuClass">
			<ul class="menu">
				<li id="menu_login"><a href="login.jsp">로그인</a></li>
				<li id="justSlash">/</li>
				<li id="menu_register"><a href="MemberRegister.jsp">회원가입</a></li>
				<li id="menu_search"><a href="Search.jsp">검색</a></li>
				<li id="menu_mypage"><a href="mypage.jsp">마이페이지</a></li>
			</ul>
	</div>

	</header>
	<hr>
	
<div id="advertisement">
	<div class="arrows" id="arrowPrev">
		<img src="../image/arrow1.png">
	</div>
	<div class="slider">
		<div><a href="http://google.com" target="_blank"><img src="../image/광고1.png" alt="광고이미지1" class="advImages"></a></div>
		<div><img src="../image/광고2.png" alt="광고이미지2" class="advImages"></div>
 		<div><img src="../image/광고3.png" alt="광고이미지3" class="advImages"></div>
	</div>
	<div class="arrows" id="arrowNext">
		<img src="../image/arrow2.png">
	</div>
	<script type="text/javascript">
	$( document ).ready( function() {
		$('.slider').slick({
 			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: true,
		    autoplay: true,
          	autoplaySpeed: 1500,
          	speed: 700,
          	pauseOnFocus: false, //이거 두개로 
          	pauseOnHover: false, //자동 재생이 멈추는 것을 방지할 수 있음.
          	prevArrow: $('#arrowPrev'),
          	nextArrow: $('#arrowNext')
		});
	});
	</script>
</div>
	
	<div class="recommendations">
		<p id="recText">추천 상품</p>
		<table class="recTable">
			<tr id="row1">
				<th><a href="MerchDetail.jsp"><img class="recImg1" src="../image/grayBox.png"></a></th>
				<th><a href="MerchDetail.jsp"><img class="recImg1" src="../image/grayBox.png"></a></th>
				<th><a href="MerchDetail.jsp"><img class="recImg1" src="../image/grayBox.png"></a></th>
				<th><a href="MerchDetail.jsp"><img class="recImg1" src="../image/grayBox.png"></a></th>
			</tr>

			<tr id="row2">
				<th><a href="MerchDetail.jsp">
						<p id="productName1">설명1</p>
					</a>
					<p id="productCost1">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p id="productName2">설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2
							설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2</p>
					</a>
					<p id="productCost2">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p id="productName3">상품제목3</p>
					</a>
					<p id="productCost3">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p id="productName4">설명4</p>
					</a>
					<p id="productCost4">1,000,000원</p>
				</th>
			</tr>

			<tr id="row3">
				<th><a href="MerchDetail.jsp"><img class="recImg2" src="../image/grayBox.png"></a></th>
				<th><a href="MerchDetail.jsp"><img class="recImg2" src="../image/grayBox.png"></a></th>
				<th><a href="MerchDetail.jsp"><img class="recImg2" src="../image/grayBox.png"></a></th>
				<th><a href="MerchDetail.jsp"><img class="recImg2" src="../image/grayBox.png"></a></th>
			</tr>

			<tr id="row4">
						<th><a href="MerchDetail.jsp">
						<p id="productName5">설명5</p>
					</a>
					<p id="productCost1">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p id="productName6">긴제목설명긴제목설명6긴제목설명6긴제목설명6긴제목설명66</p>
					</a>
					<p id="productCost2">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p id="productName7">설명7</p>
					</a>
					<p id="productCost3">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p id="productName8">설명8</p>
					</a>
					<p id="productCost4">1,000,000원</p>
				</th>
			</tr>
		</table>
		
	<div id="productDetails1">
    	<p>추천 상품</p>
    </div>
    

	<script type="text/javascript">
		var ri1 = document.getElementsByClassName("recImg1");
		var ri2 = document.getElementsByClassName("recImg2");
		var pd1 = document.getElementById("productDetails1");
		//var pd2 = document.getElementById("productDetails2");
		
		for(i = 0; i < ri1.length; i++){
			ri1[i].addEventListener("mouseover", cursorIn);
			ri1[i].addEventListener("mousemove", cursorMove1);
			ri1[i].addEventListener("mouseout", cursorOut);
		}
		
		
		for(i = 0; i < ri2.length; i++){
			ri2[i].addEventListener("mouseover", cursorIn);
			ri2[i].addEventListener("mousemove", cursorMove2);
			ri2[i].addEventListener("mouseout", cursorOut);
		}
		
		function cursorIn() {
			pd1.style.visibility = 'visible';
		}

		function cursorOut() {
			pd1.style.visibility = 'hidden';
		}
		
		function cursorMove1() {
			pd1.style.zIndex = 200; //임의의 아주 큰 수를 줘서 항상 위에 있게 한다
			
			document.onmousemove = function(e) { //e해야 좌표값이용 가능
				pd1.style.left = e.clientX + 10 +"px";
				pd1.style.top = 1162 + "px"; 
				pd1.innerHTML = e.offsetY;
			} 
		}
		
		function cursorMove2() {
			pd1.style.zIndex = 200; //임의의 아주 큰 수를 줘서 항상 위에 있게 한다
			
			document.onmousemove = function(e) { //e해야 좌표값이용 가능
				pd1.style.left = e.clientX + 10 +"px";
				pd1.style.top = 1700 + "px"; 
				pd1.innerHTML = e.offsetY;
			} 
		}
	
	</script>

<div class="pageMarkers">
		<!--페이지 넘겨 기능  -->
		<table id="pageTable">
			<tr id="pageRow"> 
				<td class= "markers outward1"><a href="#">《</a></td>
				<td class= "markers inward1"><a href="#">〈</a></td>
				<td>&nbsp;&nbsp;</td>
				<td class= "markers first"><a href="#">1</a></td>
				<td class="markers second"><a href="#">2</a></td>
				<td class= "markers third"><a href="#">3</a></td>
				<td class="markers fourth"><a href="#">4</a></td> 
				<!-- 지금은 예시이고 나중에는 수가 계속 변하게 해야함  -->
				<td>&nbsp;&nbsp;</td>
				<td class= "markers outward2"><a href="#">〉</a></td>
				<td class= "markers inward2"><a href="#">》</a></td>
			</tr>
		</table>
	</div> <!-- pageMArkers의 끝. -->

	<!-- recommendations의 끝  -->
	</div>


<footer>
	<div class=inner>
		<div>
			<img src="../image/logo_black.png" alt="검은 로고">
		</div>
		<div>
			<span>(주)사각시장</span><br>
			©SAGAK SIZANG Co. ALL RIGHTS RESERVED<br>
			대표자: 김사각<br>
		</div>
		<div>
			고객센터<br>
			운영 시간&nbsp;&nbsp;9:00 - 16:00<br>
			☎02 2345 6543
		</div>
	</div>
</footer>

</body>
</html>