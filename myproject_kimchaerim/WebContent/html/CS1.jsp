<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/CS1.css">
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
	<main>
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
			<div id="line0" style="border-bottom: 1px #a2a2a2 solid;">
				<p class="boardNum">번호</p>
				<p class="boardTitle" style="padding-left: 120px; width: 200px;">제목</p>
				<p class="boardDate">작성 일자</p>
			</div>
				<div id="lines">
			</div>
		</div>
		<script type="text/javascript">
			var count = 1;
			
			function lineCreate(num,title) {
				var lines = document.getElementById("lines");
				var ps = new Array(3);
				var boardLine = document.createElement('div');
				
				boardLine.setAttribute('id','line'+count);
				boardLine.setAttribute('class', 'boardLine');
				count++;
				
				
			 	for(let i = 0; i < ps.length; i++){
					ps[i] = document.createElement('p');
					boardLine.appendChild(ps[i]);
				}
			
				var date = new Date();
				var today = (1900+date.getYear())+"."+date.getMonth()+"."+date.getDate();
				//크롬의 경우 1900더하기
				
				ps[0].innerHTML = num;
				ps[1].innerHTML = title;
				ps[2].innerHTML = today;
				ps[0].setAttribute('class','boardNum');
				ps[1].setAttribute('class','boardTitle');
				ps[2].setAttribute('class','boardDate');
				
				lines.prepend(boardLine);
				
				//ps[1]에 링크 넣어야함!!!!!!!!!!!!! 아 제목 누르면 글 볼 수 있게?? 알앗어
				//링크는 CS1_Text, cursor
			}
			
			lineCreate(count, "공지1입니다");
			lineCreate(count, "공지2입니다");
			lineCreate(count, "공지3입니다");
		
		</script>
	</main>	
	
	
	<div class="pageMarkers">
		<!--페이지 넘겨 기능  -->
		<table id="pageTable">
			<tr id="pageRow"> 
				<td class= "markers outward1"><a href="#">《</a></td>
				<td class= "markers inward1"><a href="#">〈</a></td>
				<td>&nbsp;&nbsp;</td>
				<td class= "markers first"><a href="#">1</a></td>
				<td class="markers second"><a href="#">2</a></td>
				<td class= "markers third"><a href="#">3</a></td>
				<td class="markers fourth"><a href="#">4</a></td>
				<td>&nbsp;&nbsp;</td>
				<td class= "markers outward2"><a href="#">〉</a></td>
				<td class= "markers inward2"><a href="#">》</a></td>
			</tr>
		</table>
	</div> <!-- pageMArkers의 끝. -->
	
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