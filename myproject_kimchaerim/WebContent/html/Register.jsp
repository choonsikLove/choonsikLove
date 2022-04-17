<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/Register.css">
<title>상품등록</title>
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
<div id="registerBox">

<div class="row" id="row0">
	<p id="block1">상품 등록</p>
	<p id="block2"><span><sup>*</sup></span>는 필수 항목입니다.
</div>
<hr>

<!-- 상품명을 등록하는 줄이다  -->
<div class="row" id="row1">
	<div id="block3" class="blockOdd">
		<p>상품명<span><sup>*</sup></span></p>
	</div>
	
	<div id="block4" class="blockEven"> <!--상품명을 등록한다  -->
		<form>
			<input type="text" maxlength="50" placeholder="상품명을 입력해주세요.">
		</form>
	</div>
</div>

<!-- 카테고리를 고르는 줄  -->
<div class="row" id="row2">
	<div id="block5" class="blockOdd">
		<p>카테고리<span><sup>*</sup></span></p>
	</div>

	<div id="block6" class="blockEven">
		<form>
			<select>
				<option selected="selected">카테고리를 선택해주세요</option>
				<option>엔시티 NCT</option>
				<option>더보이즈 THE BOYZ</option>
				<option>스트레이 키즈 Stray Kids</option>
			</select>
		</form>
		<script type="text/javascript">
		//selected
		</script>
	</div>
</div>

<!-- 사진등록줄 -->
<div class="row" id="row3">
	<div id="block7" class="blockOdd">
		<p>사진 등록<span><sup>*</sup></span></p>
	</div>
	
	<div id="block8" class="blockEven">
		<form method="post" enctype="multipart/form-data"><!-- 인터넷에서 찾은 내용 -->
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
	
		//인터넷에서 찾은내용
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

<!-- 옵션 선택 가능  -->
<div class="row" id="row5">
	<div id="block11" class="blockOdd">
		<p>옵션 선택</p>
	</div>

	<div id="block12" class="blockEven">
	
		<div style="display: none;" id="hiddenBox">
			 <form>
				<input type="checkbox">엔시티 NCT
				<input type="checkbox">에스파 Aespa
				<input type="checkbox">아이브 IVE
			</form> 
		</div>
	
		<div id="openSpanBox"><!-- 그냥 span이 들어있는 div  -->
			<span id="openSpan" onclick="openBox()">︾</span>
	
			<script type="text/javascript">
	
 				function openBox() {
 					//이유는 모르겠는데 hiddenBox var을 따로 만들지 않아야 되었음
 					if(document.getElementById("hiddenBox").style.display == "none"){
 					document.getElementById("hiddenBox").style.display = "block";
 					} else {
 						document.getElementById("hiddenBox").style.display = "none";
 					}
				} 
			</script>
		</div>
		
	</div>
</div>

<div class="row" id="row6">
	<div id="block13" class="blockOdd">
		<p>설명<span><sup>*</sup></span></p>
	</div>

	<div id="block14" class = "blockEven">
		<div id="textAreaDiv">
			<form>
				<textarea rows="8" cols="70" maxlength="1000" id="textArea" 
				onkeyup="count()" 
				placeholder="상품의 설명을 입력해주세요. 개인정보를 입력하지 않도록 주의해주세요."></textarea>
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
		
			function erase() {
				textArea.value = "";
			}
		
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

</div> <!-- registerBox의 끝 -->
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