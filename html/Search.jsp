<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/Search.css">
<title>검색</title>
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

<div id="wrap">
	<div id="searchDiv">
		<form>
			<input id="search" type="text">
			<button id="searchButton">
				<img src='../image/magnify.png' alt="돋보기" width="20px" height="20px">
			</button>		
		</form>
	</div>
	
	<div id="categoryDiv">
		<h3>카테고리</h3> 
		<div id="category"> <!-- 모든 회사 총괄하는 카테고리  -->
			<div id="categoryRow1" class="categoryRow"> <!-- 다른 회사는 새로운 row로 시작 -->
				<div class="categoryLeft" id="left1">
					<form>
						<input type="checkbox" name="sm"><label>SM</label>
					</form>
				</div>
				
				<div class="categoryRight" id="right1">
					<div class="firstFloor">
						<form>
							<input type="checkbox" name="nct" onclick="openBox('nctHidden0')"><label>NCT</label>
						</form>
					</div>
					<div class="hiddenFloor" id="nctHidden0" style="display: none;">
						<hr>
						<form>
							<input type="radio" name="nctUnit" onclick="openBox('nctHidden1')"><label>NCT</label>
							<input type="radio" name="nctUnit" onclick="openBox('nctHidden2')"><label>NCT 127</label>
							<input type="checkbox" name="nctUnit"><label>NCT WayV</label>
							<input type="checkbox" name="nctUnit"><label>NCT DREAM</label>
						</form>
					</div><!-- 숨겨진 층 -->
					
					
					<script type="text/javascript">
						function openBox(obj) {
				 	 		if(document.getElementById(obj).style.display == "none"){
				 	 		document.getElementById(obj).style.display = "block";
		 			 		} else {
		 	 				document.getElementById(obj).style.display = "none";
		 	 				}
		 				} 
					</script>
					
					<!--아직 만드는 중  -->
