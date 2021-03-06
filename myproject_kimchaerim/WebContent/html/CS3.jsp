<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/CS3.css">
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
			<p id="block1">1:1 문의
			<p id="block2"><span><sup>*</sup></span>는 필수 항목입니다.
			<hr>
		</div>
		
		<div id="inquiryDiv">
		

<!-- 문의글의 제목을 등록하는 줄이다  -->
<div class="row" id="row1">
	<div id="block3" class="blockOdd">
		<p>제목<span><sup>*</sup></span></p>
	</div>
	
	<div id="block4" class="blockEven"> <!-- 문의 글 제목 등록 -->
		<form>
			<input type="text" maxlength="50" placeholder="제목을 입력해주세요.">
		</form>
	</div>
</div>

<!-- 문의할 내용 카테고리를 고르는 줄  -->
<div class="row" id="row2">
	<div id="block5" class="blockOdd">
		<p>문의 카테고리<span><sup>*</sup></span></p>
	</div>

	<div id="block6" class="blockEven">
		<form>
			<select>
				<option selected="selected">카테고리를 선택해주세요</option>
				<option>회원 가입 / 탈퇴</option>
				<option>거래 방식</option>
				<option>회원 신고</option>
			</select>
		</form>
		<script type="text/javascript">
		//selected
		</script>
	</div>
</div>

<!-- 첨부파일(이미지)등록줄 -->
<div class="row" id="row3">
	<div id="block7" class="blockOdd">
		<p>첨부 파일</p>
	</div>
	
	<div id="block8" class="blockEven">
		<form method="post" enctype="multipart/form-data"> <!-- 인터넷에서 찾은 내용 -->
			<input type="file"
				id="image" name="image"
				accept="image/*" style="visibility: hidden;"
				onchange="loadFile(this)">
			<input type="text" placeholder="파일 첨부" id = "fileName" readonly="readonly">
			<div id="labelDiv"><label for="image">+</label></div>
		</form>
	</div>
</div>

<!-- 올린 사진 확인 -->
<div class="row" id="row4">
	<div id="block10" class="blockEven"></div>


	<script type="text/javascript">
	
		//인터넷에서 찾은 내용
		function loadFile(input) {
			var file = input.files[0];
			var newImg = document.createElement('img');
			var box = document.getElementById('block10');
			var fileName = document.getElementById("fileName");
			
			fileName.value += file.name + ", "; //임시
		
			newImg.setAttribute("class","fileImg");
			newImg.src = URL.createObjectURL(file);
			newImg.style.width = "30px";
			newImg.style.height = "30px";
			newImg.style.objectFit = "contain";
		
		   	box.appendChild(newImg);
			}
		//작동 안함
		newImg.onclick = function() {
			box.removeChild(this);
		}
	</script>
</div>

<!-- 문의 글을 씁니다 -->
<div class="row" id="row6">
	<div id="block13" class="blockOdd">
		<p>글<span><sup>*</sup></span></p>
	</div>

	<div id="block14" class = "blockEven">
		<div id="textAreaDiv">
			<form>
				<textarea rows="8" cols="70" maxlength="1000" id="textArea" 
				onkeyup="count()" 
				placeholder="문의 내용을 입력해주세요."></textarea>
			</form>
	
		</div>
		
		<div id="letterDiv">
			<span id="letterSpan">
				(0 / 1000)
			</span>
		</div>
		
		<script type="text/javascript">
			var letterSpan = document.getElementById("letterSpan");
			var textArea = document.getElementById("textArea");
		
			function count() {
				letterSpan.innerHTML = "( "+textArea.value.length +" / 1000)"; 
			}
		</script>
	
	</div>
</div>

<div class="row" id="row7">
	<form>
		<input type="submit" value="등록">
	</form>
</div>
		
		</div> <!-- mainDiv -->
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