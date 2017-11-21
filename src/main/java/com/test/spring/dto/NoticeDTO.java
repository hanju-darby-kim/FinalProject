package com.test.spring.dto;

import java.util.ArrayList;
import java.util.List;

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
	private String regDate;
	
	private int applyCount;
	
	private String startEndDate; //입력 받은 날짜 그대로(후에 시작일과 종료일 나누는 작업 필요)
	
	private List<FieldDTO> field;
	private List<TestByNoticeDTO> testByNotice;
	
	public List<FieldDTO> getField() {
		return field;
	}
	public void setField(List<FieldDTO> field) {
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
	public List<TestByNoticeDTO> getTestByNotice() {
		return testByNotice;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public void setTestByNotice(List<TestByNoticeDTO> testByNotice) {
		this.testByNotice = testByNotice;
	}
	public int getApplyCount() {
		return applyCount;
	}
	public void setApplyCount(int applyCount) {
		this.applyCount = applyCount;
	}
	
	

	
	
}
