<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.myweb.dao.EmpDAO2, com.myweb.vo.EmpVO, java.util.ArrayList"
%>
    

<%
	
	EmpDAO2 dao = new EmpDAO2();
	//ArrayList<EmpVO> list = dao.getResultSet();
	ArrayList<EmpVO> list = dao.getList();
	dao.close();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<h1>DEPT 테이블 정보</h1>
	<table border="1">
		<tr>
			<th>EMPNO</th>
			<th>ENAME</th>
			<th>JOB</th>
			<th>MGR</th> <!-- 매니저 -->
			<th>HIREDATE</th>
			<th>SAL</th>
			<th>COMM</th> <!-- 커미션이 뭐야? 의뢰하는거? -->
			<th>DEPTNO</th>
		</tr>
		
		
		<%
			for(EmpVO vo: list){
		%>
		
		<tr>
			<td><%= vo.getEmpno() %></td>
			<td><%= vo.getEname() %></td>
			<td><%= vo.getJob() %></td>
			<td><%= vo.getMgr() %></td>
			<td><%= vo.getHiredate() %></td> <!-- 를 바꿔서 출력하고 싶어~ VO에서 손대기가 아니라 SQL에서 해야한다. -->
			<td><%= vo.getSal() %></td>
			<td><%= vo.getComm() %></td>
			<td><%= vo.getDeptno() %></td>
		</tr>
		
		<%
			}/* 넘모신기해...완전 획기적이야! */
		%>
		
	</table>

</body>
</html>