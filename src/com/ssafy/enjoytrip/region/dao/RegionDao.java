package com.ssafy.enjoytrip.region.dao;

import java.util.List;

import com.ssafy.enjoytrip.region.model.AttractionDescription;
import com.ssafy.enjoytrip.region.model.AttractionDetail;
import com.ssafy.enjoytrip.region.model.AttractionInfo;
import com.ssafy.enjoytrip.region.model.Gugun;
import com.ssafy.enjoytrip.region.model.Sido;

public interface RegionDao {

	List<Sido> getSido();
	List<Gugun> getSigungu(int sidoCode);
	List<AttractionInfo> getAttractionInfos(int sidoCode, int gugunCode, int contentTypeId);
	AttractionDescription getAttractionDescription(int contentId); 
	AttractionDetail getAttractionDetail(int contentId);
}
