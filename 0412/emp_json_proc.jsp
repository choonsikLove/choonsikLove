<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.myweb.vo.EmpVO, com.myweb.dao.EmpDAO2, java.util.ArrayList,
    		com.google.gson.*"
    %>
<%
	EmpDAO2 dao = new EmpDAO2();
	ArrayList<EmpVO> list = dao.getList();
	Gson gson = new Gson();
	
	//잘 갖고 왔는지 콘솔창에 찍어보기.
	/*
	for(EmpVO vo: list){
		System.out.print(vo.getEmpno()+"\t");
		System.out.print(vo.getEname()+"\n");
	}
	*/
	
	//이 리스트를 out.write로 보내야 한다.
	//out.write("서버 결과 전송");
	//이 리스트를 스크립트가 해석할 수 있는 json 객체로 만들어 보낸다.
	//이 작업을 도와주는 라이브러리가 있다.
	//우리는 GSON을 쓸 거임
	
	JsonObject jdata = new JsonObject(); //var jdata = {};가 만들어진다.
	JsonArray jlist = new JsonArray();	//"jlist":[] 단계
	//리스트의 vo 값을 json object로 만들어서 array에 넣어주면 된다.
	
	for(EmpVO vo: list){
		JsonObject obj = new JsonObject(); //obj = {};
		obj.addProperty("empno", vo.getEmpno()); // obj={"empno": 1111}이런 느낌
		obj.addProperty("ename", vo.getEname());	// obj={"empno": 1111, "ename":"스미스"}
		obj.addProperty("job", vo.getJob());
		jlist.add(obj);// jlist: [{"empno":1111,"ename":"스미스","job":"인사"},,,]
	}
	
	jdata.add("jlist", jlist); //"jlist"랑 jlist 헷갈리지 말기.
	
	out.write(gson.toJson(jdata)); //jdata를 보내기 위해 json 데이터로 변환하는 gson 라이브러리를 이용.
	
%>