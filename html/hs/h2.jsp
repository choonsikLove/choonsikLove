<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="h2.css">
</head>
<body>
<div id="wrap">

<div id="reviewBox">
	<div class="reviewDiv" id="reviewDiv1">
		<div class="photoAndId" id="pAI1">
			<img class="profilePhoto">
			<span class="Id"></span>
		</div>
		
		<div class="reviews" id="review1">
			<p class="reviewP" id="reviewP1"></p>
		</div>
		
		<div class="reviewPhotoDiv" id="photoDiv1">
		<!--이미지 없으면 걍 비워두기. -->
		</div>
		
		<div class="product" id="product1">
			<span class="productInfo" id="productInfo1"></span>
		</div>
	</div>
	
	<hr>
	
	<div class="reviewDiv" id="reviewDiv2">
		<div class="photoAndId" id="pAI2">
			<img class="profilePhoto">
			<span class="Id"></span>
		</div>
		
		<div class="reviews" id="review2">
			<p class="reviewP" id="reviewP2"></p>
		</div>
		
		<div class="reviewPhotoDiv" id="photoDiv2">
		<!--이미지 없으면 걍 비워두기. -->
		</div>
		
		<div class="product" id="product2">
			<span class="productInfo" id="productInfo2"></span>
		</div>
	</div>
	
	<hr>
	
	<div class="reviewDiv" id="reviewDiv3">
		<div class="photoAndId" id="pAI3">
			<img class="profilePhoto">
			<span class="Id"></span>
		</div>
		
		<div class="reviews" id="review3">
			<p class="reviewP" id="reviewP3"></p>
		</div>
		
		<div class="reviewPhotoDiv" id="photoDiv3">
		<!--이미지 없으면 걍 비워두기. -->
		</div>
		
		<div class="product" id="product3">
			<span class="productInfo" id="productInfo3"></span>
		</div>
	</div>
	
	<script type="text/javascript">
		//프사와 아이디
		var ppidDiv = document.getElementsByClassName("photoAndId");
		var pp = document.getElementsByClassName("profilePhoto");
		var id = document.getElementsByClassName("Id");
		
		var photos = ["../../image/choonsik.png", "../../image/m1.png","../../image/m2.png"];
		var ids = ["구매자1", "구매자2", "구매자3"];
		
		for(let i = 0; i< pp.length; i++){
			pp[i].src = photos[i];
			id[i].innerHTML = ids[i];
			ppidDiv[i].onclick = goToUserInfo;
		}
		
		//거래 후기 내용
		var rP = document.getElementsByClassName("reviewP");
		var reviewTexts = ["판매자님이 아주 친절합니다.", "싸게 샀어요!!!!!!!!!!!!!!", "다음에도 또 거래하면 좋겠습니다"];
		
		for(let i = 0; i < rP.length; i++){
			rP[i].innerHTML = reviewTexts[i];
		}
		//상품 리뷰 사진
		var rpd = document.getElementsByClassName("reviewPhotoDiv");
		var imageSrc = ["../../image/grayBox.png", "../../image/m1.png"];
		var reviewImage = new Array(imageSrc.length);
		for(let i = 0; i < imageSrc.length; i++){
			reviewImage[i] = new Image();
			reviewImage[i].src = imageSrc[i];
			reviewImage[i].setAttribute('class','rImg');
			reviewImage[i].style.width = '60px';
			reviewImage[i].style.height = '50px';
			rpd[1].appendChild(reviewImage[i]);
			reviewImage[i].onclick = function name() {
				var img = new Image();
				img.src = reviewImage[i].src;
				
				newWindow = window.open("","imagePopUp" + i,"width=" +img.width +"px, height=" +img.height +"px");
				newWindow.document.write("<html><body style='margin:0'>"); 
				newWindow.document.write("<a href=javascript:window.close()><img src='" + img.src + "'></a>"); 
				newWindow.document.write("</body><html>");
			}
		}
		
/* 		//왜 따로하면 되는거임? 진짜 의문이네...
				//그리고 함수를 따로 만들면 onload도 아닌데 켜자마자 실행됨 진짜 의문이다...
 		reviewImage[1].onclick = function() {
			var img = new Image();
			img.src = reviewImage[1].src;
			
			newWindow = window.open("","imagePopUp","width=" +img.width +"px, height=" +img.height +"px");
			newWindow.document.write("<html><body style='margin:0'>"); 
			newWindow.document.write("<a href=javascript:window.close()><img src='" + img.src + "'></a>"); 
			newWindow.document.write("</body><html>");
			
		}
		
		reviewImage[0].onclick = function() {
			var img = new Image();
			img.src = reviewImage[0].src;
			
			newWindow = window.open("","imagePopUp","width=" +img.width +"px, height=" +img.height +"px");
			newWindow.document.write("<html><body style='margin:0'>"); 
			newWindow.document.write("<a href=javascript:window.close()><img src='" + img.src + "'></a>"); 
			newWindow.document.write("</body><html>");
			
		}  */
		
		//구매한 상품이 뭔지	
		var productInfo = document.getElementsByClassName("productInfo");
		var productName = ["상품명1", "상품명2", "상품명3"];
		for(let i = 0; i <productInfo.length; i++){
			productInfo[i].innerHTML = "구매 상품: " + productName[i] + " >>>"
			productInfo[i].onclick = goToPInfo;
		}
		
		function goToPInfo(){
			window.open("../MerchDetail.jsp");
		}
		
		function goToUserInfo(){
			window.open("../theOthersShop.jsp");
		}
	</script>
	
</div>

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
</body>
</html>