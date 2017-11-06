package com.test.spring.dto;
/**
 * 입사지원 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class ApplyDTO {

	private String seq;
	private String fieldSeq;
	private String CVSeq;
	private String confirm;
	private String finalResult;
	private String regDate;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getFieldSeq() {
		return fieldSeq;
	}
	public void setFieldSeq(String fieldSeq) {
		this.fieldSeq = fieldSeq;
	}
	public String getCVSeq() {
		return CVSeq;
	}
	public void setCVSeq(String cVSeq) {
		CVSeq = cVSeq;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	public String getFinalResult() {
		return finalResult;
	}
	public void setFinalResult(String finalResult) {
		this.finalResult = finalResult;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
	
}
