package com.test.spring.dto;

public class TestScoreDTO {
	private String seq;
	private String testDate;
	private int score;
	private String stuByCurSeq;
	private String subSeq;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getTestDate() {
		return testDate;
	}
	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getStuByCurSeq() {
		return stuByCurSeq;
	}
	public void setStuByCurSeq(String stuByCurSeq) {
		this.stuByCurSeq = stuByCurSeq;
	}
	public String getSubSeq() {
		return subSeq;
	}
	public void setSubSeq(String subSeq) {
		this.subSeq = subSeq;
	}
}
