package com.ssafy.enjoytrip.region;

import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.ssafy.enjoytrip.region.common.Content;
import com.ssafy.enjoytrip.region.model.AttractionDescription;
import com.ssafy.enjoytrip.region.model.AttractionDetail;
import com.ssafy.enjoytrip.region.model.AttractionInfo;
import com.ssafy.enjoytrip.region.model.Sido;
import com.ssafy.enjoytrip.region.service.RegionService;
import com.ssafy.enjoytrip.region.service.RegionServiceImpl;

public class RegionTest {
	
	RegionService regionService = new RegionServiceImpl();
	
	
	@Test
	@DisplayName("지역 조회")
	void getSidoTest() {
		System.out.println(regionService.getSido());
	}
	
	@Test
	@DisplayName("시군구 조회")
	void getGugunTest() {
		StringBuilder sb = new StringBuilder();
		List<Sido> sidoes = regionService.getSido();
		for (Sido sido : sidoes) {
			sb.append(regionService.getSigungu(sido.getSidoCode())).append("\n");			
		}
		System.out.println(sb);
	}
	
	@Test
	@DisplayName("관광지 정보 조회")
	void getAttractionInfoTest() {
		StringBuilder sb = new StringBuilder();
		// 서울 - 강남구 숙박시설 조회
		int sidoCode = 1;
		int gugunCode = 1;
		List<AttractionInfo> result = regionService.getAttractionInfos(
				sidoCode, gugunCode, Content.ACCOMMODATION.getContentTypeId());
		
		for (AttractionInfo info : result) {
			sb.append(info).append("\n");
		}
		
		System.out.println(sb);
	}
	
	@Test
	@DisplayName("관광지 Description 조회")
	void getAttractionDescriptionTest() {
		// 서울, 강남구, 트리아 관광호텔
		final int contentId = 136249;
		AttractionDescription result = regionService.getAttractionDescription(contentId);
		
		System.out.println(result);
	}
	
	@Test
	@DisplayName("관광지 Detail 조회")
	void getAttractionDetailTest() {
		// 서울, 강남구, 트리아 관광호텔
		final int contentId = 136249;
		AttractionDetail result = regionService.getAttractionDetail(contentId);
		
		System.out.println(result);
	}
}
