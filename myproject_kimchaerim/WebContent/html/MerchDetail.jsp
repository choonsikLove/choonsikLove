<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/MerchDetail.css">
<link rel="stylesheet" type="text/css" href="../test/report_popup.css">
<script type="text/javascript" src="../jquery/jquery-3.6.0.js"></script>
<title>상품설명창</title>
</head>
<body onload="firstImg()">
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

<section class="section" id="section1">
	<p id="report" style="cursor: pointer;">신고하기</p><!--기능 추가 필요  -->
	
	<div id="popup" style="display:none;">
  <div class="popup_box">
      <div id="x">
     	 <img alt="X" src="../image/X.png" height= "20px" width= "10px">
      </div>


      <div class="popup_cont">
      	<div id="merchInfo">
			<p>신고할 상품명</p>
			<p>신고할 판매자</p>
			<form>
				<select>
					<option>신고 사유1</option>
					<option>신고 사유2</option>
					<option>신고 사유3</option>
					<option>신고 사유4</option>
				</select>
			</form>
		</div>
		
		<div id="reportDiv">
			<form>
				<textarea rows="8" cols="70" maxlength="300" id="textArea" 
				placeholder="신고하기!"></textarea>
				<br>
				<button type="submit">확인</button>
			</form>
			<!--  onkeyup="count()" 글자수 카운트 기능-->
		</div>
			
      </div>
  </div>
</div>
<script type="text/javascript">
function openPop() {
    document.getElementById("popup").style.display = "block";

}

function closePop() {
    document.getElementById("popup").style.display = "none";
}

$(function() {
	$('#report').click(openPop);
	$('#x').click(closePop);/* 나중엔 끄는 거 말고 submit할 수 있게 합시당. */
})
</script>
	<!-- 신고 끝! -->
	
	<div id="imgDiv"> <!--옆 보더 필요  -->
		<img alt="상품 이미지" style="width: 350px; height: 300px;"
			id="img">
		<p onclick="change2()" id="left"> 왼쪽 화살표</p>
		<p onclick = "change1()" id="right"> 오른쪽화살표 </p>
		<script type="text/javascript">
			var files = ["../image/m1.png", "../image/m2.png", "../image/m3.png"];
			var imgs = new Array();
			
			for(let i = 0; i < files.length; i++){
				imgs[i] = new Image();
				imgs[i].src = files[i];
			}
			
			var img = document.getElementById("img");
			
 			function firstImg() {
				img.src = imgs[0].src;
			} 
			
			var nextA = 0;
			function change1() {
				img.src = imgs[nextA].src;
				nextA++; 
				
				if (nextA > (imgs.length-1)){
					nextA = nextA % imgs.length; //
				}
			}
			
			var nextB = imgs.length - 1; //2
			function change2() {
				img.src = imgs[nextB].src;
				nextB--; 
				
				if (nextB < 0){
					nextB = imgs.length - 1;
				}
			}
			
		</script>
	</div> <!-- imgDiv  -->

	<div id="merchDiv">
		<div id="merchName"></div>
		<div id="merchPrice"><!--아래 border 필요  --></div>
		<hr>
		<div id="merchStatus"></div>
		<div id="merchEtc">
			<form>
				<button id="inqButton">문의하기</button>
				<button id="likeButton">좋아요</button>
			</form>
		</div>
		
		<script type="text/javascript">
			var name = "상품명";
			var price = 10000;//,붙이는 방법
			var statusList = ["상품 상태 ", "배송비 ", "환불 "];
			var sArray = new Array();
			sArray[0] = "중고 최상";
			sArray[1] = "미포함";
		
			document.getElementById('merchName').innerHTML = name;
			document.getElementById("merchPrice").innerHTML = "금액 " + price +"원";
			document.getElementById('merchStatus').innerHTML = statusList[0] + sArray[0] + "<br>" + statusList[1] + sArray[1];
			
			//문의버튼
			document.getElementById('inqButton').onclick = function() {
				window.open("chat.jsp");//채팅말고 문의창을 띄워!
			}
		</script>
	</div>
</section>

<section class="section" id="section2">
	<div id="topFloor">재고</div>
	<hr>
	<div id="secondFloor"></div>
	<script type="text/javascript">
		var div = document.getElementById('secondFloor');
		
 		function create(group, album, member, version, stock, reservation) {
 			var newDiv = document.createElement('div');
			var pName = document.createElement('p');
			var pStock = document.createElement('p');
			
			var stockText;
			
			if(reservation){
				stockText = "[예약 중]";
			} else {
				if(stock > 0){
					stockText = "[판매 중]";
				} else {
					stockText = "[판매 완료]";
					pName.style.textDecoration = "line-through";
				}
			}
			
			pName.innerHTML = group+"&nbsp;"+album+"&nbsp;"+member+"&nbsp;"+version+"&nbsp;"+stockText;
			pStock.innerHTML = "수량 " + stock;
			
			var count = 1;
			pName.setAttribute('id','pName'+count);
			pName.setAttribute('class','pName');
			pStock.setAttribute('id','pStock'+count);
			pStock.setAttribute('class','pStock');
			newDiv.setAttribute('class','newDiv');
			count++;
			
			newDiv.appendChild(pName);
			newDiv.appendChild(pStock);
			
			div.appendChild(newDiv);
		}
		
		create("NCT", "UNIVERSE", "제노", "ㅇㅇ버전", 24, true);
		create("NCT", "UNIVERSE", "마크", "ㅇㅇ버전", 0, false); 
	</script>
