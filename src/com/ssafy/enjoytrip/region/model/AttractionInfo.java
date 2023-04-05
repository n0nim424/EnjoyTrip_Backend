package com.ssafy.enjoytrip.region.model;

public class AttractionInfo {

	private int contentId;
	private int contentTypeId;
	private String title;
	private String addr1;
	private String addr2;
	private String zipcode;
	private String tel;
	private String first_image;
	private String first_image2;
	private int readCount;
	private double latitude;
	private double longitude;
	private String mLevel;

	// foreign key
	private int sidoCode;
	private int gugunCode;
	
	

	public AttractionInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	public AttractionInfo(int sidoCode, int gugunCode, int contentTypeId) {
		super();
		this.sidoCode = sidoCode;
		this.gugunCode = gugunCode;
		this.contentTypeId = contentTypeId;
	}



	public AttractionInfo(int contentId, int contentTypeId, String title, String addr1, String addr2, String zipcode,
			String tel, String first_image, String first_image2, int readCount, double latitude, double longitude,
			String mLevel, int sidoCode, int gugunCode) {
		super();
		this.contentId = contentId;
		this.contentTypeId = contentTypeId;
		this.title = title;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.zipcode = zipcode;
		this.tel = tel;
		this.first_image = first_image;
		this.first_image2 = first_image2;
		this.readCount = readCount;
		this.latitude = latitude;
		this.longitude = longitude;
		this.mLevel = mLevel;
		this.sidoCode = sidoCode;
		this.gugunCode = gugunCode;
	}

	public int getContentId() {
		return contentId;
	}

	public void setContentId(int contentId) {
		this.contentId = contentId;
	}

	public int getContentTypeId() {
		return contentTypeId;
	}

	public void setContentTypeId(int contentTypeId) {
		this.contentTypeId = contentTypeId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getFirst_image() {
		return first_image;
	}

	public void setFirst_image(String first_image) {
		this.first_image = first_image;
	}

	public String getFirst_image2() {
		return first_image2;
	}

	public void setFirst_image2(String first_image2) {
		this.first_image2 = first_image2;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public String getmLevel() {
		return mLevel;
	}

	public void setmLevel(String mLevel) {
		this.mLevel = mLevel;
	}

	public int getSidoCode() {
		return sidoCode;
	}

	public void setSidoCode(int sidoCode) {
		this.sidoCode = sidoCode;
	}

	public int getGugunCode() {
		return gugunCode;
	}

	public void setGugunCode(int gugunCode) {
		this.gugunCode = gugunCode;
	}

	@Override
	public String toString() {
		return "AttractionInfo [contentId=" + contentId + ", contentTypeId=" + contentTypeId + ", title=" + title
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", zipcode=" + zipcode + ", tel=" + tel + ", first_image="
				+ first_image + ", first_image2=" + first_image2 + ", readCount=" + readCount + ", latitude=" + latitude
				+ ", longitude=" + longitude + ", mLevel=" + mLevel + ", sidoCode=" + sidoCode + ", gugunCode="
				+ gugunCode + "]";
	}

}
