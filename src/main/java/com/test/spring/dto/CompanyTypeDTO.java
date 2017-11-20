package com.test.spring.dto;
/**
 * 기업 형태를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class CompanyTypeDTO {

	private String seq;
	private String companyType;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCompanyType() {
		return companyType;
	}
	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}
	
	
}
