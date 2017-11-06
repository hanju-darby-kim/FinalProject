package com.test.spring.dto;
public class CVCertificateDTO {
	private String seq;
	private String CVSeq;
	private String certificateSeq;

	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCVSeq() {
		return CVSeq;
	}
	public void setCVSeq(String cVSeq) {
		CVSeq = cVSeq;
	}
	public String getCertificateSeq() {
		return certificateSeq;
	}
	public void setCertificateSeq(String certificateSeq) {
		this.certificateSeq = certificateSeq;
	}
}
