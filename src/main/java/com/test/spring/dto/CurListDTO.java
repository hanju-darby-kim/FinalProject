package com.test.spring.dto;

public class CurListDTO {

	private String curriSeq; 
	private String title;
	private String startDate;
	private String endDate;
	private String managerSeq;
	private String manager;
	private String teacherSeq;
	private String teacher; 
	private String room;
	
	public String getCurriSeq() {
		return curriSeq;
	}
	public void setCurriSeq(String curriSeq) {
		this.curriSeq = curriSeq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getManagerSeq() {
		return managerSeq;
	}
	public void setManagerSeq(String managerSeq) {
		this.managerSeq = managerSeq;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getTeacherSeq() {
		return teacherSeq;
	}
	public void setTeacherSeq(String teacherSeq) {
		this.teacherSeq = teacherSeq;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
}
