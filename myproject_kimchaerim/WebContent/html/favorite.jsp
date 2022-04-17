<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/newHeaderFooter.css">
<link rel="stylesheet" href="../css/favorite.css">
<title>좋아요</title>
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
		<div id="titleDiv">
			관심 상품
		</div>
		

		
		
		<div id="merchDiv">
		<table id="merchTable">
			<tr class="row" id="firstRow">	
				<td class="merch" id="merch1">
					<img class="merchPhoto" id="merchPhoto1">
					<p class="merchName" id="merchName1"></p>
					<p class="merchPrice" id="merchPrice1"></p>
					<p class="like">♥</p>
				</td>
				<td class="merch" id="merch2">
					<img class="merchPhoto" id="merchPhoto2">
					<p class="merchName" id="merchName2"></p>
					<p class="merchPrice" id="merchPrice2"></p>
					<p class="like">♥</p>
				</td>
			</tr>
	
			<tr class="row" id="secondRow">	
				<td class="merch" id="merch3">
					<img class="merchPhoto" id="merchPhoto3">
					<p class="merchName" id="merchName3"></p>
					<p class="merchPrice" id="merchPrice3"></p>
					<p class="like">♥</p>
				</td>
				<td class="merch" id="merch4">
					<img class="merchPhoto" id="merchPhoto4">
					<p class="merchName" id="merchName4"></p>
					<p class="merchPrice" id="merchPrice4"></p>
					<p class="like">♥</p>
				</td>
			</tr>
		
			<tr class="row" id="thirdRow">	
				<td class="merch" id="merch5">
					<img class="merchPhoto" id="merchPhoto5">
					<p class="merchName" id="merchName5"></p>
					<p class="merchPrice" id="merchPrice5"></p>
					<p class="like">♥</p>
				</td>
				<td class="merch" id="merch6">
					<img class="merchPhoto" id="merchPhoto6">
					<p class="merchName" id="merchName6"></p>
					<p class="merchPrice" id="merchPrice6"></p>
					<p class="like">♥</p>
				</td>
			</tr>
		
			<tr class="row" id="fourthRow">	
				<td class="merch" id="merch7">
					<img class="merchPhoto" id="merchPhoto7">
					<p class="merchName" id="merchName7"></p>
					<p class="merchPrice" id="merchPrice7"></p>
					<p class="like">♥</p>
				</td>
				<td class="merch" id="merch8">
					<img class="merchPhoto" id="merchPhoto8">
					<p class="merchName" id="merchName8"></p>
					<p class="merchPrice" id="merchPrice8"></p>
					<p class="like">♥</p>
				</td>
			</tr>
		</table>
	
	<script type="text/javascript">
	
	/* 쿼리를 쓰고 싶어도 쿼리 복습을 안해서 기억이 제대로 안 나ㅠㅠㅠㅠ힝 */
		var merchs = document.getElementsByClassName('merch');
		var photos = document.getElementsByClassName('merchPhoto');
		var merchNames = document.getElementsByClassName('merchName');
		var like = document.getElementsByClassName('like');
		
		/* 가격 셋팅  */
		var price = document.getElementsByClassName('merchPrice');
		for(let j = 0; j < price.length; j++){
			price[j].innerHTML = "임시 가격";
		}
		
		/* 이미지 셋팅 */
		var source = "../image/grayBox.png";
		var nameArray = new Array();
		
		for(let i = 0; i < merchs.length; i++){
			photos[i].src = source;
			
			nameArray[i] = "상품" + (i+1);
			merchNames[i].innerHTML = nameArray[i];
			
			//누르면 페이지 이동
			photos[i].onclick =	goToSomewhere;
			merchNames[i].onclick = goToSomewhere;
		}
		
		//상품 상세 설명으로 떠납니다
		function goToSomewhere(){
			window.open("MerchDetail.jsp");
		}
		
		var likeStatus = new Array(merchs.length);
		for(let i = 0; i < likeStatus.length; i++){
			likeStatus[i] = new Object();
			likeStatus[i].flag = true;//일단 전부 다 좋아요 해놨다는 뜻.
		}
		//너무옛날이라 기억이 잘 안나는데 저 flag는 대체
		//어디서 가져온거임? 그런 기능이 있어?
		//그냥 이렇게 하면 아 객체 생성을 했구나
		//이런 바보야
		//JS 사용자 객체 정리해 놓은 걸 다시 봅시다.
		
		
		function init() {
			for(let i = 0; i < likeStatus.length; i++){
			if(likeStatus[i].flag){
				like[i].style.color = "red";
			} /* else {
				like[i].style.color= "silver";
			} */ //생각해보니까 이럴 필요가 없네
			}
			}
		
		init();
		
		
		for(let k = 0; k < 8; k++){
			like[k].onclick = function name() {
				if(likeStatus[k].flag){
					like[k].style.color = "red";
					likeStatus[k].flag = false;
				} else {
					like[k].style.color = "silver";
					alert("좋아요 취소하겠냐는 내용을 넣어야하며 그게 결과에 반영이 되어야 한다\n"+
							"그리고 그 뭐지,,, 취소하면 리스트에서 사라지는 기능을 넣기.");
					likeStatus[k].flag = true;
				}
			}
		}
	</script>
	
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
		
			
			
			
		</div><!--merchDiv끝  -->
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