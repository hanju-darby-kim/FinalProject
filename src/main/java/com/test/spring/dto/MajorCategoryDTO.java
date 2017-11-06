package com.test.spring.dto;
/**
 * 학과 카테고리를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class MajorCategoryDTO {
	
	private String seq;
	private String majorCategory;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getMajorCategory() {
		return majorCategory;
	}
	public void setMajorCategory(String majorCategory) {
		this.majorCategory = majorCategory;
	}
	
	

}//MajorCategoryDTO
