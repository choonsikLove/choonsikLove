package com.myweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConn {//�긦 extends�ϰ� �ϸ� �ȴ� �θ� �Ǵ±���
	//field
	//�Ȱ��� ������ �Ȱ��� �������� ���� ������.
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String pass = "tiger";
	
	ResultSet rs;
	Statement stmt;
	Connection conn;
	PreparedStatement pstmt; //������ �ٸ� �ý�.
	
	
	//������: 1,2�ܰ踸 �����ڷ� �̱�� ��.
	public DBConn() {
		try {
			Class.forName(driver);
			System.out.println("1�ܰ� ����");
			
			conn = DriverManager.getConnection(url,user,pass);
			System.out.println("2�ܰ� ����");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//3�ܰ�� ������ �޼ҵ�� statement �����
	
	public void getStatement() {
		try {
			stmt = conn.createStatement();
			System.out.println("3�ܰ� ����");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//3�ܰ� Ȯ����: prepared statement
	public void getPreparedStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
			System.out.println("3�ܰ� Ȯ���� ����");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//4�ܰ迡�� sql�� �޶�����. >> result set�� ���� dao���� �ϱ��,,, �� ���Ĵ� �����ϴٰ� �ؼ� ������ �ܰ迡�� 3�ܰ������ �ϸ� �ȴٳ׿�
	
	public void close() {
		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
}//class�� ��
