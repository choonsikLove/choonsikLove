<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="history_css.css">
<title>Insert title here</title>
</head>
<body>
<div id="wrap"><!-- 최외각 -->
	<div class="products"> 
		<table class="pTable">
			<tr id="row1">
				<th><a href="../MerchDetails.jsp"><img class="pImg1" id="img1"></a></th>
				<th><a href="../MerchDetails.jsp"><img class="pImg1" id="img2"></a></th>
				<th><a href="../MerchDetails.jsp"><img class="pImg1" id="img3"></a></th>
				<th><a href="../MerchDetails.jsp"><img class="pImg1" id="img4"></a></th>
			</tr>

			<tr id="row2">
				<th><a href="../MerchDetails.jsp">
						<p class="productName" id="productName1">구매한 상품1</p>
					</a>
					<p id="productCost1">1,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p class="productName" id="productName2">구매한상품2구매한상품2구매한상품2구매한상품2
							구매한상품2구매한상품2구매한상품2구매한상품2구매한상품2구매한상품2구매한상품2구매한상품2
						</p>
					</a>
					<p id="productCost2">1,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p class="productName" id="productName3">구매한 상품3</p>
					</a>
					<p id="productCost3">1,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p class="productName" id="productName4">구매한 상품4</p>
					</a>
					<p id="productCost4">100원</p>
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
						<p id="productName5">구매한 상품5</p>
					</a>
					<p id="productCost1">1,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p id="productName6">구매한 상품6</p>
					</a>
					<p id="productCost2">1,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p id="productName7">구매한 상품7</p>
					</a>
					<p id="productCost3">1,000,000원</p>
				</th>
				<th><a href="../MerchDetails.jsp">
						<p id="productName8">구매한 상품8</p>
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

	</div><!-- 상품의 끝  -->


</div> <!-- 최외각 wrap 끝 -->

</body>
</html>