package com.test.spring.dto;
/**
 * 인턴대외활동 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class ExtraActivityDTO {

	private String seq;
	private String cvSeq;
	private String activitySeq;
	private String groupName;
	private String startDate;
	private String endDate;
	private String activityContent;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCvSeq() {
		return cvSeq;
	}
	public void setCvSeq(String cvSeq) {
		this.cvSeq = cvSeq;
	}
	public String getActivitySeq() {
		return activitySeq;
	}
	public void setActivitySeq(String activitySeq) {
		this.activitySeq = activitySeq;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
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
	public String getActivityContent() {
		return activityContent;
	}
	public void setActivityContent(String activityContent) {
		this.activityContent = activityContent;
	}

	
	
}
