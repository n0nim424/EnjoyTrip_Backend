package com.ssafy.enjoytrip.region.common;

public enum Content {

	ATTRACTION(12),
	CULTURAL_FACILITY(14),
	FESTIVAL(15),
	TOUR_COURSE(25),
	LEISURE(28),
	ACCOMMODATION(32),
	SHOPPING(38),
	RESTAURANT(39);
	
	
	private int contentTypeId;
	
	private Content(int contentTypeId) {
		this.contentTypeId = contentTypeId;
	}
	
	public int getContentTypeId() {
		return contentTypeId;
	}
}
