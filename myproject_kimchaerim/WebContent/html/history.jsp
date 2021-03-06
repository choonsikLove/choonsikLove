<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/history.css">
<title>마이페이지를 클릭하면 나오는 부분</title>
</head>
<body onload="frameFirst()">
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
	
		<div id="profilePhotoDiv">
			<script type="text/javascript">
				var pp = document.getElementById("profilePhotoDiv");
			
				var pImg = new Image();
				pImg.src = "../image/m5.png";
				pImg.setAttribute( 'id', 'profileImg');
				pp.appendChild(pImg);
				
				var p = document.createElement('p');
				var pNickname = "나의닉네임닉네임(나)";
				p.innerHTML = pNickname + " 님의 상점";
				p.setAttribute('id', 'profileP');
				pp.appendChild(p);
				
			</script>
			
		</div>

	<div id="listDiv">
			<table id="listTable">
				<tr>
					<td><a href="changeInfo.jsp">나의 정보 관리</a></td>
				</tr>
				<tr>
					<td><a href="history.jsp">거래 내역</a></td>
				</tr>
				<tr>
					<td><a href="favorite.jsp">관심 상품</a></td>
				</tr>
				<tr>
					<td><a href="MyShop.jsp">나의 상점</a></td>
				</tr>
			</table>
			
		</div>

	
</div>


<div id="mainDiv">
	<main>
		<div class="menuDiv">
			<!-- <script type="text/javascript">
			//아쉽지만,,,테이블은 탈락하였습니다
			//div로 바꿀 거임
				document.write("<table border='1' id='menuTable'>");
				document.write("<tr>");
				document.write("<td class='menus' onclick = 'openHs(0)'>판매</td>");
				document.write("<td class='menus' onclick = 'openHs(1)'>구매</td>");
				document.write("</tr>");
				document.write("</table>");
				
			</script> -->
			
			<div class="menus" onclick='openPages(0)'>판매</div>
			<div class="menus" onclick='openPages(1)'>구매</div>
		</div>
		
		<!--클릭하면 색이 변하는 기능을 넣자!  -->
		
		
		<div id="frameDiv">
			<iframe id="innerFrame" src=""></iframe>
			<script type="text/javascript">
				var ifr = document.getElementById("innerFrame");
				
				var links = new Array();
				
				links[0] = "mypageFolder/history_sale.jsp";
				links[1] = "mypageFolder/history_purchase.jsp";
				
				function frameFirst() {
					ifr.src = links[0];
				}
				
				function openPages(num){
					ifr.src = links[num];
				}
				
				
				var menus = document.getElementsByClassName('menus');
				
				//같은 걸 두번 클릭했을 때의 경우도 생각해야 함ㅠㅠ힝
				function clicked() {
					//여기서 this는 이벤트가 일어나는 객체를 말함. event.target
					
					if(this.classList[1]=="clicked"){
						this.classList.remove("clicked");
					} else {
						for(let i = 0; i < menus.length; i++){
							menus[i].classList.remove("clicked");
						}
						
						this.classList.add("clicked");
					}
					
				}
		
				function init() {
					for(let i = 0; i < menus.length; i++){
						menus[i].addEventListener("click",clicked);
					}
					menus[0].classList.add("clicked");//초기 설정
				}
			

				init();
			</script>
		</div>
	</main>	
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