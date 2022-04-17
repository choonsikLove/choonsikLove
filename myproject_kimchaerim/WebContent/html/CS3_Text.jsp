<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/CS3_Text.css">
<script type="text/javascript" src="../jquery/jquery-3.6.0.js"></script>
<title>문의 글</title>
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
		<p>나의 문의 내역</p>
		<hr>
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
	date.css('font-size','10pt');//그러고보니까 그냥 css로 하면 되지 않나?
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
		
		<div id="change">
			<!-- 지금은 cs3.html 링크를 달아놨지만 
			나중엔 원래 있던 글에 수정할 수 있게 해야함!
			엥 그러면 또 새로 뭘 만들어야하나?. -->
			<p><a href="CS3.jsp">수정하기</a></p>
		</div><!-- 왜 a안에 p는 안되는거임? -->
		<!--고객용 -->
		<hr>
		
		<!-- 답변 답변이 등록 안 되었을 때는 비어있어야 한다.-->
		<div id="answer">
			<img alt="임시" src="../image/아래화살표2.png">
			<div>
				<p>
					답변입니다 길이 제한 있어야한다.흠
					<br>아니지 내용에 따라 길이가 길어져야 하나?
					<br>그건 어케하지,,,흠,,
				</p>
			</div>
		</div>
		
		
	</div><!--보드  -->
	
	
	<div id="below">
		<a href="CS3.jsp"><span>리스트로 돌아갑니다</span></a>
	</div>
</main>	
	

</div><!-- mainDiv 
근데 main이랑 main Div 나눠진 거 좀 뭔가 좀 뭔가 더럽다,,,안 깔끔해-->


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