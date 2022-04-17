<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="h0.css">
</head>
<body>
<div id="wrap"><!-- 최외각 -->
	<div class="saleProducts"> 
		<table class="pTable">
			<tr id="row1">
				<th><a href="../MerchDetails.jsp"><img class="pImg1" id="img1"></a></th>
				<th><a href="../MerchDetails.jsp"><img class="pImg1" id="img2"></a></th>
				<th><a href="../MerchDetails.jsp"><img class="pImg1" id="img3"></a></th>
				<th><a href="../MerchDetails.jsp"><img class="pImg1" id="img4"></a></th>
			</tr>

			<tr id="row2">
				<th><a href="../MerchDetails.jsp">
						<p class="productName" id="productName1">설명1</p>
					</a>
					<p id="productCost1">1,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p class="productName" id="productName2">설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2
							설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2설명2</p>
					</a>
					<p id="productCost2">2,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p class="productName" id="productName3">상품제목3</p>
					</a>
					<p id="productCost3">3,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p class="productName" id="productName4">설명4</p>
					</a>
					<p id="productCost4">400원</p>
				</th>
			</tr>

			<tr id="row3">
				<th><a href="../MerchDetails.jsp"><img class="pImg2" id="img5"></a></th>
				<th><a href="../MerchDetails.jsp"><img class="pImg2" id="img6"></a></th>
				<th><a href="../MerchDetails.jsp"><img class="pImg2" id="img7"></a></th>
				<th><a href="../MerchDetails.jsp"><img class="pImg2" id="img8"></a></th>
			</tr>

			<tr id="row4">
				<th><a href="../MerchDetails.jsp">
						<p id="productName5">설명5</p>
					</a>
					<p id="productCost1">1,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p id="productName6">긴제목설명긴제목설명6긴제목설명6긴제목설명6긴제목설명66</p>
					</a>
					<p id="productCost2">1,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p id="productName7">설명7</p>
					</a>
					<p id="productCost3">1,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p id="productName8">설명8</p>
					</a>
					<p id="productCost4">1,000,000원</p>
				</th>
			</tr>
		</table>
		
		<script type="text/javascript">
			const pImg1 = document.getElementsByClassName('pImg1');
			const pImg2 = document.getElementsByClassName('pImg2');
			
			for(let j = 0; j < pImg1.length; j++){
				pImg1[j].src = "../../image/grayBox.png";
				pImg2[j].src = "../../image/grayBox.png";
			}
			
		</script>


	<script type="text/javascript">
		var ri1 = document.getElementsByClassName("pImg1");
		var ri2 = document.getElementsByClassName("pImg2");
		var pd1 = document.getElementById("productDetails1");
		
		for(let i = 0; i < ri1.length; i++){
			ri1[i].addEventListener("mouseover", cursorIn);
			if(i < 2){
				ri1[i].addEventListener("mousemove", cursorMove1);
			} else {
				ri1[i].addEventListener("mousemove", cursorMove2);
			}
			ri1[i].addEventListener("mouseout", cursorOut);
		}
		
		
		for(let i = 0; i < ri2.length; i++){
			ri2[i].addEventListener("mouseover", cursorIn);
			if(i < 2){
				ri2[i].addEventListener("mousemove", cursorMove3);
			} else {
				ri2[i].addEventListener("mousemove", cursorMove4);
			}
			ri2[i].addEventListener("mouseout", cursorOut);
		}
		
		function cursorIn() {
			pd1.style.visibility = 'visible';
		}

		function cursorOut() {
			pd1.style.visibility = 'hidden';
		}
		
		function cursorMove1() {
			pd1.style.zIndex = 200; //임의의 아주 큰 수를 줘서 항상 위에 있게 한다
			
			document.onmousemove = function(e) { //e해야 좌표값이용 가능
				pd1.style.left = 127 +"px";
				pd1.style.top = 150 + "px"; 
				//pd1.innerHTML = e.offsetX;
			} 
		}
		function cursorMove2() {
			pd1.style.zIndex = 200;
			
			document.onmousemove = function(e) {
				pd1.style.left = 506 +"px";
				pd1.style.top = 150 + "px"; 
			} 
		}
		
		function cursorMove3() {
			pd1.style.zIndex = 200; 
			
			document.onmousemove = function(e) { 
				pd1.style.left = 117 +"px";
				pd1.style.top = 447 + "px"; 
			} 
		}
		
		function cursorMove4() {
			pd1.style.zIndex = 200; 
			
			document.onmousemove = function(e) {
				pd1.style.left = 506 +"px";
				pd1.style.top = 447 + "px"; 
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

	</div><!-- 다른사람 상품의 끝  -->


</div> <!-- 최외각 끝 -->
</body>
</html>