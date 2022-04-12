<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//서버에 가는 작업은 ajax가 필요.
		$.ajax({
			url:"emp_json_proc.jsp",
			success: function(result) {
				//alert(result.jlist[0].empno);//안나온다 String type이 되어버렸기 때문에 result가.(object가 아니라)
				//json객체로 parsing
				alert(result);
				var jdata = JSON.parse(result);
				alert(jdata); //object로 뜬다.
				
				alert(jdata.jlist[0].empno);
				
				var output = "<h2>EMP 테이블</h2>";
				output += "<table border=1>";
				output += "<tr>";
				output += "<th>사원번호</th><th>이름</th><th>직무</th>";
				output += "</tr>";
				
				for(var i in jdata.jlist){
					output += "<tr>";
					output += "<td>" + jdata.jlist[i].empno + "</td>"; 
					output += "<td>" + jdata.jlist[i].ename + "</td>"; 
					output += "<td>" + jdata.jlist[i].job + "</td>"; 
					output += "</tr>";
				}
				
				output += "</table>"; 
				
				
				$('body').append(output);
		}});
		
		
	});

</script>
</head>
<body>

</body>
</html>