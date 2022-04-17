<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="h1.css">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
	
	<div class="qDiv" id="qDiv1">
		<div class = "merchDiv" id = "merch1">
			<script type="text/javascript">
				var merchDiv = document.getElementById('merch1');
				var merchImg = new Image();
				merchImg.src = "../../image/grayBox.png";
				merchImg.setAttribute( 'id', 'merchImg1');
				merchImg.setAttribute( 'class', 'merchImg');
				merchDiv.appendChild(merchImg);
				merchDiv.onclick = function() {
					window.open("../MerchDetail.jsp");
				}
			</script>
		</div> <!--merch1  -->
		<div class = "conversationDiv" id="conversation1">
			<div class="inquiry">
				<!-- 질문자 -->
				<img class="inqImg" id="inqImg1">
				<span class ="inqId" id="inqId1"></span>
				<p class ="inqDetail" id="inqDetail1"></p>
			</div>
			
			<div class="answer">
				<span class = "below">↳</span>
				<p class ="aDetail" id="aDetail1"></p>
			</div>
			
		</div> <!-- 질문과 답변 내용 -->
	</div> <!-- 한줄 -->
	
	<hr>
	<!--다음줄  -->
	<div class="qDiv" id="qDiv2">
		<div class = "merchDiv" id = "merch2">
			<script type="text/javascript">
				var merchDiv = document.getElementById('merch2');
				var merchImg = new Image();
				merchImg.src = "../../image/grayBox.png";
				merchImg.setAttribute( 'id', 'merchImg2');
				merchImg.setAttribute( 'class', 'merchImg');
				merchDiv.appendChild(merchImg);
				merchDiv.onclick = function() {
					window.open("../MerchDetail.jsp");
				}
			</script>
		</div> <!--merch2  -->
		<div class = "conversationDiv" id="conversation2">
			<div class="inquiry">
				<!-- 질문자 -->
				<img class="inqImg" id="inqImg2">
				<span class ="inqId" id="inqId2"></span>
				<p class ="inqDetail" id="inqDetail2"></p>
			</div>
			
			<div class="answer">
				<span class = "below">↳</span>
				<p class ="aDetail" id="aDetail2"></p>
			</div>
			
		</div> <!-- 질문과 답변 내용 -->
	</div> <!-- 한줄 -->
	
	<hr>
	<!--세번째줄  -->
	<div class="qDiv" id="qDiv3">
		<div class = "merchDiv" id = "merch3">
			<script type="text/javascript">
				var merchDiv = document.getElementById('merch3');
				var merchImg = new Image();
				merchImg.src = "../../image/grayBox.png"; //이것도 반복문으로 처리하는게 나을까?
				merchImg.setAttribute( 'id', 'merchImg3');
				merchImg.setAttribute( 'class', 'merchImg');
				merchDiv.appendChild(merchImg);
				merchDiv.onclick = function() {
					window.open("../MerchDetail.jsp");
				}
			</script>
		</div> <!--merch3  -->
		<div class = "conversationDiv" id="conversation3">
			<div class="inquiry">
				<!-- 질문자 -->
				<img class="inqImg" id="inqImg3">
				<span class ="inqId" id="inqId3"></span>
				<p class ="inqDetail" id="inqDetail3"></p>
			</div>
			
			<div class="answer">
				<span class = "below">↳</span>
				<p class ="aDetail" id="aDetail3"></p>
			</div>
			
		</div> <!-- 질문과 답변 내용 -->
	</div> <!-- 한줄 -->
	
	<hr>
	<!--네번째 줄  -->
	<div class="qDiv" id="qDiv4">
		<div class = "merchDiv" id = "merch4">
			<script type="text/javascript">
				var merchDiv = document.getElementById('merch4');
				var merchImg = new Image();
				merchImg.src = "../../image/grayBox.png";
				merchImg.setAttribute( 'id', 'merchImg4');
				merchImg.setAttribute( 'class', 'merchImg');
				merchDiv.appendChild(merchImg);
				merchDiv.onclick = function() {
					window.open("../MerchDetail.jsp");
				}
			</script>
		</div> <!--merch4  -->
		<div class = "conversationDiv" id="conversation4">
			<div class="inquiry">
				<!-- 질문자 -->
				<img class="inqImg" id="inqImg4">
				<span class ="inqId" id="inqId4"></span>
				<p class ="inqDetail" id="inqDetail4"></p>
			</div>
			
			<div class="answer">
				<span class = "below">↳</span>
				<p class ="aDetail" id="aDetail4"></p>
			</div>
			
		</div> <!-- 질문과 답변 내용 -->
	</div> <!-- 한줄 -->
	
	<hr>
	<!-- 다섯번째 줄 -->
	<div class="qDiv" id="qDiv5">
		<div class = "merchDiv" id = "merch5">
			<script type="text/javascript">
				var merchDiv = document.getElementById('merch5');
				var merchImg = new Image();
				merchImg.src = "../../image/grayBox.png";
				merchImg.setAttribute( 'id', 'merchImg5');
				merchImg.setAttribute( 'class', 'merchImg');
				merchDiv.appendChild(merchImg);
				merchDiv.onclick = function() {
					window.open("../MerchDetail.jsp");
				}
			</script>
		</div> <!--merch5  -->
		<div class = "conversationDiv" id="conversation5">
			<div class="inquiry">
				<!-- 질문자 -->
				<img class="inqImg" id="inqImg5">
				<span class ="inqId" id="inqId5"></span>
				<p class ="inqDetail" id="inqDetail5"></p>
			</div>
			
			<div class="answer">
				<span class = "below">↳</span>
				<p class ="aDetail" id="aDetail5"></p>
			</div>
			
		</div> <!-- 질문과 답변 내용 -->
	</div> <!-- 한줄 -->
	
	
	<script type="text/javascript">
		var inqDivs = document.getElementsByClassName('inquiry');
		var inqImgs = document.getElementsByClassName("inqImg");
		var inqIds = document.getElementsByClassName('inqId');
		var inqDetails = document.getElementsByClassName("inqDetail");
		
		var imgSrcs = ["../../image/m1.png", "../../image/m2.png",
			"../../image/m3.png","../../image/m4.png","../../image/m5.png"];
		var ids = ["질문자1", "질문자 2","질문자3", "질문자4","질문자5"];
		var inqs = ["문의 내용1", "문의 내용2", "문의 내용3", 
				"문의 내용4","문의 내용5"];
		
		for(i = 0; i <inqDivs.length; i++){
			inqImgs[i].src = imgSrcs[i];
			inqIds[i].innerHTML = ids[i];
			inqDetails[i].innerHTML = inqs[i];
			
			inqImgs[i].onclick = function() {
				window.open("../theOthersShop.jsp");//남의 프로필로 가게 됨
			}
			inqIds[i].onclick = function() {
				window.open("../theOthersShop.jsp");
			}
		}
		
		var aDivs = document.getElementsByClassName('answer');
		var aDetails = document.getElementsByClassName("aDetail");
		
		var anss = ["답변1입니다.","답변2입니다.", "답변3입니다", 
				"답변4입니다","답변 5입니다"];
		
		for(i = 0; i <aDivs.length; i++){
			aDetails[i].innerHTML = anss[i];
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
	
	
</div>
</body>
</html>