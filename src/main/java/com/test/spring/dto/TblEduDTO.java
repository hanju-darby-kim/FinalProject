package com.test.spring.dto;
/**
 * 교육 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class TblEduDTO {
	
	private String seq;
	private String cvSeq;
	private String eduName;
	private String eduInstitution;
	private String eduContent;
	private String startDate;
	private String endDate;
	private String totalHours;
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
	public String getEduName() {
		return eduName;
	}
	public void setEduName(String eduName) {
		this.eduName = eduName;
	}
	public String getEduInstitution() {
		return eduInstitution;
	}
	public void setEduInstitution(String eduInstitution) {
		this.eduInstitution = eduInstitution;
	}
	public String getEduContent() {
		return eduContent;
	}
	public void setEduContent(String eduContent) {
		this.eduContent = eduContent;
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
	public String getTotalHours() {
		return totalHours;
	}
	public void setTotalHours(String totalHours) {
		this.totalHours = totalHours;
	}

	
	
}//TblEduDTO

