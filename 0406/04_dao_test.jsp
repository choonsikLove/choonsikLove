<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.myweb.dao.DeptDAO2, com.myweb.vo.DeptVO, java.util.ArrayList"
    %>
    

<%
	DeptDAO2 dao = new DeptDAO2();	
	//자동 임포트가 안 되어서 알아서 import 해야함. 패키지 이름.파일이름 이렇게.
	
	//DAO에 메소드를 만든 이후
	//생성자에는 4단계까지만 들어 있어서 메소드를 호출합시다
	
	//ArrayList<DeptVO> list = dao.getResultSet();
	ArrayList<DeptVO> list = dao.getList();
	dao.close();
%>

<%-- 지금은 필요 없는 html 친구들 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 찍은 내용을 html에 띄우고 싶어! -->
<!--VO에 rs 데이터를 넣고 >> 그걸 arraylist에 넣고 >>그걸 이 페이지로 보내야 함.  -->
<!-- 하고 돌아왔다! -->
	
	<h1>DEPT 테이블 정보</h1>
	<table border="1">
		<tr>
			<th>DEPTNO</th>
			<th>DNAME</th>
			<th>LOC</th>
		</tr>
		
		<!-- 이 코드를 4번 반복해야 한다. -->
		<!-- 신기해! -->
		
		<%
			for(DeptVO vo: list){
		%>
		<tr>
			<td><%= vo.getDeptno() %></td>
			<td><%= vo.getDname() %></td>
			<td><%= vo.getLoc() %></td>
		</tr>
		<%
			}
		%>
		
	</table>

</body>
</html>