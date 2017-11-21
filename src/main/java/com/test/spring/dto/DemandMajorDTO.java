package com.test.spring.dto;
/**
 * 지원분야 요구학과 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class DemandMajorDTO {

	private String seq;
	private String fieldSeq;
	private String majorCategorySeq;
	private String majorCategory;
	private String essential;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getFieldSeq() {
		return fieldSeq;
	}
	public void setFieldSeq(String fieldSeq) {
		this.fieldSeq = fieldSeq;
	}
	public String getMajorCategorySeq() {
		return majorCategorySeq;
	}
	public void setMajorCategorySeq(String majorCategorySeq) {
		this.majorCategorySeq = majorCategorySeq;
	}
	public String getEssential() {
		return essential;
	}
	public void setEssential(String essential) {
		this.essential = essential;
	}
	public String getMajorCategory() {
		return majorCategory;
	}
	public void setMajorCategory(String majorCategory) {
		this.majorCategory = majorCategory;
	}
	
	
	
}//DemandMajorDTO
