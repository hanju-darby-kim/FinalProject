package com.test.spring.dto;
/**
 * 수강생 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class StudentDTO {
	private String seq; //시퀀스
	private String pf; // 합격여부
	private String accountNumber; //계좌번호
	private String regDate; // 등록일
	private String photo; //사진
	private String militaryServiceStart; // 복무 시작일
	private String militaryServiceEnd; // 복무 종료일
	private String mssSeq;  // 병역 사항 번호
	private String mstSeq; // 병역 군 번호 
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getPf() {
		return pf;
	}
	public void setPf(String pf) {
		this.pf = pf;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getMilitaryServiceStart() {
		return militaryServiceStart;
	}
	public void setMilitaryServiceStart(String militaryServiceStart) {
		this.militaryServiceStart = militaryServiceStart;
	}
	public String getMilitaryServiceEnd() {
		return militaryServiceEnd;
	}
	public void setMilitaryServiceEnd(String militaryServiceEnd) {
		this.militaryServiceEnd = militaryServiceEnd;
	}
	public String getMssSeq() {
		return mssSeq;
	}
	public void setMssSeq(String mssSeq) {
		this.mssSeq = mssSeq;
	}
	public String getMstSeq() {
		return mstSeq;
	}
	public void setMstSeq(String mstSeq) {
		this.mstSeq = mstSeq;
	}
	
	
	
}//StudentDTO