<!-- 					<div class="hiddenFloor" id="nctHidden1" style="display: none;">
						<p>앨범별</p>
						<form>
							<input type="checkbox" name="nctAlbum"><label>RESONANCE</label>
							<input type="checkbox" name="nctAlbum"><label>UNIVERSE</label>
						</form>
						<p>멤버별</p>
						<form>
							<input type="checkbox" name="nctMember"><label>마크</label>
							<input type="checkbox" name="nctMember"><label>제노</label>
						</form>
					</div>숨겨진 층
					<div class="hiddenFloor" id="nctHidden2" style="display: none;">
						<p>앨범별</p>
						<form>
							<input type="checkbox" name="nctAlbum"><label>127</label>
							<input type="checkbox" name="nctAlbum"><label>127</label>
						</form>
						<p>멤버별</p>
						<form>
							<input type="checkbox" name="nctMember"><label>마크</label>
							<input type="checkbox" name="nctMember"><label>해찬</label>
						</form>
					</div>숨겨진 층 -->
					
					
					
				</div><!-- 오른쪽div -->				
			</div><!--row1  -->
			
		</div><!--회색 상자div  -->
		
				
	</div><!--글자까지 포함한 전체  -->
	


	<div class="products"> 
	<!-- 4층으로 해도 괜찮을 것 같고 이미지 크기를 조금 더 크게 해도 괜찮을 것 같음 3*4같이 -->
		<table class="pTable">
			<tr id="row1">
				<th><a href="MerchDetail.jsp"><img class="pImg1" id="img1"></a></th>
				<th><a href="MerchDetail.jsp"><img class="pImg1" id="img2"></a></th>
				<th><a href="MerchDetail.jsp"><img class="pImg1" id="img3"></a></th>
				<th><a href="MerchDetail.jsp"><img class="pImg1" id="img4"></a></th>
			</tr>

			<tr id="row2">
				<th><a href="MerchDetail.jsp">
						<p class="productName" id="productName1">설명1</p>
					</a>
					<p id="productCost1">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p class="productName" id="productName2">설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2
							설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2</p>
					</a>
					<p id="productCost2">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p class="productName" id="productName3">상품제목3</p>
					</a>
					<p id="productCost3">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p class="productName" id="productName4">설명4</p>
					</a>
					<p id="productCost4">1,000,000원</p>
				</th>
			</tr>

			<tr id="row3">
				<th><a href="MerchDetail.jsp"><img class="pImg2" id="img5"></a></th>
				<th><a href="MerchDetail.jsp"><img class="pImg2" id="img6"></a></th>
				<th><a href="MerchDetail.jsp"><img class="pImg2" id="img7"></a></th>
				<th><a href="MerchDetail.jsp"><img class="pImg2" id="img8"></a></th>
			</tr>

			<tr id="row4">
				<th><a href="MerchDetail.jsp">
						<p class="productName" id="productName5">설명5</p>
					</a>
					<p id="productCost1">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p class="productName" id="productName6">긴제목설명긴제목설명6긴제목설명6긴제목설명6긴제목설명66</p>
					</a>
					<p id="productCost2">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p class="productName" id="productName7">설명7</p>
					</a>
					<p id="productCost3">1,000,000원</p>
				</th>
				<th><a href="MerchDetail.jsp">
						<p class="productName" id="productName8">설명8</p>
					</a>
					<p id="productCost4">1,000,000원</p>
				</th>
			</tr>
		</table>
		
		<script type="text/javascript">
			const pImg1 = document.getElementsByClassName('pImg1');
			const pImg2 = document.getElementsByClassName('pImg2');
			
			for(let j = 0; j < pImg1.length; j++){
				pImg1[j].src = "../image/grayBox.png";
				pImg2[j].src = "../image/grayBox.png";
			}
			
		</script>
		
 	<div id="productDetails1"> 
    	<p id="pDetailP"></p>
    	<script type="text/javascript">
    		var pDetailP = document.getElementById('pDetailP');
    		pDetailP.innerHTML = "상품에 따른 설명";//상품 각각 연결
    	</script>
    </div>

	<script type="text/javascript">
		var ri1 = document.getElementsByClassName("pImg1");
		var ri2 = document.getElementsByClassName("pImg2");
		var pd1 = document.getElementById("productDetails1");
		
		for(let i = 0; i < ri1.length; i++){
			ri1[i].addEventListener("mouseover", cursorIn);
			ri1[i].addEventListener("mousemove", cursorMove1);
			ri1[i].addEventListener("mouseout", cursorOut);
		}
		
		
		for(let i = 0; i < ri2.length; i++){
			ri2[i].addEventListener("mouseover", cursorIn);
			ri2[i].addEventListener("mousemove", cursorMove4);
			ri2[i].addEventListener("mouseout", cursorOut);
		}
		
		function cursorIn() {
			pd1.style.visibility = 'visible';
		}

		function cursorOut() {
			pd1.style.visibility = 'hidden';
		}
		
		
		//이 cursorMove부분 전체적으로 다 바꾸기
		function cursorMove1() {
			pd1.style.zIndex = 200; //임의의 아주 큰 수를 줘서 항상 위에 있게 한다
			
			document.onmousemove = function(e) { //e해야 좌표값이용 가능
				pd1.style.left = (e.clientX - 100) +"px"; //왜 이렇게 떨어져서 나오지??
				pd1.style.top = 727 + "px"; 
			/* 	pd1.innerHTML = e.clientX + ", " + e.clientY; */
			} 
		}
		
		function cursorMove4() {
			pd1.style.zIndex = 200; 
			
			document.onmousemove = function(e) {
				pd1.style.left = (e.clientX - 100) +"px";
				pd1.style.top = 955 + "px"; 
			/* 	pd1.innerHTML = e.clientX + ", " + e.clientY; */
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
				<td>&nbsp;&nbsp;</td>
				<td class= "markers outward2"><a href="#">〉</a></td>
				<td class= "markers inward2"><a href="#">》</a></td>
			</tr>
		</table>
	</div> <!-- pageMArkers의 끝. -->

</div><!-- 다른사람 상품의 끝  -->



</div><!--wrap의 끝  -->

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