package com.ssafy.enjoytrip.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssafy.enjoytrip.member.model.MembersDto;
import com.ssafy.enjoytrip.util.DBUtil;

public class BoardDaoImpl implements IBoardDao {

	DBUtil dbutil;
	
	public BoardDaoImpl() {
		dbutil = DBUtil.getInstance();
	}

	@Override
	public boolean write(BoardDto dto) {
		StringBuilder sql=new StringBuilder();
		sql.append(" insert into board(user_id,subject,content,hit,date) ");
		sql.append(" values(?,?,?,0,now()) ");
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			int i=1;
			psmt.setString(i++, dto.getUser_id());
			psmt.setString(i++, dto.getSubject());
			psmt.setString(i++, dto.getContent());
			count=psmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("boardWrite exception :"+e);
		}finally {
			dbutil.close(psmt,conn);
		}
		return count>0 ? true: false;
	}

	@Override
	public List<BoardDto> boardlist() {
		List<BoardDto> boards=new ArrayList<>();
		StringBuilder sql=new StringBuilder();
		sql.append(" select article_no, user_id, subject, content, ");
		sql.append(" hit, date from board ");
		sql.append(" order by article_no desc ");
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			rs=psmt.executeQuery();
			while(rs.next()) {
				int j=1;
				BoardDto dto=new BoardDto(
						rs.getInt(j++), 
						rs.getString(j++), 
						rs.getString(j++),
						rs.getString(j++), 
						rs.getInt(j++),  
						rs.getString(j++));
				boards.add(dto);
			}
			
		} catch (SQLException e) {
			System.out.println("boardlist exception :"+e);
		}finally {
			dbutil.close(rs,psmt,conn);
		}
		return boards;
	}

	@Override
	public BoardDto detail(int article_no) {
		
		StringBuilder sql=new StringBuilder();
		sql.append(" select article_no, user_id, subject, content, ");
		sql.append(" hit, date from board ");
		sql.append(" where article_no = ? ");
		
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		BoardDto board = null;
		
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			psmt.setInt(1, article_no);
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int j=1;
				board = new BoardDto(
						rs.getInt(j++), 
						rs.getString(j++), 
						rs.getString(j++),
						rs.getString(j++), 
						rs.getInt(j++),  
						rs.getString(j++));
			}
			
		} catch (SQLException e) {
			System.out.println("boardlist exception :"+e);
		}finally {
			dbutil.close(rs,psmt,conn);
		}
		return board;
	}
	
	@Override
	public boolean updateHit(int article_no) {
		StringBuilder sql=new StringBuilder();
		sql.append(" update board set hit=hit+1 ");
		sql.append(" where article_no=? ");
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			psmt.setInt(1, article_no);
			count = psmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("updateHit exception :"+e);
		}finally {
			dbutil.close(psmt,conn);
		}
		return count>0 ? true: false;
	}

	@Override
	public boolean delete(int article_no) {
		StringBuilder sql=new StringBuilder();
		sql.append(" delete from board ");
		sql.append(" where article_no=? ");
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			psmt.setInt(1, article_no);
			count = psmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("boardDelete exception :"+e);
		}finally {
			dbutil.close(psmt,conn);
		}
		return count>0 ? true: false;
	}
	
	@Override
	public boolean update(BoardDto dto) {
		StringBuilder sql=new StringBuilder();
		sql.append(" update board set subject=?, content=? ");
		sql.append(" where article_no=? ");
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			int i=1;
			psmt.setString(i++, dto.getSubject());
			psmt.setString(i++, dto.getContent());
			psmt.setInt(i++, dto.getArticle_no());
			count=psmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("boardUpdate exception :"+e);
		}finally {
			dbutil.close(psmt,conn);
		}
		return count>0 ? true: false;
	}

	@Override
	public List<BoardDto> searchlist(String option, String value) {
		List<BoardDto> boards=new ArrayList<>();
		StringBuilder sql=new StringBuilder();
		sql.append(" select article_no, user_id, subject, content, ");
		sql.append(" hit, date from board where ");
		if(option.equals("subject")) {
			sql.append(" subject like ? ");
		}
		else if(option.equals("user_id")) {
			sql.append(" user_id like ? ");
		}
		else if(option.equals("content")) {
			sql.append(" content like ? ");
		}
		sql.append(" order by article_no desc ");
		
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			psmt.setString(1, "%"+value+"%");
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int j=1;
				BoardDto dto=new BoardDto(
						rs.getInt(j++), 
						rs.getString(j++),
						rs.getString(j++),
						rs.getString(j++), 
						rs.getInt(j++), 
						rs.getString(j++));
				boards.add(dto);
			}
			
		} catch (SQLException e) {
			System.out.println("search exception :"+e);
		} finally {
			dbutil.close(rs,psmt,conn);
		}
		
		return boards;
	}

}
