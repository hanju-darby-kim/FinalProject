package com.test.spring.dto;

public class ProjectCommentDTO {

	private String seq;
	private String stuByCurSeq;
	private String tblProjectPosts;
	private String content;
	private String date;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getStuByCurSeq() {
		return stuByCurSeq;
	}
	public void setStuByCurSeq(String stuByCurSeq) {
		this.stuByCurSeq = stuByCurSeq;
	}
	public String getTblProjectPosts() {
		return tblProjectPosts;
	}
	public void setTblProjectPosts(String tblProjectPosts) {
		this.tblProjectPosts = tblProjectPosts;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
