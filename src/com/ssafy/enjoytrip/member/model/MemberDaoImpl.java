package com.ssafy.enjoytrip.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssafy.enjoytrip.util.DBUtil;

public class MemberDaoImpl implements IMemberDao {

	DBUtil dbutil;
	
	public MemberDaoImpl() {
		dbutil = DBUtil.getInstance();
	}
	
	@Override
	public boolean registry(MembersDto dto) {
		
		StringBuilder sql=new StringBuilder();
		sql.append(" insert into members ( user_id, user_name, user_password, email, join_date) ")
		.append(" values(?,?,?,?,now()) ");
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		
		try {
			
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			
			int i=1;
			psmt.setString(i++, dto.getUser_id());
			psmt.setString(i++, dto.getUser_name());
			psmt.setString(i++, dto.getUser_password());
			psmt.setString(i++, dto.getEmail());
			count=psmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("registry exception :" + e);
		} finally {
			dbutil.close(psmt, conn);
		} 
		
		return count>0 ? true: false;
	}

	@Override
	public MembersDto login(MembersDto dto) {
		
		MembersDto login=null;
		StringBuilder sql=new StringBuilder();
		sql.append(" select user_id, user_name, email  ");
		sql.append(" from members where flag = 0 and user_id = ? and user_password = ? ");
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		try {
			
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			
			int i=1;
			psmt.setString(i++, dto.getUser_id());
			psmt.setString(i++, dto.getUser_password());
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int j=1;
				login=new MembersDto(
						rs.getString(j++), 
						rs.getString(j++), 
						"", 
						rs.getString(j++));
			}
			
		} catch (SQLException e) {
			System.out.println("login exception :" + e);
		} finally {
			dbutil.close(rs, psmt, conn);
		}
		
		return login;
		
	}

	@Override
	public MembersDto findid(String user_name) {
		
		MembersDto member=null;
		StringBuilder sql=new StringBuilder();
		sql.append(" select user_id, user_name ");
		sql.append(" from members where flag = 0 and user_name = ? ");
		
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		try {
			
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			
			psmt.setString(1, user_name);
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int j=1;
				member=new MembersDto(
						rs.getString(j++), 
						rs.getString(j++),
						"");
			}
			
		} catch (SQLException e) {
			System.out.println("login exception :" + e);
		} finally {
			dbutil.close(rs, psmt, conn);
		}
		
		return member;
	}

	@Override
	public MembersDto findpw(String user_name, String user_id) {
		MembersDto member=null;
		StringBuilder sql=new StringBuilder();
		sql.append(" select user_id, user_name, user_password ");
		sql.append(" from members where flag = 0 and user_name = ? and user_id = ? ");
		
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		try {
			
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			
			psmt.setString(1, user_name);
			psmt.setString(2, user_id);
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int j=1;
				member=new MembersDto(
						rs.getString(j++), 
						rs.getString(j++),
						rs.getString(j++));
			}
			
		} catch (SQLException e) {
			System.out.println("login exception :" + e);
		} finally {
			dbutil.close(rs, psmt, conn);
		}
		
		return member;
	}

	@Override
	public List<MembersDto> memberlist() {
		
		List<MembersDto> members=new ArrayList<>();
		StringBuilder sql=new StringBuilder();
		sql.append(" select user_id, user_name, email, join_date ");
		sql.append(" from members ");
		sql.append(" where flag = 0 ");
		sql.append(" order by join_date ");
		
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int j=1;
				MembersDto dto=new MembersDto(
						rs.getString(j++), 
						rs.getString(j++),
						"", 
						rs.getString(j++), 
						rs.getString(j++));
				members.add(dto);
			}
			
		} catch (SQLException e) {
			System.out.println("boardlist exception :"+e);
		} finally {
			dbutil.close(rs,psmt,conn);
		}
		
		return members;
	}

	@Override
	public MembersDto member(String user_id) {
		
		MembersDto member=null;
		StringBuilder sql=new StringBuilder();
		sql.append(" select user_id, user_name, user_password, email  ");
		sql.append(" from members where user_id = ? ");
		
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		try {
			
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			
			psmt.setString(1, user_id);
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int j=1;
				member=new MembersDto(
						rs.getString(j++), 
						rs.getString(j++), 
						rs.getString(j++), 
						rs.getString(j++));
			}
			
		} catch (SQLException e) {
			System.out.println("member exception :" + e);
		} finally {
			dbutil.close(rs, psmt, conn);
		}
		
		return member;
	}

	@Override
	public boolean update(MembersDto dto) {

		StringBuilder sql=new StringBuilder();
		sql.append(" update members set user_name = ?, user_password = ?, email = ? ")
		.append(" where user_id = ? ");
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		
		try {
			
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			
			int i=1;
			psmt.setString(i++, dto.getUser_name());
			psmt.setString(i++, dto.getUser_password());
			psmt.setString(i++, dto.getEmail());
			psmt.setString(i++, dto.getUser_id());
			count=psmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("registry exception :" + e);
		} finally {
			dbutil.close(psmt, conn);
		} 
		
		return count>0 ? true: false;
		
	}

	@Override
	public boolean delete(String user_id) {
		StringBuilder sql=new StringBuilder();
		sql.append(" update members set flag = 1 ")
		.append(" where user_id = ? ");
		
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		
		try {
			
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			
			psmt.setString(1, user_id);
			count=psmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("delete exception :" + e);
		} finally {
			dbutil.close(psmt, conn);
		} 
		
		return count>0 ? true: false;
	}

	@Override
	public List<MembersDto> searchlist(String option, String value) {
		
		List<MembersDto> members=new ArrayList<>();
		StringBuilder sql=new StringBuilder();
		
		sql.append(" select user_id, user_name, email, join_date ");
		sql.append(" from members where flag = 0 and ");
		if(option.equals("user_name")) {
			sql.append(" user_name like ? ");
		}
		else if(option.equals("user_id")) {
			sql.append(" user_id like ? ");
		}
		else if(option.equals("email")) {
			sql.append(" email like ? ");
		}
		sql.append(" order by join_date ");
		
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
				MembersDto dto=new MembersDto(
						rs.getString(j++), 
						rs.getString(j++),
						"", 
						rs.getString(j++), 
						rs.getString(j++));
				members.add(dto);
			}
			
		} catch (SQLException e) {
			System.out.println("search exception :"+e);
		} finally {
			dbutil.close(rs,psmt,conn);
		}
		
		return members;
	}

}
