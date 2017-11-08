package com.test.spring.dto;
/**
 * 학력 카테고리 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class EducationTypeDTO {
	private String seq; 
	private String educationType;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getEducationType() {
		return educationType;
	}
	public void setEducationType(String educationType) {
		this.educationType = educationType;
	}
	
	
	
}
