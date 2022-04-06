<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.myweb.vo.MemberVO, com.myweb.dao.MemberDAO" %>
    
<%-- 폼에서 넘어오는 데이터를 멤버 VO 객체로 매핑. --%>
<jsp:useBean id="vo" class="com.myweb.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>


<%--DB 연동. --%>
<%
	//DB 연동 객체는 MemberDAO
	MemberDAO dao = new MemberDAO();
	int result = dao.insert(vo); //그냥 id를 넣으면 되네용
	
	String msg = "";
	if(result == 1){
		msg = "회원 가입에 성공하셨습니다";
	} else {
		msg = "회원 가입 실패하셨습니다"; //사실 실패하면 exception이 먼저 뜬다고 하네용
	}
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 일단 데이터가 먼저 잘 넘어오는지 체크해보기.
	< % = vo.getMid() % >해서
	 -->
	<%= msg %>
	
</body>
</html>