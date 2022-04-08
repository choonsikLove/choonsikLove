package com.mycgv.dao;

import java.util.ArrayList;

import com.mycgv.vo.CgvBoardVO;

public class CgvBoardDAO extends DBConn{
	/**
	 * 게시글 등록 : insert
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
	 * select: 게시글 전체 리스트. 전체이기 때문에 파라미터가 없다. 파라미터,,아!
	 */
	
	public ArrayList<CgvBoardVO> select(){
		ArrayList<CgvBoardVO> list = new ArrayList<CgvBoardVO>();
		//String sql = "select bid, btitle, bhits, bdate from cgv_board order by bdate desc"; //최신날짜부터 내림차순으로.(과거가 작은 쪽임)
		String sql = " select rownum rno, bid,btitle, bhits, to_char(bdate,'yyyy/mm/dd') bdate " + 
				" from (select bid, btitle, bhits,bdate from cgv_board order by bdate desc)";//띄어쓰기 잊지 말기!
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
				
				list.add(vo); //안 쓰면 에러는 안 뜨기는 하는데 컬럼 항목 줄만 나온다.
			}
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	
	//게시글 상세 보기.
	//글 내용을 보여주기 위해 하나의 vo가 필요해!
	public CgvBoardVO select(String bid) {//override가 아니라 overload! 
		CgvBoardVO vo = new CgvBoardVO();
		//String sql = "select bid,btitle,bcontent, bhits,bdate from cgv_board where bid = '" + bid +"'";
		String sql = "select bid,btitle,bcontent, bhits,bdate from cgv_board where bid =?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid);//?부분.
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) { //그 vo가 하나밖에 없다고 해서 rs.next해서 while문 돌리지 않으면,,, 에러가 뜬다! 애초에 rs안에 query 실행한 결과를 넣는거니까 안하면 곤란 곤란
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
	 * 조회수
	 */
	public void updateHits(String bid) {
		//CgvBoardVO vo = new CgvBoardVO(); 는 필요없음..그렇구나... 리턴 타입이 없어서 그렇다고 합니다.
		String sql = "update cgv_board set bhits=bhits+1 where bid=?"; //호옹이
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid); //파라미터 매핑
			pstmt.executeUpdate();	//쿼리 실행.
			
			//close를 주지 않음.
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
	}
	
	/*
	 * 게시글 업데이트
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
	 * 삭제
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




