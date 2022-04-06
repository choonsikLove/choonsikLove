package com.myweb.dao;
import java.sql.*;
import java.util.ArrayList;

import com.myweb.vo.EmpVO;

public class EmpDAO {

	//7단계를 다시 써야하며 + exception도 처리할 수 있어야 함.
	
	/*필드 메소드 생성자.
	 * 
	 * 저 단계들을
	 * 메소드에 넣을지 생성자에 넣을지 알아서 생각해서 하면 된다.
	 * 
	 * */
	
	//field
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String pass = "tiger";
	
	ResultSet rs; //result set의 전역변수화.
	Statement stmt;
	Connection conn;
	

	//constructor
	public EmpDAO() {
		//여기에 몇단계까지 넣을지 고민을 해봐야 한당.
		//모든 단계를 여기에 다 넣기로 함.
		
		//exception 처리가 필요해!
		try {
			Class.forName(driver);
			System.out.println("-----> 1단계 성공");
			
			//2. Connection 생성
			conn = DriverManager.getConnection(url,user,pass);
			System.out.println("-----> 2단계 성공");
			
			//3. Statement 생성
			stmt = conn.createStatement();
			System.out.println("-----> 3단계 성공");	
			
			//4. SQL 실행 및 ResultSet 생성
			String sql = "select empno, ename, job, mgr, to_char(hiredate,'YYYY/MM/DD') hiredate, sal, comm, deptno"
					+ " from emp"; //둘 사이에 공백이 없으면 에러가 뜬다 no와 from 사이에서
			rs = stmt.executeQuery(sql);
			//여기까지 생성자에 냄겨두기로 함.
			
			
			/*
			 * //5. ResultSet 객체에서 데이터 꺼내오기
			 * while(rs.next()){
			 * System.out.print(rs.getInt(1)+"\t"); 
			 * System.out.print(rs.getString(2)+"\t");
			 * System.out.print(rs.getString(3)+"\n"); }
			 * 
			 * //6. Close - 객체 종료 
			 * if(rs != null) rs.close(); 
			 * if(stmt != null) stmt.close();
			 * if(conn != null) conn.close();
			 */	
		
		} catch (Exception e) { //try catch문으로 감싼다. 그리고 exception들이 다양하기 때문에 최상위 exception으로 처리하면 된다.
			e.printStackTrace();
		}
	}
	
	//method
	//DEPT VO만 넣을 거양 아주 중요합니다.
	public ArrayList<EmpVO> getResultSet(){
		ArrayList<EmpVO> list = new ArrayList<EmpVO>();
		//이렇게 하면 디폴트 10개가 생성된다고 해용
		//하나를 더 넣으면 무슨 일이 발생하는가,,,,, 2번 자동증가! 에러가 안 납니다. 그래서 arraylist를 쓴다.
		
		/*
		while(rs.next()){ //rs는 지역변수야! 그래서 그냥 냅두면 빨간 줄이 나온다.
			System.out.print(rs.getInt(1)+"\t"); 
			System.out.print(rs.getString(2)+"\t");
			System.out.print(rs.getString(3)+"\n"); 
		}
		*/
		
		try {
			while(rs.next()){ //다른 메소드들이 쓸 수 있게 rs를 전역변수로 만든다. >> 그 다음에 예외처리를 해주면 된다.
				//담는 VO객체를 여러 데이터들이 계속 하나만 쓰면 안 되기 때문에 VO객체는 여기 이 반복문에서 만들어야 한다.
				EmpVO vo = new EmpVO();
				vo.setEmpno(rs.getInt(1));
				vo.setEname(rs.getString(2));
				vo.setJob(rs.getString(3));
				vo.setMgr(rs.getInt(4));
				vo.setHiredate(rs.getString(5));
				vo.setSal(rs.getDouble(6));
				vo.setComm(rs.getDouble(7));
				vo.setDeptno(rs.getInt(8));
				
				list.add(vo);//리스트에 vo 객체를 넣어야 한다!
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return list;
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
