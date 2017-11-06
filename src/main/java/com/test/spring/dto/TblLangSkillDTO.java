package com.test.spring.dto;
/**
 * 어학 수준 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class TblLangSkillDTO {

	private String seq;
	private String cvSeq;
	private String languageSeq;
	private String writing;
	private String reading;
	private String speaking;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCvSeq() {
		return cvSeq;
	}
	public void setCvSeq(String cvSeq) {
		this.cvSeq = cvSeq;
	}
	public String getLanguageSeq() {
		return languageSeq;
	}
	public void setLanguageSeq(String languageSeq) {
		this.languageSeq = languageSeq;
	}
	public String getWriting() {
		return writing;
	}
	public void setWriting(String writing) {
		this.writing = writing;
	}
	public String getReading() {
		return reading;
	}
	public void setReading(String reading) {
		this.reading = reading;
	}
	public String getSpeaking() {
		return speaking;
	}
	public void setSpeaking(String speaking) {
		this.speaking = speaking;
	}
	
	
	
}//TblLangSkillDTO
