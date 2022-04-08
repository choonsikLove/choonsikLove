<%@page import="java.util.ArrayList"%>
<%@page import="com.mycgv.dao.CgvBoardDAO, com.mycgv.vo.CgvBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//이름은 반드시 동일하게 쓰는 게 좋아요!
	String bid = request.getParameter("bid");
	String rno = request.getParameter("rno");

	CgvBoardDAO dao = new CgvBoardDAO();
	//업데이트는 업데이트 되고 끝나기 때문에 리턴값업음.
	dao.updateHits(bid);
	//리턴 타입을 어떤 타입으로 해야해? vo야!
	CgvBoardVO vo = dao.select(bid);
	
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
		<section class="board_content">
			<h1 class="title">게시판</h1>
			<table class="content_layout">
				<tr>
					<th>번호</th>
					<td><%= rno %></td><!-- 잠시 남겨놓도록 합시다. -->
					<th>날짜</th>
					<td><%= vo.getBdate() %></td>
					<th>조회수</th>
					<td><%= vo.getBhits() %></td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="5"><%= vo.getBtitle() %></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5"><%= vo.getBcontent() %><br><br><br></td>
				</tr>
				<tr>
					<td colspan="6">
						<a href="board_update.jsp?bid=<%= vo.getBid()%>&rno=<%= rno%>"><button type="button" class="btn_style2">수정</button></a>
						<a href="board_delete.jsp?bid=<%= vo.getBid()%>&rno=<%= rno%>"><button type="button" class="btn_style2">삭제</button></a>
						<a href="board_list.jsp"><button type="button" class="btn_style2">리스트</button></a>
						<a href="http://localhost:9000/mycgv/index.jsp"><button type="button" class="btn_style2">홈으로</button></a>
					</td>
				</tr>
			</table>
		</section>
		
	</div>
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>