package com.myweb.dao;
import com.myweb.vo.MemberVO;

public class MemberDAO extends DBConn{
	
	//insert�۾��� ���� �Ѵ�.
	//insert: ȸ������
	
	//int ������ ���´�..�׷�����! insert, update, delete�� �׷���. result set�� ��������� �ʴ´ٰ� �ϳ߿�
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
		//�츮�� ����ϴ� ������ ����� �̤÷���. varchar2�� ''�� �ٴ´�.
		//������! ''�� ���� ������ �������� ��. ������ ������! >>�׷��� ������ prepared statement
				
		//sql�� ���ϰ� �Ế�ô�
		//PREPARED STATEMENT
		
		String sql2 = "insert into member values(?,?,?,?,sysdate,?)"; //Column�� ��� ?�� ���� �ȴ� ,,,, ��ġ �� ���̽� ����..
				
		//getStatement();
		getPreparedStatement(sql2);
		//�浹�ϱ� ������ �Ʒ��� sql�� ������!
		
		try {
			//pstmt�� �����ϴ� ������ �ֱ�.
			//?�� ���� �����͵��� �ֱ�.
			
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getMname());
			pstmt.setString(3, vo.getAddr());
			pstmt.setString(4, vo.getHp());
			pstmt.setString(5, vo.getPass());
			//?��! �߰��� �� sysdate�� �Ű� �Ƚᵵ ��
			
			//result = stmt.executeUpdate(sql);
			result = pstmt.executeUpdate();
			close();
			//�� �Ǹ� result ���� 1�� �ȴٰ� �ϳ׿� 
			//���� ���� �����°� �ƴϹǷ� array list�� �� ������ X
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
