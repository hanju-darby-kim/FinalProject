package com.test.spring.dto;
/**
 * 학과 데이터 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class MajorDTO {

	private String seq;
	private String major;
	private String educationSeq;
	private String majorCategorySeq;
	private String majorTypeSeq;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getEducationSeq() {
		return educationSeq;
	}
	public void setEducationSeq(String educationSeq) {
		this.educationSeq = educationSeq;
	}
	public String getMajorCategorySeq() {
		return majorCategorySeq;
	}
	public void setMajorCategorySeq(String majorCategorySeq) {
		this.majorCategorySeq = majorCategorySeq;
	}
	public String getMajorTypeSeq() {
		return majorTypeSeq;
	}
	public void setMajorTypeSeq(String majorTypeSeq) {
		this.majorTypeSeq = majorTypeSeq;
	}
	
	
	
}//MajorDTO
