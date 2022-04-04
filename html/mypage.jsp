<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/mypage.css">
<title>마이페이지</title>
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
	<div class="myInfo">
		<div id="profilePhoto">
			<!-- js? -->
			<img src="../image/melodyfriends.png" id="profileImg">
		</div>
		
		<div class="profileInfo">
			<script type="text/javascript">
			document.write("<span id='span1'>"+ "닉네임"+"님의 마이페이지</span><br>");
			document.write("<span id='span2'>"+ "닉네임"+"님은 일반회원입니다.</span>");
			</script>
		</div>
	
	</div>	<!--my info 끝  -->
	
	<div class="functions">
		<table class="functionsTable">
		<tr id="row1">
			<th><a href="changeInfo.jsp"><img src="../image/me2.png"></a></th>
			<th><a href="history.jsp"><img src="../image/거래내역.png"></a></th>
			<th><a href="favorite.jsp"><img src="../image/hand.png"></a></th>
			<th><a href="MyShop.jsp"><img src="../image/shop2.png"></a></th>
		</tr>

		<tr id="row2">
			<th><a href="changeInfo.jsp">
					<p>나의 정보 관리</p>
				</a>
			</th>
			<th><a href="history.jsp">
					<p>거래 내역</p>
				</a>
			</th>
			<th><a href="favorite.jsp">
					<p>관심 상품</p>
				</a>
			</th>
			<th><a href="MyShop.jsp">
					<p>나의 상점</p>
				</a>
			</th>
		</tr>

	</table>
	</div>
	
	
	
	
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