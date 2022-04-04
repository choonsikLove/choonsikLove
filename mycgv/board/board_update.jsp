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
		<section class="board_write">
			<h1 class="title">게시판</h1>
			<form name="" action="#" method="get">
				<table class="content_layout">
					<tr>
						<th>제목</th>
						<td><input type="text" name="btitle" value="cgv영화 보세요~"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="bcontent">cgv 영화 보세요~ </textarea></td>
					</tr>
					<tr>
						<th>파일</th>
						<td><input type="file" name="bfile"></td>
					</tr>
					<tr>					
						<td colspan="2">
							<button type="button" class="btn_style2">수정완료</button>
							<button type="reset" class="btn_style2">취소</button>
							<a href="board_content.jsp"><button type="button" class="btn_style2">이전페이지</button></a>
							<a href="board_list.jsp"><button type="button" class="btn_style2">리스트</button></a>
						</td>
					</tr>
				</table>
			</form>
		</section>
		
	</div>
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>