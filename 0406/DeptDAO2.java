package com.myweb.dao;
import java.util.ArrayList;
import com.myweb.vo.DeptVO;

public class DeptDAO2 extends DBConn{
	//field
	//constructor
	
	//3단계 메소드 호출과 그 이후는 여기서 하면 됨!
	//method
	public ArrayList<DeptVO> getList(){
		ArrayList<DeptVO> list = new ArrayList<DeptVO>();
		String sql = "select * from dept";
		
		//부모의 객체 따로 만들 필요 X
		getStatement();
		
		
		try {
			//ResultSet
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				DeptVO vo = new DeptVO();
				vo.setDeptno(rs.getInt(1));
				vo.setDname(rs.getString(2));
				vo.setLoc(rs.getString(3));
				
				list.add(vo);
				//리스트에 데이터 넣으면 작업 끝난거라 다리를 끊어야 함!
			}
			
			close();//다리 끊기.
			//다리를 while문 안에서 끊으면 데이터가 하나만 들어가고 다른 택시들은 들어갈 수 없게 되는 것임..

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return list;
	}
	
	
}