</section>

<section class="section" id="section3">
	<div id="explanation"></div>
	
	<script type="text/javascript">
		var explanation = document.getElementById("explanation");
		explanation.innerHTML = "글쓴이가 입력한 내용<br>이 나옴";
	</script>

</section>

<section class="section" id="section4">
	<div id="profileDiv">
		<div id="profilePhotoDiv">
		<!-- <img src="../img/choonsikGood.png" id="profileImg"> -->
		<script type="text/javascript">
			var pp = document.getElementById("profilePhotoDiv");
		
			var pImg = new Image();
			pImg.src = "../image/m5.png";
			pImg.setAttribute( 'id', 'profileImg');
			pImg.addEventListener('click',openUserPage);
			pp.appendChild(pImg);
			
			var p = document.createElement('p');
			var pNickname = "길다란 닉네임(나)";
			p.innerHTML = pNickname + " 님의 상점";
			p.setAttribute('id', 'profileP');
			p.addEventListener('click',openUserPage);
			pp.appendChild(p);
			
			function openUserPage() {
				window.open("theOthersShop.jsp");
			}
			
			
				
		</script>
		</div>
	
		<div id="myInfo">
			<script type="text/javascript">
			var openDays = 333;
			var saleTimes = 22;
			var purchTimes = 23;
				document.write("<ul id='infoList'>");	
				document.write("<li>오픈일: " + openDays +"일");
				document.write("<li>판매 횟수: " + saleTimes +"회");
				document.write("<li>구매 횟수: " + purchTimes +"회");
				document.write("</ul>"); 
			</script>
		</div>
	</div>
	
	<div id="twoDivs">
	<div id="productsDiv">
		<p>현재 판매 중이에요</p>
		<div id="productsWindow">
			<table id="productsTable" border='1'>
				<tr id="row1">
					<td class="row1Cell" onclick="goTo('MerchDetail.jsp')"></td>
					<td class="row1Cell" onclick="goTo('MerchDetail.jsp')"></td>
					<td class="row1Cell" onclick="goTo('MerchDetail.jsp')"></td>
				</tr>
				<tr id="row2">
					<td class="row2Cell" onclick="goTo('MerchDetail.jsp')"></td>
					<td class="row2Cell" onclick="goTo('MerchDetail.jsp')"></td>
					<td class="row2Cell" onclick="goTo('MerchDetail.jsp')"></td>
				</tr>
			</table>
			<script type="text/javascript">
				var row1Cells = document.getElementsByClassName('row1Cell');
				var images = new Array(3);
				var imgSrcs = ["../image/grayBox.png", "../image/grayBox.png","../image/grayBox.png"];
				
				for(let i = 0; i < images.length; i++){
					images[i] = new Image();
					images[i].src = imgSrcs[i];
					row1Cells[i].style.width = "160px";
					row1Cells[i].style.height = "110px";
					images[i].style.width = row1Cells[i].style.width;
					images[i].style.height = row1Cells[i].style.height;
					row1Cells[i].appendChild(images[i]);
				}
				
				var row2Cells = document.getElementsByClassName('row2Cell');
				var ps = new Array();
				var pTexts = ["상품명1", "상품명2", "상품명3"];
				
				for(let j = 0; j < row2Cells.length; j++){
					ps[j] = document.createElement('p');
					ps[j].innerHTML = pTexts[j];
					row2Cells[j].appendChild(ps[j]);
				}
				
				function goTo(url) {
					window.open(url);
				}
			</script>
		</div>
		<span class="more"><a href="#">더 보기>></a></span>
		
	</div>
	<div id="reviewDiv">
		<p>상점 후기</p>
		<div id="reviewWindow">
		<div class="review" id="review1">
			<img class="reviewImg" id="review1Img" onclick="openUserPage()">
			<span class="reviewer" id="reviewer1" onclick="openUserPage()"></span>
			<p class="reviewContent" id="reviewContent1">
		</div>
		<div class="review" id="review2">
			<img class="reviewImg" id="review2Img" onclick="openUserPage()">
			<span class="reviewer" id="reviewer2" onclick="openUserPage()"></span>
			<p class="reviewContent" id="reviewContent2">
		</div>
	
		<script type="text/javascript">
			var rImg = document.getElementsByClassName('reviewImg');
			var reviewer = document.getElementsByClassName('reviewer');
			var review = document.getElementsByClassName('reviewContent');
			var reviewText = ["판매자님이 아주 친절합니다.", "배송이 매우  빠릅니다배송이 매우  빠릅니다배송이 매우  빠릅니다배송이 매우  빠릅니다배송이 매우  빠릅니다배송이 매우  빠릅니다배송이 매우  빠릅니다배송이 매우  빠릅니다"];
			
			for(let i=0; i < rImg.length; i++){
				rImg[i].src = "../image/m4.png";
				reviewer[i].innerHTML = "닉네임" + (i+1);
				review[i].innerHTML = reviewText[i];
				
			}
			
		</script>
		</div>
		<span class="more"><a href="#">더 보기>></a></span>
	</div>
	</div>
	
</section>


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