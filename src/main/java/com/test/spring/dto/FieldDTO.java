package com.test.spring.dto;

import java.util.ArrayList;

public class FieldDTO {
	private String seq;
	private String noticeSeq;
	private String fieldName;
	private String content;
	private String hireTypeSeq;
	private String areaTypeSeq;
	private int salary;
	private String careerTypeSeq;
	
	private DemandEducationDTO demandEducation;
	private ArrayList<DemandCertificateDTO> demandCertificate;
	private ArrayList<DemandLangTestDTO﻿> demandLangTest;
	private ArrayList<DemandMajorDTO> demandMajor;
	
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
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getAreaTypeSeq() {
		return areaTypeSeq;
	}
	public void setAreaTypeSeq(String areaTypeSeq) {
		this.areaTypeSeq = areaTypeSeq;
	}
	
	public DemandEducationDTO getDemandEducation() {
		return demandEducation;
	}
	public void setDemandEducation(DemandEducationDTO demandEducation) {
		this.demandEducation = demandEducation;
	}
	public ArrayList<DemandCertificateDTO> getDemandCertificate() {
		return demandCertificate;
	}
	public void setDemandCertificate(ArrayList<DemandCertificateDTO> demandCertificate) {
		this.demandCertificate = demandCertificate;
	}
	public ArrayList<DemandLangTestDTO﻿> getDemandLangTest() {
		return demandLangTest;
	}
	public void setDemandLangTest(ArrayList<DemandLangTestDTO﻿> demandLangTest) {
		this.demandLangTest = demandLangTest;
	}
	public ArrayList<DemandMajorDTO> getDemandMajor() {
		return demandMajor;
	}
	public void setDemandMajor(ArrayList<DemandMajorDTO> demandMajor) {
		this.demandMajor = demandMajor;
	}
	
	@Override
	public String toString() {
		System.out.println(seq + " " + noticeSeq + " " + fieldName + " " + hireTypeSeq + " " + areaTypeSeq + " " + content + " " + salary + " " + careerTypeSeq);
		return super.toString();
	}
}
