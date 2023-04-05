package com.ssafy.enjoytrip.region.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssafy.enjoytrip.region.model.AttractionDescription;
import com.ssafy.enjoytrip.region.model.AttractionDetail;
import com.ssafy.enjoytrip.region.model.AttractionInfo;
import com.ssafy.enjoytrip.region.model.Gugun;
import com.ssafy.enjoytrip.region.model.Sido;
import com.ssafy.enjoytrip.util.DBUtil;

public class RegionDaoImpl implements RegionDao {
	
	DBUtil dbUtil = DBUtil.getInstance();

	@Override
	public List<Sido> getSido() {
		
		List<Sido> result = new ArrayList<Sido>();
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			conn = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append(" select * from sido ");
			psmt = conn.prepareStatement(sql.toString());
			
			ResultSet rs = psmt.executeQuery();
			
			while(rs.next()) {
				Sido sido = new Sido();
				sido.setSidoCode(rs.getInt(1));
				sido.setSidoName(rs.getString(2));
				result.add(sido);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public List<Gugun> getSigungu(int sidoCode) {
		List<Gugun> result = new ArrayList<Gugun>();
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			conn = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append(" select * from gugun ");
			sql.append(" where sido_code=? ");
			sql.append(" order by gugun_name ");
			psmt = conn.prepareStatement(sql.toString());
			psmt.setInt(1, sidoCode);
			
			ResultSet rs = psmt.executeQuery();
			
			while(rs.next()) {
				Gugun gugun = new Gugun(sidoCode);
				gugun.setGugunCode(rs.getInt(1));
				gugun.setGugunName(rs.getString(2));
				result.add(gugun);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public List<AttractionInfo> getAttractionInfos(int sidoCode, int gugunCode, int contentTypeId) {
		List<AttractionInfo> result = new ArrayList<AttractionInfo>();
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			conn = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append(" select * from attraction_info ");
			sql.append(" where sido_code=? and gugun_code=? and content_type_id=? ");
			sql.append(" order by content_id ");
			psmt = conn.prepareStatement(sql.toString());
			psmt.setInt(1, sidoCode);
			psmt.setInt(2, gugunCode);
			psmt.setInt(3, contentTypeId);
			
			ResultSet rs = psmt.executeQuery();
			
			while(rs.next()) {
				AttractionInfo attractionInfo = new AttractionInfo(sidoCode, gugunCode, contentTypeId);
				attractionInfo.setContentId(rs.getInt(1));	// PK
				attractionInfo.setTitle(rs.getString(3));
				attractionInfo.setAddr1(rs.getString(4));
				attractionInfo.setAddr2(rs.getString(5));
				attractionInfo.setZipcode(rs.getString(6));
				attractionInfo.setTel(rs.getString(7));
				attractionInfo.setFirst_image(rs.getString(8));
				attractionInfo.setFirst_image2(rs.getString(9));
				attractionInfo.setReadCount(rs.getInt(10));
				attractionInfo.setLatitude(rs.getDouble(13));
				attractionInfo.setLongitude(rs.getDouble(14));
				attractionInfo.setmLevel(rs.getString(15));
				result.add(attractionInfo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public AttractionDescription getAttractionDescription(int contentId) {
		
		AttractionDescription result = new AttractionDescription(contentId);
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			conn = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append(" select * from attraction_description ");
			sql.append(" where content_id=? ");
			psmt = conn.prepareStatement(sql.toString());
			psmt.setInt(1, contentId);
			
			ResultSet rs = psmt.executeQuery();
			
			while(rs.next()) {
				result.setHomepage(rs.getString(2));
				result.setOverview(rs.getString(3));
				result.setTelName(rs.getString(4));;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public AttractionDetail getAttractionDetail(int contentId) {
		
		AttractionDetail result = new AttractionDetail(contentId);
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			conn = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append(" select * from attraction_detail ");
			sql.append(" where content_id=? ");
			psmt = conn.prepareStatement(sql.toString());
			psmt.setInt(1, contentId);
			
			ResultSet rs = psmt.executeQuery();
			
			while(rs.next()) {
				result.setCat1(rs.getString(2));
				result.setCat2(rs.getString(3));
				result.setCat3(rs.getString(4));
				result.setCreatedTime(rs.getString(5));
				result.setModifiedTime(rs.getString(6));
				result.setBookTour(rs.getString(7));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
