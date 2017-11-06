package com.test.spring.dto;

public class ProjectDTO {

	
	private String seq;
	private String curOpenSeq;
	private String startDate;
	private String endDate;
	private String curSubjectSeq;
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCurOpenSeq() {
		return curOpenSeq;
	}
	public void setCurOpenSeq(String curOpenSeq) {
		this.curOpenSeq = curOpenSeq;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getCurSubjectSeq() {
		return curSubjectSeq;
	}
	public void setCurSubjectSeq(String curSubjectSeq) {
		this.curSubjectSeq = curSubjectSeq;
	}


}
