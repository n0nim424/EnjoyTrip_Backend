package com.ssafy.enjoytrip.region.model;

public class AttractionDescription {

	private int contentId;
	private String homepage;
	private String overview;
	private String telName;
	
	

	public AttractionDescription() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public AttractionDescription(int contentId) {
		super();
		this.contentId = contentId;
	}



	public AttractionDescription(int contentId, String homepage, String overview, String telName) {
		super();
		this.contentId = contentId;
		this.homepage = homepage;
		this.overview = overview;
		this.telName = telName;
	}

	public int getContentId() {
		return contentId;
	}

	public void setContentId(int contentId) {
		this.contentId = contentId;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getOverview() {
		return overview;
	}

	public void setOverview(String overview) {
		this.overview = overview;
	}

	public String getTelName() {
		return telName;
	}

	public void setTelName(String telName) {
		this.telName = telName;
	}

	@Override
	public String toString() {
		return "AttractionDescription [contentId=" + contentId + ", homepage=" + homepage + ", overview=" + overview
				+ "]";
	}

}
