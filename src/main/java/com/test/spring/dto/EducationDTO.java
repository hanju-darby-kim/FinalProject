package com.test.spring.dto;
/**
 * 수강생 학력 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class EducationDTO {

	private String seq;
	private String studenSeq;
	private String educationTypeSeq;
	private String institution;
	private String graduateStateSeq;
	private String graduateDate;
	private String admissionsDate;
	private String gpa;
	private String standArtGpa;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getStudenSeq() {
		return studenSeq;
	}
	public void setStudenSeq(String studenSeq) {
		this.studenSeq = studenSeq;
	}
	public String getEducationTypeSeq() {
		return educationTypeSeq;
	}
	public void setEducationTypeSeq(String educationTypeSeq) {
		this.educationTypeSeq = educationTypeSeq;
	}
	public String getInstitution() {
		return institution;
	}
	public void setInstitution(String institution) {
		this.institution = institution;
	}
	public String getGraduateStateSeq() {
		return graduateStateSeq;
	}
	public void setGraduateStateSeq(String graduateStateSeq) {
		this.graduateStateSeq = graduateStateSeq;
	}
	public String getGraduateDate() {
		return graduateDate;
	}
	public void setGraduateDate(String graduateDate) {
		this.graduateDate = graduateDate;
	}
	public String getAdmissionsDate() {
		return admissionsDate;
	}
	public void setAdmissionsDate(String admissionsDate) {
		this.admissionsDate = admissionsDate;
	}
	public String getGpa() {
		return gpa;
	}
	public void setGpa(String gpa) {
		this.gpa = gpa;
	}
	public String getStandArtGpa() {
		return standArtGpa;
	}
	public void setStandArtGpa(String standArtGpa) {
		this.standArtGpa = standArtGpa;
	}
	
	
	
}//EducationDTO
