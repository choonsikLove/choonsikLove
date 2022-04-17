<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="h3.css">
</head>
<body onload = "init()">
<div id="wrap">
	
	<table id="followingTable">
		<tr class="row" id="firstRow">	
			<td class="person" id="person1">
				<img class="profilePhoto" id="profilePhoto1">
				<p class="nickname" id="nickname1"></p>
				<p class="follow"></p>
			</td>
			<td class="person" id="person2">
				<img class="profilePhoto" id="profilePhoto2">
				<p class="nickname" id="nickname2"></p>
				<p class="follow"></p>
			</td>
		</tr>
	
		<tr class="row" id="secondRow">	
			<td class="person" id="person3">
				<img class="profilePhoto" id="profilePhoto3">
				<p class="nickname" id="nickname3"></p>
				<p class="follow"></p>
			</td>
			<td class="person" id="person4">
				<img class="profilePhoto" id="profilePhoto4">
				<p class="nickname" id="nickname4"></p>
				<p class="follow"></p>
			</td>
		</tr>
		
		<tr class="row" id="thirdRow">	
			<td class="person" id="person5">
				<img class="profilePhoto" id="profilePhoto5">
				<p class="nickname" id="nickname5"></p>
				<p class="follow"></p>
			</td>
			<td class="person" id="person6">
				<img class="profilePhoto" id="profilePhoto6">
				<p class="nickname" id="nickname6"></p>
				<p class="follow"></p>
			</td>
		</tr>
		
		<tr class="row" id="fourthRow">	
			<td class="person" id="person7">
				<img class="profilePhoto" id="profilePhoto7">
				<p class="nickname" id="nickname7"></p>
				<p class="follow"></p>
			</td>
			<td class="person" id="person8">
				<img class="profilePhoto" id="profilePhoto8">
				<p class="nickname" id="nickname8"></p>
				<p class="follow"></p>
			</td>
		</tr>
	</table>
	
	<script type="text/javascript">
		var persons = document.getElementsByClassName('person');
		var photos = document.getElementsByClassName('profilePhoto');
		var nicknames = document.getElementsByClassName('nickname');
		var follow = document.getElementsByClassName('follow');
		
		var source = ["../../image/m3.png"];
		var nameArray = new Array();
		
		for(i = 0; i < persons.length; i++){
			photos[i].src = source;
			
			nameArray[i] = "사용자" + (i+1);
			nicknames[i].innerHTML = nameArray[i];
			
			//누르면 페이지 이동
			photos[i].onclick = goToUserInfo;
			nicknames[i].onclick = goToUserInfo;
		}
		
		
		function goToUserInfo(){
			window.open("../theOthersShop.jsp");
		}
		
		var user = new Array(persons.length);
		for(let i = 0; i < user.length; i++){
			user[i] = new Object();
			user[i].flag = true;//followStatus
		}
		
		
		
		function init() {
			for(i = 0; i < user.length; i++){
			if(user[i].flag){
				follow[i].innerHTML = "팔로우 중";
			} else {
				follow[i].innerHTML = "+ 팔로우";
			}
			}
			}
		
		
		
		for(let k = 0; k < 8; k++){
			follow[k].onclick = function name() {
				if(user[k].flag){
					follow[k].innerHTML = "팔로우 중";
					user[k].flag = false;
				} else {
					follow[k].innerHTML = "+ 팔로우";
					user[k].flag = true;
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

	
</div>
</body>
</html>