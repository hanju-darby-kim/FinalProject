package com.test.spring.dto;

import java.util.List;

public class NoticeViewDTO {
	private String companyName;
	private String content;
	private String endDate;
	private String website;
	private String companyAddress;
	private String numberOfEmp;
	private String foundationDate;
	private String sales;
	private String companyType;
	private String industryType;
	
	private List<FieldDTO> field;
	private List<TestByNoticeDTO> testByNotice;
	
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	public String getNumberOfEmp() {
		return numberOfEmp;
	}
	public void setNumberOfEmp(String numberOfEmp) {
		this.numberOfEmp = numberOfEmp;
	}
	public String getFoundationDate() {
		return foundationDate;
	}
	public void setFoundationDate(String foundationDate) {
		this.foundationDate = foundationDate;
	}
	public String getSales() {
		return sales;
	}
	public void setSales(String sales) {
		this.sales = sales;
	}
	public String getCompanyType() {
		return companyType;
	}
	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}
	public String getIndustryType() {
		return industryType;
	}
	public void setIndustryType(String industryType) {
		this.industryType = industryType;
	}

	public List<FieldDTO> getField() {
		return field;
	}
	public void setField(List<FieldDTO> list) {
		this.field = list;
	}
	public List<TestByNoticeDTO> getTestByNotice() {
		return testByNotice;
	}
	public void setTestByNotice(List<TestByNoticeDTO> testByNotice) {
		this.testByNotice = testByNotice;
	}
}
