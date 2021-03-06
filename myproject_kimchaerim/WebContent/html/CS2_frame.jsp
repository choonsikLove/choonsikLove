<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/CS2_frame.css">
<title>Insert title here</title>
</head>
<body>

<div id="wrap">
	<div id="qCategory">
		<p>질문 카테고리</p>
		<ul id="qUl">
			<li><a href="#section1">이용</a>
			<li><a href="#section2">회원</a>
			<li><a href="#section3">탈퇴</a>
			<li><a href="#section4">거래</a>
		</ul>
	</div>
	
	<div id="searchDiv">
		<input type="text">
		<button id="findButton">
			<img src='../image/magnify.png' alt="돋보기" width="17px" height="17px">
		</button>
		
		<script type="text/javascript">
				var fButton = document.getElementById("findButton");
				fButton.onclick = function search() {
					alert("서치 기능");
				}
		</script> 		
	</div>
	
	<hr>
	
<div id="sectionDiv">
	<section id="section1">
		<p class="titleP">이용 관련 질문</p>
		<div class="use">
			<div id="useSummary1" class="summary" onclick="openBox('useDetails1')" style="cursor: pointer;">
				<p><span>·</span>이용에 관한 질문 1</p>
				<span id="useSpan1">︾</span>
			</div>
			<div style="display: none;" id="useDetails1" class="details">
			<hr>
				 <p>답변 내용1</p>
			</div>
		</div>
		
		<div class="use">
			<div id="useSummary2" class="summary" onclick="openBox('useDetails2')" style="cursor: pointer;">
				<p><span>·</span>이용에 관한 질문 2</p>
				<span id="useSpan2">︾</span>
			</div>
			<div style="display: none;" id="useDetails2" class="details">
			<hr>
				 <p>답변 내용2</p>
			</div>
		</div>
	</section>	
	
	<section id="section2">
		<p class="titleP">회원 관련 질문</p>
		<div class="member">
			<div id="memberSummary1" class="summary" onclick="openBox('memberDetails1')" style="cursor: pointer;">
				<p><span>·</span>회원에 관한 질문 1</p>
				<span id="memberSpan1">︾</span>
			</div>
			<div style="display: none;" id="memberDetails1" class="details">
			<hr>
				<p>답변 내용1</p>
			</div>
		</div>
		
		<div class="member">
			<div id="memberSummary2" class="summary" onclick="openBox('memberDetails2')" style="cursor: pointer;">
				<p><span>·</span>회원에 관한 질문 2</p>
				<span id="memberSpan2">︾</span>
			</div>
			<div style="display: none;" id="memberDetails2" class="details">
			<hr>
				<p>답변 내용2</p>
			</div>
		</div>
	</section>	
	
	<section id="section3">
		<p class="titleP">탈퇴 관련 질문</p>
		<div class="withdraw">
			<div id="withdrawSummary1" class="summary" onclick="openBox('withdrawDetails1')" style="cursor: pointer;">
				<p><span>·</span>탈퇴에 관한 질문 1</p>
				<span id="withdrawSpan1">︾</span>
			</div>
			<div style="display: none;" id="withdrawDetails1" class="details">
			<hr>
				<p>답변 내용1</p>
			</div>
		</div>
		
		<div class="withdraw">
			<div id="withdrawSummary2" class="summary" onclick="openBox('withdrawDetails2')" style="cursor: pointer;">
				<p><span>·</span>탈퇴에 관한 질문 2</p>
				<span id="withdrawSpan2">︾</span>
			</div>
			<div style="display: none;" id="withdrawDetails2" class="details">
			<hr>
				<p>답변 내용2</p>
			</div>
		</div>
	</section>	
	
	<section id="section4">
		<p class="titleP">거래 관련 질문</p>
		<div class="transaction">
			<div id="transactionSummary1" class="summary" onclick="openBox('transactionDetails1')" style="cursor: pointer;">
				<p><span>·</span>거래에 관한 질문 1</p>
				<span id="transactionSpan1">︾</span>
			</div>
			<div style="display: none;" id="transactionDetails1" class="details">
			<hr>
				<p>답변 내용1</p>
			</div>
		</div>
		
		<div class="transaction">
			<div id="transactionSummary2" class="summary" onclick="openBox('transactionDetails2')" style="cursor: pointer;">
				<p><span>·</span>거래에 관한 질문 2</p>
				<span id="transactionSpan2">︾</span>
			</div>
			<div style="display: none;" id="transactionDetails2" class="details">
			<hr>
				<p>답변 내용2</p>
			</div>
		</div>
	</section>	
	
	<script type="text/javascript">
	
 		function openBox(obj) {
 		//이유는 모르겠는데 hiddenBox var을 따로 만들지 않아야 되었음
 			if(document.getElementById(obj).style.display == "none"){
 			document.getElementById(obj).style.display = "block";
 			} else {
 			document.getElementById(obj).style.display = "none";
 			}
		} 
	</script>
</div>
</div><!--wrap  -->


</body>
</html>