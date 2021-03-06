<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/findIDPW.css">
<title>비밀번호와 아이디 찾기</title>
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
<div id="idBox" class="box">
	<h3>아이디 찾기</h3>
	<p>성명과 핸드폰 번호를 입력해 주십시오.<br>
		회원 정보에 등록된 메일 주소로 아이디를 보내드립니다.
	</p>
	
	<div>
		<form>
			<label>성명</label><br>
			<input type="text" maxlength="10"><br>
			<label>이메일주소</label><br>
			<input type="text" maxlength="40"><br>
			<button type="submit">확인</button>
		</form>
	</div>
	
</div>

<div id="pwBox" class="box">
	<h3>비밀번호 찾기</h3>
	<p>등록하신 이메일 주소를 입력해 주십시오.<br>
		해당 메일 주소로 암호 설정 메일을 보내드립니다.
	</p>
	
	<div>
		<form>
			<label>이메일주소</label><br>
			<input type="text" maxlength="40"><br>
			<button type="submit">확인</button>
		</form>
	</div>
</div>
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