<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/MemberRegister.css">
<title>회원 가입</title>
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
<div id="box">



<div class="row" id="row0">
	<p id="block1">회원가입</p>
	<p id="block2"><sup>*</sup>는 필수 항목입니다.
</div>
<hr>

<!-- 성명 -->
<div class="row" id="row1">
	<div id="block3" class="blockOdd">
		<p>성명<sup>*</sup></p>
	</div>
	
	<!--성명을 새로 등록한다  -->
	<div id="block4" class="blockEven">
		<form>
			<input type="text" maxlength="10" placeholder="이름 입력 부탁">
		</form>
	</div>
</div>

<!-- 아이디 줄  -->
<div class="row" id="row2">
	<div id="block5" class="blockOdd">
		<p>아이디<sup>*</sup></p>
	</div>

	<div id="block6" class="blockEven">
		<form>
			<input type="text" maxlength="15" placeholder="아이디를 넣어주세요">
		</form>
		<p>중복 아이디가 있으면 알려주는 친구</p>
	</div>
</div>

<!--비밀번호  -->
<!--Flex를 사용할 예정이다  -->
<div class="row" id="row3">
	<div id="block7" class="blockOdd">
		<div>비밀번호<sup>*</sup></div>
		<div>비밀번호 확인<sup>*</sup></div>
	</div>

	<div id="block8" class = "blockEven">
		<div>
			<form>
				<input type="password" maxlength="20" placeholder="비번">
				<label>비밀번호에 대해 어떻게 만들어야 하는지 알려주는 친구</label>
			</form>	
		</div>
		<div>
			<form>
				<input type="password" maxlength="20" placeholder="비번확인">
				<label>비밀번호 확인한 게 일치하는 지 알려주는 친구</label>
			</form>
		</div>
	</div>
</div>

<!-- 닉네임 -->
<div class="row" id="row4">
	<div id="block9" class="blockOdd">
		<p>닉네임<sup>*</sup></p>
	</div>

	<div id="block10" class="blockEven">
		<form>
			<input type="text" maxlength="16" placeholder="닉네임이다">
		</form>
		<p>중복 닉네임이 있으면 알려주는 친구</p>
	</div>
</div>

<!-- 주소 -->
<div class="row" id="row5">
	<div id="block11" class="blockOdd">
		<p>주소<sup>*</sup></p>
	</div>
	
	<div id="block12" class="blockEven">
		<form>
			<input type="text" maxlength="50" placeholder="우편번호">
			<button id="addressButton">우편번호 찾기</button><!-- 클릭 기능 추가  -->
			<input type="text" maxlength="50" placeholder="입력 불가">
			<input type="text" maxlength="50" placeholder="회원이 추가로 입력하는 상세주소">
		</form>
	</div>
</div> 

<!-- 핸드폰번호 -->
<div class="row" id="row6">
	<div id="block13" class="blockOdd">
		<p>핸드폰번호<sup>*</sup></p>
	</div>

	<div id="block14" class="blockEven">
		<form>
			<select id="phFirst">
				<option value="010">010</option>
				<option value="011">011</option>
			</select>
			&nbsp;-&nbsp;
			<input type="text" maxlength="50" placeholder="원래  번호">
			&nbsp;-&nbsp; 
			<input type="text" maxlength="50" placeholder="원래  번호">
		</form> 
		<!-- 숫자만 가능하게 하기 -->
	</div>
	
</div> 

<!-- 이메일-->
<div class="row" id="row7">
	<div id="block15" class="blockOdd">
		<p>이메일</p>
	</div>

	<div id="block16" class="blockEven">
		<form>
			<input type="text" maxlength="50" placeholder="이메일">
			&nbsp;@&nbsp;
			<select id="emails">
				<option value="gmail">gmail.com</option>
				<option value="naver">naver.com</option>
				<option value="daum">daum.net</option>
				<option value="direct">직접입력</option>
				<!-- 직접입력이 select되면 엥 칸이 세개여야 겠네
				힝,,,,ㅠㅠㅠ 기능추가는 일단 빼놓고! -->
 			</select>
		</form>	
		
	</div>
</div> 

<div class="row" id="row8">
	<div id="block17" class="blockOdd">
		<p>생년월일</p>
	</div>

	<div id="block18" class = "blockEven">
		<form>
			<input type="text" maxlength="50" placeholder="짧게한줄로">
		</form>	
	</div>
</div>

<div class="row" id="row9">
	<div id="block19" class="blockOdd">
		<p>계좌번호</p>
	</div>

	<div id="block20" class = "blockEven">
		<form>
			<select id="banks">
				<option value="woori">우리은행</option>
				<option value="nonghyup">농협은행</option>
				<option value="kb">국민은행</option>
			</select>
			<input type="text" maxlength="50" placeholder="번호">
		</form>	
	</div>
</div>



<div class="row" id="row10">
	<form>
		<input type="submit" value="회원 가입">
	</form>
</div>

</div> <!-- Box의 끝 -->


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