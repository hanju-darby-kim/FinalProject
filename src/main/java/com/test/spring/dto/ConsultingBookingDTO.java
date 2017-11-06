package com.test.spring.dto;

public class ConsultingBookingDTO {
	private String seq;
	private String applicant;
	private String crSeq;
	private String curTypeSeq;
	private String tel;
	private String email;
	private String comment;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getApplicant() {
		return applicant;
	}
	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}
	public String getCrSeq() {
		return crSeq;
	}
	public void setCrSeq(String crSeq) {
		this.crSeq = crSeq;
	}
	public String getCurTypeSeq() {
		return curTypeSeq;
	}
	public void setCurTypeSeq(String curTypeSeq) {
		this.curTypeSeq = curTypeSeq;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
