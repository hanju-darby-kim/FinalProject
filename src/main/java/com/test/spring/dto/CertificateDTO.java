package com.test.spring.dto;

public class CertificateDTO {

	
	private String seq;
	private String studentSeq;
	private String certificateTypeSeq;
	private String getDate;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getStudentSeq() {
		return studentSeq;
	}
	public void setStudentSeq(String studentSeq) {
		this.studentSeq = studentSeq;
	}
	public String getCertificateTypeSeq() {
		return certificateTypeSeq;
	}
	public void setCertificateTypeSeq(String certificateTypeSeq) {
		this.certificateTypeSeq = certificateTypeSeq;
	}
	public String getGetDate() {
		return getDate;
	}
	public void setGetDate(String getDate) {
		this.getDate = getDate;
	}
	
}
