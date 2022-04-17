<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/MyShop.css">
<title>나의 상점</title>
</head>
<body onload="frameFirst()">
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

<div class="wrap">
<div id="navDiv">
	<nav>
		<div id="profilePhotoDiv">
			<!-- <img src="../img/choonsikGood.png" id="profileImg"> -->
			<script type="text/javascript">
				var pp = document.getElementById("profilePhotoDiv");
			
				var pImg = new Image();
				pImg.src = "../image/m5.png";
				pImg.setAttribute( 'id', 'profileImg');
				pp.appendChild(pImg);
				
				var p = document.createElement('p');
				var pNickname = "길다란 닉네임(나)";
				p.innerHTML = pNickname + " 님의 상점";
				p.setAttribute('id', 'profileP');
				pp.appendChild(p);
				
			</script>
			
			<div id="registerDiv"><p id="registerP">+&nbsp;&nbsp;상품 등록</div>
			<script type="text/javascript">
				const rd = document.getElementById('registerDiv');
				const rp = document.getElementById('registerP');
				
				rp.onclick = function () {
					window.open("Register.jsp"); //임시로 다음을 해놨음
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

	</nav>
</div>


<div id="mainDiv">
	<main>
		<div class="menuDiv">
			<script type="text/javascript">
				document.write("<table border='1' id='menuTable'>");
				document.write("<tr>");
				document.write("<td class='menu5' onclick = 'openHs(0)'>상품</td>");
				document.write("<td class='menu5' onclick = 'openHs(1)'>상점문의</td>");
				document.write("<td class='menu5' onclick = 'openHs(2)'>후기</td>");
				document.write("<td class='menu5' onclick = 'openHs(3)'>팔로잉</td>");
				document.write("<td class='menu5' onclick = 'openHs(4)'>팔로워</td>");
				document.write("</tr>");
				document.write("</table>");
			</script>
		</div>
		<div id="frameDiv">
			<iframe id="innerFrame" src=""></iframe>
			<script type="text/javascript">
				var ifr = document.getElementById("innerFrame");
				var fd = document.getElementById("frameDiv");
				var menu5 = document.getElementsByClassName("menu5");
				
				var links = new Array();
				for(let i = 0; i < menu5.length; i++){
					links[i] = "hs/h" + i + ".jsp";
				}
				
				function frameFirst() {
					ifr.src = links[0];
				} 
				
				function openHs(num){
					ifr.src = links[num];
				}
			</script>
		</div>
	</main>	
</div>
</div><!-- wrap의 끝 -->
	
	
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