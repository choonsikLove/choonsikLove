<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<td>1</td>
					<th>날짜</th>
					<td>2021-05-14</td>
					<th>조회수</th>
					<td>123</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="5">cgv 영화 보세요~</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5">cgv 영화 보세요~<br><br><br></td>
				</tr>
				<tr>
					<td colspan="6">
						<a href="board_update.jsp"><button type="button" class="btn_style2">수정</button></a>
						<a href="board_delete.jsp"><button type="button" class="btn_style2">삭제</button></a>
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