<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/CS2.css">
<title>고객센터</title>
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
	

<div class="wrap">
<div id="navDiv">
	<nav>
		<div id="profilePhotoDiv">
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
			
		</div>

		<div id="csList">
			<table id="csTable">
				<tr>
					<td><a href="CS1.jsp">공지사항</a></td>
				</tr>
				<tr>
					<td><a href="CS2.jsp">자주 묻는 질문</a></td>
				</tr>
				<tr>
					<td><a href="CS3_list.jsp">1:1 문의</a></td>
				</tr>
			</table>
			
		</div>
		
		<div id="csCenterDiv">
			<p id="csCenterP">
			고객센터 운영시간<br>
			9:00 - 16:00<br>
			☎02 2345 6543
		</div>
	</nav>
</div>


<div id="mainDiv">
	<main>
		<div id="topLine">
			<p>자주 묻는 질문
		</div>
		
		<div id="frameDiv">
			<iframe src="CS2_frame.jsp">
				
			</iframe>
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