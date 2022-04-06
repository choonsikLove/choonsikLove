<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//첨엔 패스 없이 만들어용.

	function joinFormCheck() {
		var id = document.getElementById("mid");	
		var pass = document.getElementById("pass");
		var name = document.getElementById("mname");
		var hp = document.getElementById("hp");
		
		
		if(id.value == "") {
			alert("아이디를 입력해 주세요.");
			id.focus();
			return false;
		} else if (pass.value ==""){
			alert("비밀번호를 입력해주세요")
			pass.focus();
			return false;
		} else if (name.value ==""){
			alert("성명을 입력해주세요")
			name.focus();
			return false;
		} else if(hp.value == ""){
			alert("핸드폰 번호를 입력해 주세요.");
			hp.focus();
			return false;
		}
		
		joinForm.submit();
		
	}
	
</script>
</head>
<body>
	<h1>회원가입 폼</h1>
	<form name="joinForm" action="member_join_proc.jsp" method="post">
		<ul>
			<li>
				<label>아이디</label>
				<input type="text" name="mid" id="mid"> <!-- 이름 맞추기 DB의 이름, VO의 이름, form의 이름. -->
			</li>
			<li>
				<label>패스워드</label>
				<input type="password" name="pass" id="pass">
			</li>
			<li>
				<label>성명</label>
				<input type="text" name="mname" id="mname">
			</li>
			<li>
				<label>주소</label>
				<input type="text" name="addr" id="addr">
			</li>
			<li>
				<label>핸드폰번호</label>
				<input type="text" name="hp" id="hp">
			</li>
			<li>
				<button type="button" onclick="joinFormCheck()">회원가입</button>
			</li>	
			<li>
				<button type="reset">다시 쓰기</button>
			</li>		
		</ul>
	</form>
</body>
</html>