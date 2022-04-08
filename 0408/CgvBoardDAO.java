package com.mycgv.dao;

import java.util.ArrayList;

import com.mycgv.vo.CgvBoardVO;

public class CgvBoardDAO extends DBConn{
	/**
	 * �Խñ� ��� : insert
	 */
	public int insert(CgvBoardVO vo) {
		int result = 0;
		String sql = "insert into cgv_board values('b_'||sequ_cgv_board_bid.nextval,?,?,0,sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			
			result = pstmt.executeUpdate();
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/*
	 * select: �Խñ� ��ü ����Ʈ. ��ü�̱� ������ �Ķ���Ͱ� ����. �Ķ����,,��!
	 */
	
	public ArrayList<CgvBoardVO> select(){
		ArrayList<CgvBoardVO> list = new ArrayList<CgvBoardVO>();
		//String sql = "select bid, btitle, bhits, bdate from cgv_board order by bdate desc"; //�ֽų�¥���� ������������.(���Ű� ���� ����)
		String sql = " select rownum rno, bid,btitle, bhits, to_char(bdate,'yyyy/mm/dd') bdate " + 
				" from (select bid, btitle, bhits,bdate from cgv_board order by bdate desc)";//���� ���� ����!
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CgvBoardVO vo = new CgvBoardVO();
				vo.setRno(rs.getInt(1));
				vo.setBid(rs.getString(2));
				vo.setBtitle(rs.getString(3));
				vo.setBhits(rs.getInt(4));
				vo.setBdate(rs.getString(5));
				
				list.add(vo); //�� ���� ������ �� �߱�� �ϴµ� �÷� �׸� �ٸ� ���´�.
			}
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	
	//�Խñ� �� ����.
	//�� ������ �����ֱ� ���� �ϳ��� vo�� �ʿ���!
	public CgvBoardVO select(String bid) {//override�� �ƴ϶� overload! 
		CgvBoardVO vo = new CgvBoardVO();
		//String sql = "select bid,btitle,bcontent, bhits,bdate from cgv_board where bid = '" + bid +"'";
		String sql = "select bid,btitle,bcontent, bhits,bdate from cgv_board where bid =?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid);//?�κ�.
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) { //�� vo�� �ϳ��ۿ� ���ٰ� �ؼ� rs.next�ؼ� while�� ������ ������,,, ������ ���! ���ʿ� rs�ȿ� query ������ ����� �ִ°Ŵϱ� ���ϸ� ��� ���
				vo.setBid(rs.getString(1));
				vo.setBtitle(rs.getString(2));
				vo.setBcontent(rs.getString(3));
				vo.setBhits(rs.getInt(4));
				vo.setBdate(rs.getString(5));
			}
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return vo;
	}
	
	/*
	 * ��ȸ��
	 */
	public void updateHits(String bid) {
		//CgvBoardVO vo = new CgvBoardVO(); �� �ʿ����..�׷�����... ���� Ÿ���� ��� �׷��ٰ� �մϴ�.
		String sql = "update cgv_board set bhits=bhits+1 where bid=?"; //ȣ����
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid); //�Ķ���� ����
			pstmt.executeUpdate();	//���� ����.
			
			//close�� ���� ����.
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
	}
	
	/*
	 * �Խñ� ������Ʈ
	 */
	public int update(CgvBoardVO vo) {
		int result = 0;
		String sql = "update cgv_board set btitle=?, bcontent=? where bid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBid());			
			
			result = pstmt.executeUpdate();
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/*
	 * ����
	 */
	public int delete(String bid) {
		int result = 0;
		String sql = "delete from cgv_board where bid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid);
			
			result = pstmt.executeUpdate();
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}




