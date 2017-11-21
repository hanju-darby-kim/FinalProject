package com.test.spring.dto;

import java.util.ArrayList;

/**
 * 기업공고 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class NoticeDTO {
	
	private String seq;
	private String companySeq;
	private String companyName;
	private String companyAddress;
	private String content;
	private String confirm;
	private String startDate;
	private String endDate;
	private String report;
	private String extra;
	
	private String startEndDate; //입력 받은 날짜 그대로(후에 시작일과 종료일 나누는 작업 필요)
	
	private ArrayList<FieldDTO> field;
	private ArrayList<TestByNoticeDTO> testByNotice;
	
	public ArrayList<FieldDTO> getField() {
		return field;
	}
	public void setField(ArrayList<FieldDTO> field) {
		this.field = field;
	}
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getStartEndDate() {
		return startEndDate;
	}
	public void setStartEndDate(String startEndDate) {
		this.startEndDate = startEndDate;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public ArrayList<TestByNoticeDTO> getTestByNotice() {
		return testByNotice;
	}
	public void setTestByNotice(ArrayList<TestByNoticeDTO> testByNotice) {
		this.testByNotice = testByNotice;
	}
	
	

	
	
}
