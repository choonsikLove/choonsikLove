<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/login.css">
<title>로그인 페이지</title>
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
	
	<div class="loginBox">
	<div class="upper">
	<form>
		<div class="login">
			<table class="loginTable">
				<tr id="loginIDRow">
					<td><span>로그인</span></td>
					<td><p></p></td>
					<td><input type="text" id="IDInput" maxlength="18"></td>
				</tr>
				<tr id="loginPWRow">
					<td><span>비밀번호</span></td>
					<td><p></p></td>
					<td><input type="password" id="PWInput" maxlength="18"></td>
				</tr>
			</table>
		</div>
		
		<div>
			<input type="submit" id="loginConfirmButton" value="로그인">
		</div>
	</form>
	
		<div class="loginMisc">
			<div class="miscCheck">
				<div>
					<input type="checkbox">
					<span>아이디 저장</span>
				</div>
				<div>
					<input type="checkbox">
					<span>보안 로그인(임시)</span>
				</div>
			</div>
			<div id="findIDPW">
				<span><a href="findIDPW.jsp">아이디 / 비밀번호를 잊어버리셨나요? >>></a></span>
			</div>
		</div>
		
		
	</div>
		
	<hr>
		
	<div class="lower">
				<p class="exteriorLink">
					외부 서비스 연동 로그인 / 회원가입
				</p>
				
				
				<table id="exteriorImgs">
					<tr>
						<td><a href="#"><img src="../image/login_fa.png" alt="페이스북 로그인"></a></td>
						<td><a href="#"><img src="../image/login_na.png" alt="네이버 로그인"></a></td>
						<td><a href="#"><img src="../image/login_go.png" alt="구글 로그인"></a></td>
						<td><a href="#"><img src="../image/login_ka.png" alt="카카오톡 로그인"></a></td>
						<td><a href="#"><img src="../image/login_tw.png" alt="트위터 로그인"></a></td>
					</tr>
				</table>
		
	</div> <!--lower의 끝  -->
		
</div> <!-- loginBox의 끝  -->
	
	
</div> <!--wrap의 끝  -->
	

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