package com.test.spring.dto;
public class AttendanceDTO {
	private String seq;
	private String sSeq;
	private String aSeq;
	private String day;
	private String startTime;
	private String endTime;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getsSeq() {
		return sSeq;
	}
	public void setsSeq(String sSeq) {
		this.sSeq = sSeq;
	}
	public String getaSeq() {
		return aSeq;
	}
	public void setaSeq(String aSeq) {
		this.aSeq = aSeq;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
}
