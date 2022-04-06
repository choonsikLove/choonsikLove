package com.myweb.dao;
import java.util.ArrayList;
import com.myweb.vo.DeptVO;

public class DeptDAO2 extends DBConn{
	//field
	//constructor
	
	//3�ܰ� �޼ҵ� ȣ��� �� ���Ĵ� ���⼭ �ϸ� ��!
	//method
	public ArrayList<DeptVO> getList(){
		ArrayList<DeptVO> list = new ArrayList<DeptVO>();
		String sql = "select * from dept";
		
		//�θ��� ��ü ���� ���� �ʿ� X
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
				//����Ʈ�� ������ ������ �۾� �����Ŷ� �ٸ��� ����� ��!
			}
			
			close();//�ٸ� ����.
			//�ٸ��� while�� �ȿ��� ������ �����Ͱ� �ϳ��� ���� �ٸ� �ýõ��� �� �� ���� �Ǵ� ����..

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return list;
	}
	
	
}
