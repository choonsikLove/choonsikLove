package com.myweb.dao;
import java.sql.*;
import java.util.ArrayList;

import com.myweb.vo.EmpVO;

public class EmpDAO {

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
	public EmpDAO() {
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
			String sql = "select empno, ename, job, mgr, to_char(hiredate,'YYYY/MM/DD') hiredate, sal, comm, deptno"
					+ " from emp"; //�� ���̿� ������ ������ ������ ��� no�� from ���̿���
			rs = stmt.executeQuery(sql);
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
	public ArrayList<EmpVO> getResultSet(){
		ArrayList<EmpVO> list = new ArrayList<EmpVO>();
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
				EmpVO vo = new EmpVO();
				vo.setEmpno(rs.getInt(1));
				vo.setEname(rs.getString(2));
				vo.setJob(rs.getString(3));
				vo.setMgr(rs.getInt(4));
				vo.setHiredate(rs.getString(5));
				vo.setSal(rs.getDouble(6));
				vo.setComm(rs.getDouble(7));
				vo.setDeptno(rs.getInt(8));
				
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
