<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.mycgv.vo.CgvBoardVO, com.mycgv.dao.CgvBoardDAO"
    %>
<jsp:useBean id="vo" class="com.mycgv.vo.CgvBoardVO"></jsp:useBean>
<jsp:setProperty name="vo" property="*" />
<%-- db 연동 작업 
	bid, btitle, bcontent가 넘어온다.
--%>
<%
	CgvBoardDAO dao = new CgvBoardDAO();
	int result = dao.update(vo);

	if(result == 1){
		response.sendRedirect("board_list.jsp");
	}
%>

<%-- 값 넘어오는지 확인 다 했으면 삭제 --%>