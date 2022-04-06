package com.myweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConn {//얘를 extends하게 하면 된다 부모가 되는구양
	//field
	//똑같은 서버에 똑같은 계정으로 들어가기 때문에.
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String pass = "tiger";
	
	ResultSet rs;
	Statement stmt;
	Connection conn;
	PreparedStatement pstmt; //종류가 다른 택시.
	
	
	//생성자: 1,2단계만 생성자로 뽑기로 함.
	public DBConn() {
		try {
			Class.forName(driver);
			System.out.println("1단계 성공");
			
			conn = DriverManager.getConnection(url,user,pass);
			System.out.println("2단계 성공");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//3단계는 별도의 메소드로 statement 만들기
	
	public void getStatement() {
		try {
			stmt = conn.createStatement();
			System.out.println("3단계 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//3단계 확장판: prepared statement
	public void getPreparedStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
			System.out.println("3단계 확장판 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//4단계에선 sql이 달라진다. >> result set은 각각 dao에서 하기로,,, 그 이후는 복잡하다고 해서 지금의 단계에선 3단계까지만 하면 된다네용
	
	public void close() {
		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
}//class의 끝
