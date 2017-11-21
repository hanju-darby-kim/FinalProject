package com.test.spring.dto;

import java.util.List;

public class FieldDTO {
	private String seq;
	private String noticeSeq;
	private String fieldName;
	private String content;
	private String hireTypeSeq;
	private String hireType;
	private String areaTypeSeq;
	private String areaType;
	private String salary;
	private String careerTypeSeq;
	private String careerType;
	
	private DemandEducationDTO demandEducation;
	private List<DemandCertificateDTO> demandCertificate;
	private List<DemandLangTestDTO> demandLangTest;
	private List<DemandMajorDTO> demandMajor;
	
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
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
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
	public List<DemandCertificateDTO> getDemandCertificate() {
		return demandCertificate;
	}

	public List<DemandLangTestDTO> getDemandLangTest() {
		return demandLangTest;
	}

	public List<DemandMajorDTO> getDemandMajor() {
		return demandMajor;
	}
	
	public String getHireType() {
		return hireType;
	}
	public String getAreaType() {
		return areaType;
	}
	public void setAreaType(String areaType) {
		this.areaType = areaType;
	}
	public void setHireType(String hireType) {
		this.hireType = hireType;
	}

	public String getCareerType() {
		return careerType;
	}
	public void setCareerType(String careerType) {
		this.careerType = careerType;
	}
	public void setDemandCertificate(List<DemandCertificateDTO> demandCertificate) {
		this.demandCertificate = demandCertificate;
	}
	public void setDemandLangTest(List<DemandLangTestDTO> demandLangTest) {
		this.demandLangTest = demandLangTest;
	}
	public void setDemandMajor(List<DemandMajorDTO> demandMajor) {
		this.demandMajor = demandMajor;
	}
	@Override
	public String toString() {
		System.out.println(seq + " " + noticeSeq + " " + fieldName + " " + hireTypeSeq + " " + areaTypeSeq + " " + content + " " + salary + " " + careerTypeSeq);
		return super.toString();
	}
}
