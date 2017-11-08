package com.test.spring.dto;
/**
 * 기업공고 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class NoticeDTO {
	
	private String seq;
	private String companySeq;
	private String noticeContent;
	private String confirm;
	private String startDate;
	private String endDate;
	private String report;
	private String extra;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCompanySeq() {
		return companySeq;
	}
	public void setCompanySeq(String companySeq) {
		this.companySeq = companySeq;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getReport() {
		return report;
	}
	public void setReport(String report) {
		this.report = report;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}
	
	

	
	
}
