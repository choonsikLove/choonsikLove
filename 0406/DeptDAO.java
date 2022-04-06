package com.myweb.dao;
import java.sql.*;
import java.util.ArrayList;

import com.myweb.vo.DeptVO;

public class DeptDAO {

	//7�ܰ踦 �ٽ� ����ϸ� + exception�� ó���� �� �־�� ��.
	
	/*�ʵ� �޼ҵ� ������.
	 * 
	 * �� �ܰ����
	 * �޼ҵ忡 ������ �����ڿ� ������ �˾Ƽ� �����ؼ� �ϸ� �ȴ�.
	 * 
	 * */
	
	//field
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String pass = "tiger";
	
	ResultSet rs; //result set�� ��������ȭ.
	Statement stmt;
	Connection conn;
	

	//constructor
	public DeptDAO() {
		//���⿡ ��ܰ���� ������ ����� �غ��� �Ѵ�.
		//��� �ܰ踦 ���⿡ �� �ֱ�� ��.
		
		//exception ó���� �ʿ���!
		try {
			Class.forName(driver);
			System.out.println("-----> 1�ܰ� ����");
			
			//2. Connection ����
			conn = DriverManager.getConnection(url,user,pass);
			System.out.println("-----> 2�ܰ� ����");
			
			//3. Statement ����
			stmt = conn.createStatement();
			System.out.println("-----> 3�ܰ� ����");	
			
			//4. SQL ���� �� ResultSet ����
			rs = stmt.executeQuery("SELECT * FROM DEPT");
			//������� �����ڿ� ���ܵα�� ��.
			
			
			/*
			 * //5. ResultSet ��ü���� ������ ��������
			 * while(rs.next()){
			 * System.out.print(rs.getInt(1)+"\t"); 
			 * System.out.print(rs.getString(2)+"\t");
			 * System.out.print(rs.getString(3)+"\n"); }
			 * 
			 * //6. Close - ��ü ���� 
			 * if(rs != null) rs.close(); 
			 * if(stmt != null) stmt.close();
			 * if(conn != null) conn.close();
			 */	
		
		} catch (Exception e) { //try catch������ ���Ѵ�. �׸��� exception���� �پ��ϱ� ������ �ֻ��� exception���� ó���ϸ� �ȴ�.
			e.printStackTrace();
		}
	}
	
	//method
	//DEPT VO�� ���� �ž� ���� �߿��մϴ�.
	public ArrayList<DeptVO> getResultSet(){
		ArrayList<DeptVO> list = new ArrayList<DeptVO>();
		//�̷��� �ϸ� ����Ʈ 10���� �����ȴٰ� �ؿ�
		//�ϳ��� �� ������ ���� ���� �߻��ϴ°�,,,,, 2�� �ڵ�����! ������ �� ���ϴ�. �׷��� arraylist�� ����.
		
		/*
		while(rs.next()){ //rs�� ����������! �׷��� �׳� ���θ� ���� ���� ���´�.
			System.out.print(rs.getInt(1)+"\t"); 
			System.out.print(rs.getString(2)+"\t");
			System.out.print(rs.getString(3)+"\n"); 
		}
		*/
		
		try {
			while(rs.next()){ //�ٸ� �޼ҵ���� �� �� �ְ� rs�� ���������� �����. >> �� ������ ����ó���� ���ָ� �ȴ�.
				//��� VO��ü�� ���� �����͵��� ��� �ϳ��� ���� �� �Ǳ� ������ VO��ü�� ���� �� �ݺ������� ������ �Ѵ�.
				DeptVO vo = new DeptVO();
				vo.setDeptno(rs.getInt(1));
				vo.setDname(rs.getString(2));
				vo.setLoc(rs.getString(3));
				
				list.add(vo);//����Ʈ�� vo ��ü�� �־�� �Ѵ�!
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
