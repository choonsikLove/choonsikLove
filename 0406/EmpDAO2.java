package com.myweb.dao;
import java.util.ArrayList;
import com.myweb.vo.EmpVO;

public class EmpDAO2 extends DBConn{

	//field

	//constructor
	
	//method
	public ArrayList<EmpVO> getList(){
		ArrayList<EmpVO> list = new ArrayList<EmpVO>();
		String sql = "select empno, ename, job, mgr, to_char(hiredate,'YYYY/MM/DD') hiredate, sal, comm, deptno from emp";
		getStatement();
		
		try {
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){ 
				EmpVO vo = new EmpVO();
				vo.setEmpno(rs.getInt(1));
				vo.setEname(rs.getString(2));
				vo.setJob(rs.getString(3));
				vo.setMgr(rs.getInt(4));
				vo.setHiredate(rs.getString(5));
				vo.setSal(rs.getDouble(6));
				vo.setComm(rs.getDouble(7));
				vo.setDeptno(rs.getInt(8));
				
				list.add(vo);
			}
			
			close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	
}
