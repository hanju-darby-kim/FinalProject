package com.test.spring.dto;

public class FieldDTO {
	private String seq;
	private String noticeSeq;
	private String fieldName;
	private String fieldContent;
	private String hireType;
	private String location;
	
	private int salary;
	private String careerType;
	
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
	public String getHireType() {
		return hireType;
	}
	public void setHireType(String hireType) {
		this.hireType = hireType;
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
	public String getCareerType() {
		return careerType;
	}
	public void setCareerType(String careerType) {
		this.careerType = careerType;
	}
	
	public String getFieldContent() {
		return fieldContent;
	}
	public void setFieldContent(String fieldContent) {
		this.fieldContent = fieldContent;
	}

	
	@Override
	public String toString() {
		System.out.println(seq + " " + noticeSeq + " " + fieldName + " " + hireType + " " + location + " " + fieldContent + " " + salary + " " + careerType);
		return super.toString();
	}
}
