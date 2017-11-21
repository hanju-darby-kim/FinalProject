package com.test.spring.dto;
public class AtReasonDTO {
	private String seq;
	private String atSeq;
	private String content;
	private String tempdate;
	private String tempseq;
	private String temptype;
	
	public String getTempdate() {
		return tempdate;
	}
	public void setTempdate(String tempdate) {
		this.tempdate = tempdate;
	}
	public String getTempseq() {
		return tempseq;
	}
	public void setTempseq(String tempseq) {
		this.tempseq = tempseq;
	}
	public String getTemptype() {
		return temptype;
	}
	public void setTemptype(String temptype) {
		this.temptype = temptype;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getAtSeq() {
		return atSeq;
	}
	public void setAtSeq(String atSeq) {
		this.atSeq = atSeq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
