package com.myweb.dao;
import com.myweb.vo.MemberVO;

public class MemberDAO extends DBConn{
	
	//insert작업이 들어가야 한다.
	//insert: 회원가입
	
	//int 값으로 나온다..그렇구나! insert, update, delete는 그렇다. result set이 만들어지지 않는다고 하넹용
	public int insert(MemberVO vo) {
		int result = 0;
		
		/*
		String sql = "insert into member values('"  //()when you use () after the member(), you have to take a closer look at the order of the columns.
				+ vo.getMid() +"','" 
				+ vo.getMname() + "','" 
				+ vo.getAddr()+ "','" 
				+ vo.getHp() +"',sysdate,'"
				+ vo.getPass() +"')"; //when you do not use () after the table name, you just have to arrange the data in a chronological order 
										//when the columns were made
				;
				
		*/
		//우리가 사용하는 쿼리의 모양은 이ㅓ렇당. varchar2는 ''가 붙는다.
		//복잡해! ''이 붙지 않으면 문자인지 모름. 불편해 복잡해! >>그래서 등장한 prepared statement
				
		//sql을 편하게 써봅시다
		//PREPARED STATEMENT
		
		String sql2 = "insert into member values(?,?,?,?,sysdate,?)"; //Column명 대신 ?로 쓰면 된다 ,,,, 서치 어 나이스 문구..
				
		//getStatement();
		getPreparedStatement(sql2);
		//충돌하기 때문에 아래의 sql은 지우자!
		
		try {
			//pstmt에 매핑하는 데이터 넣기.
			//?에 들어가는 데이터들을 넣기.
			
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getMname());
			pstmt.setString(3, vo.getAddr());
			pstmt.setString(4, vo.getHp());
			pstmt.setString(5, vo.getPass());
			//?만! 중간에 낀 sysdate는 신경 안써도 됨
			
			//result = stmt.executeUpdate(sql);
			result = pstmt.executeUpdate();
			close();
			//잘 되면 result 값이 1이 된다고 하네요 
			//뭐가 많이 나오는게 아니므로 array list를 쓸 이유가 X
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
