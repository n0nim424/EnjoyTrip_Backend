package com.ssafy.enjoytrip.board.model;

public class BoardDto {
	private int article_no;
	private String user_id;
	private String subject;
	private String content;
	private int hit;
	private String date;
	
	public BoardDto() {
		super();
	}

	public BoardDto(int article_no, String user_id, String subject, String content, int hit, String date) {
		super();
		this.article_no = article_no;
		this.user_id = user_id;
		this.subject = subject;
		this.content = content;
		this.hit = hit;
		this.date = date;
	}

	public BoardDto(String user_id, String subject, String content) {
		super();
		this.user_id = user_id;
		this.subject = subject;
		this.content = content;
	}

	public BoardDto(int article_no, String subject, String content) {
		super();
		this.article_no = article_no;
		this.subject = subject;
		this.content = content;
	}

	public int getArticle_no() {
		return article_no;
	}

	public void setArticle_no(int article_no) {
		this.article_no = article_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
	
}
