<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.mycgv.vo.CgvBoardVO, com.mycgv.dao.CgvBoardDAO"
    %>

<%
	CgvBoardDAO dao = new CgvBoardDAO();
	ArrayList<CgvBoardVO> list = dao.select();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/mycgv/css/mycgv.css">
</head>
<body>
	<!--  header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="board_list">
			<h1 class="title">게시판</h1>
			<table class="content_layout">
				<tr>
					<td colspan="4">
						<a href="board_write.jsp"><button type="button">글쓰기</button></a>
					</td>
				</tr>
				<tr>
					<th>번호</th>
					<th>제목</th>	
					<th>조회수</th>
					<th>등록일</th>
				</tr>
			<!-- for문 이용해 반복할 것임. -->
			<%
				for(CgvBoardVO vo: list){
			%>
				<tr>
					<td><%= vo.getRno() %></td>
					<td><a href="board_content.jsp?bid=<%= vo.getBid()%>&rno=<%= vo.getRno()%>"><%= vo.getBtitle() %></a></td>
					<td><%= vo.getBhits() %></td>
					<td><%= vo.getBdate() %></td>
				</tr>
			<%
				}
			%>
				<%-- 신기해! 아래 html은 필요 없고 위의 이거 하나만 있으면 된당 --%>
				<tr>
					<td colspan="4"><< 1   2   3   4   5>></td>					
				</tr>
			</table>
		</section>
		
	</div>
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>