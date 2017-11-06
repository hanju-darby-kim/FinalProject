package com.test.spring.dto;
/**
 * 과정별 수강생 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class StuByCurDTO {

	private String seq;
	private String studenSeq;
	private String studentTypeSeq;
	private String attendStateSeq;
	private String curOpenSeq;
	private String hireStateTypeSeq;
	private String regDate;
	private String unEmployeedReason;
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
	public String getStudentTypeSeq() {
		return studentTypeSeq;
	}
	public void setStudentTypeSeq(String studentTypeSeq) {
		this.studentTypeSeq = studentTypeSeq;
	}
	public String getAttendStateSeq() {
		return attendStateSeq;
	}
	public void setAttendStateSeq(String attendStateSeq) {
		this.attendStateSeq = attendStateSeq;
	}
	public String getCurOpenSeq() {
		return curOpenSeq;
	}
	public void setCurOpenSeq(String curOpenSeq) {
		this.curOpenSeq = curOpenSeq;
	}
	public String getHireStateTypeSeq() {
		return hireStateTypeSeq;
	}
	public void setHireStateTypeSeq(String hireStateTypeSeq) {
		this.hireStateTypeSeq = hireStateTypeSeq;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getUnEmployeedReason() {
		return unEmployeedReason;
	}
	public void setUnEmployeedReason(String unEmployeedReason) {
		this.unEmployeedReason = unEmployeedReason;
	}
	
	
	
	
}//StuByCurDTO
