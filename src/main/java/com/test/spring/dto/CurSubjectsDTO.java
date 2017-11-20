package com.test.spring.dto;
public class CurSubjectsDTO {
	private String seq;
	private String curSeq;
	private String subSeq;
	private String name;
	private int days;
	private String curName;
	private String subName;
	
	public String getCurName() {
		return curName;
	}
	public void setCurName(String curName) {
		this.curName = curName;
	}
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCurSeq() {
		return curSeq;
	}
	public void setCurSeq(String curSeq) {
		this.curSeq = curSeq;
	}
	public String getSubSeq() {
		return subSeq;
	}
	public void setSubSeq(String subSeq) {
		this.subSeq = subSeq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
}
