<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css" type="text/css">
<link rel="stylesheet" href="../css/chat.css" type="text/css">
</head>
<body>

<header>
		<div id="customerCenter">
			<ul class = "CC">
				<li><a id="linkToCC" href="CS1.html">고객센터</a></li>
			</ul>
		</div>

		<div id="logo">
			<a href="Main.html"><img src="../image/logo2.png" alt="로고" style="width: 13.74em; height: 3em;"></a> <!-- 로고 주소는 일단 고친거임  -->
		</div>

		<div id="menuClass">
			<ul class="menu">
				<li id="menu_login"><a href="login.html">로그인</a></li>
				<li id="justSlash">/</li>
				<li id="menu_register"><a href="MemberRegister.html">회원가입</a></li>
				<li id="menu_search"><a href="Search.html">검색</a></li>
				<li id="menu_mypage"><a href="mypage.html">마이페이지</a></li>
			</ul>
		</div>

</header>
<hr>

<div id="wrap" class="clearfix">

	<div id="leftDiv">
		<div id="leftInner">
		</div>
	</div>
	
	<div id="rightDiv" style="visibility: hidden;">
		<div id="topLine">
			<div id="topLineBlock">
				<img id=topLineImg src="귀가.jpg">
				<p id="topLineNickname">닉네임</p>
			</div>
		</div>
		<script type="text/javascript">
			var leftInner = document.getElementById('leftInner');
			var divArray = new Array();
			var count = 0;
			
			var imgArray = new Array();
		
			var customer1  = new Object();
			customer1.nickname = "닉네임임";
			customer1.src = '../image/m1.png';
			customer1.unreadChat = 3;
			
			var customer2  = new Object();
			customer2.nickname = "고양이와 강아지와 말미잘";
			customer2.src = '../image/귀가.jpg';
			customer2.unreadChat = 0;
		
			var profileImg;
			var nickname;
			var unreadChat;
			
			function create(customer) {
				profileImg = new Image();
				profileImg.src = customer.src;
			
				nickname = document.createElement('p');
				nickname.innerHTML = customer.nickname;
			
				profileImg.setAttribute('class', 'profileImg');
				nickname.setAttribute('class','nickname');
			}
		
			function createChatRoom(customer) {
				create(customer);
				var chatRoom = document.createElement('div');
				divArray[count] = chatRoom;
				chatRoom.setAttribute('class','chatRoom');
				chatRoom.setAttribute('id','chatRoom' + count);
				
				chatRoom.appendChild(profileImg);
				chatRoom.appendChild(nickname);
				
				//이렇게 하면 onclick 자동이 안된다
				//function 이름()을 하면 자동적으로 실행이 된다고 하네용
				divArray[count].onclick = function(){
					open(customer);
				}
				leftInner.appendChild(divArray[count]);
				count++;
			}
			

			
			var topLineImg = document.getElementById('topLineImg');
			var topLineN = document.getElementById('topLineNickname');
			var rightDiv = document.getElementById('rightDiv');
			
			function open(customer) {
		 		document.getElementById('rightDiv').style.visibility = "visible";
				
				topLineImg.src = customer.src;
				topLineN.innerHTML = customer.nickname;
			}
			
			createChatRoom(customer1);
			createChatRoom(customer2);
			createChatRoom(customer1);
			createChatRoom(customer2);
			createChatRoom(customer1);
		</script>
		<div id="chatWindow"></div>
		<div id="chatInput">
			<img src="../image/emo.png" alt="이모티콘 및 각종 기능">
			<input type="text" maxlength="300">
			<button><img alt="전송 비행기" src="../image/비행기.png" style="width: 50px; height: 35px;"></button><!--아직 이미지 안 만듬  -->
		</div>
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