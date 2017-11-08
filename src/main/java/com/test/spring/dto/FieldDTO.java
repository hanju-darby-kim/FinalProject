package com.test.spring.dto;

public class FieldDTO {
	private String seq;
	private String noticeSeq;
	private String fieldName;
	private String fieldContent;
	private String hireTypeSeq;
	private String location;
	private int salary;
	private String careerTypeSeq;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getNoticeSeq() {
		return noticeSeq;
	}
	public void setNoticeSeq(String noticeSeq) {
		this.noticeSeq = noticeSeq;
	}
	public String getFieldName() {
		return fieldName;
	}
	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	
	
	public String getFieldContent() {
		return fieldContent;
	}
	public void setFieldContent(String fieldContent) {
		this.fieldContent = fieldContent;
	}

	
	public String getHireTypeSeq() {
		return hireTypeSeq;
	}
	public void setHireTypeSeq(String hireTypeSeq) {
		this.hireTypeSeq = hireTypeSeq;
	}
	public String getCareerTypeSeq() {
		return careerTypeSeq;
	}
	public void setCareerTypeSeq(String careerTypeSeq) {
		this.careerTypeSeq = careerTypeSeq;
	}
	@Override
	public String toString() {
		System.out.println(seq + " " + noticeSeq + " " + fieldName + " " + hireTypeSeq + " " + location + " " + fieldContent + " " + salary + " " + careerTypeSeq);
		return super.toString();
	}
}
