package com.ssafy.enjoytrip.region.service;

import java.util.List;

import com.ssafy.enjoytrip.region.dao.RegionDao;
import com.ssafy.enjoytrip.region.dao.RegionDaoImpl;
import com.ssafy.enjoytrip.region.model.AttractionDescription;
import com.ssafy.enjoytrip.region.model.AttractionDetail;
import com.ssafy.enjoytrip.region.model.AttractionInfo;
import com.ssafy.enjoytrip.region.model.Gugun;
import com.ssafy.enjoytrip.region.model.Sido;

public class RegionServiceImpl implements RegionService {
	
	RegionDao regionDao;
	
	public RegionServiceImpl() {
		regionDao = new RegionDaoImpl();
	}

	@Override
	public List<Sido> getSido() {
		
		return regionDao.getSido();
	}

	@Override
	public List<Gugun> getSigungu(int sidoCode) {

		return regionDao.getSigungu(sidoCode);
	}

	@Override
	public List<AttractionInfo> getAttractionInfos(int sidoCode, int gugunCode, int contentTypeId) {

		return regionDao.getAttractionInfos(sidoCode, gugunCode, contentTypeId);
	}

	@Override
	public AttractionDescription getAttractionDescription(int contentId) {

		return regionDao.getAttractionDescription(contentId);
	}

	@Override
	public AttractionDetail getAttractionDetail(int contentId) {

		return regionDao.getAttractionDetail(contentId);
	}

}
