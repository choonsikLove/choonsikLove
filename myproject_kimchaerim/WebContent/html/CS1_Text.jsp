<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/CS1_Text.css">
<script type="text/javascript" src="../jquery/jquery-3.6.0.js"></script>
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
<main><!-- 굳이..?가 아니었네~ 근데 왜 둘로 감싼거임 의문 -->
	<div id="topLine">
		<p>공지사항
		<div id="searchDiv">
			<input type="text">
			<button id="findButton">
				<img src='../image/magnify.png' alt="돋보기" width="15px" height="15px">
			</button>
		</div>
		<hr>
		<script type="text/javascript">
			var fButton = document.getElementById("findButton");
			fButton.onclick = function search() {
				alert("서치 기능");
			}
		</script>
	</div>
		
	<div id="board">
		<div id="board_title">
			<p>제목입니다</p>
			<p>날짜입니다</p>
			<!-- 오늘은 일단 틀만 만들기로 했으니까 js기능은 빼자! -->
		</div>
<script type="text/javascript">
$(function() {
	var date =$('#board_title').children('p').eq(1);
	date.css('font-size','10pt');
})
</script>
		<hr>
		<div id="board_text">
			<p>내용입니다<br>
			내용입니다<br>내용입니다<br>내용입니다<br>내용입니다<br>
			내용입니다<br>내용입니다<br>내용입니다<br>내용입니다<br>
			내용입니다<br>내용입니다<br>내용입니다<br>내용입니다<br>
			글자 수 제한이 있어야 합니다.
			</p>
		</div>
	</div><!--보드  -->
	
	<div id="below">
		<a href="CS1.jsp"><span>리스트로 돌아갑니다</span></a>
		<button>수정 버튼입니다</button>
		<!-- 나중에 수정 버튼에 링크가 필요함. -->
	</div>
</main>	
	

</div><!-- mainDiv -->


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