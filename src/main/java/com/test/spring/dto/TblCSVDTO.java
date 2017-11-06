package com.test.spring.dto;
/**
 * 자기소개서 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class TblCSVDTO {
	
	private String seq;
	private String cSeq;
	private String subject;
	private String content;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getcSeq() {
		return cSeq;
	}
	public void setcSeq(String cSeq) {
		this.cSeq = cSeq;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	

}
