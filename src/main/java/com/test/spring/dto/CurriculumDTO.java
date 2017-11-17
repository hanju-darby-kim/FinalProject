package com.test.spring.dto;
public class CurriculumDTO {
	private String seq;
	private String title;
	private String curTypeSeq;
	private int cost;
	private String capacity;
	private int time;
	private int timePerDay;
	private String objective;
	private int day;
	private String curType;
	
	
	
	public String getCurType() {
		return curType;
	}
	public void setCurType(String curType) {
		this.curType = curType;
	}
	
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCurTypeSeq() {
		return curTypeSeq;
	}
	public void setCurTypeSeq(String curTypeSeq) {
		this.curTypeSeq = curTypeSeq;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getTimePerDay() {
		return timePerDay;
	}
	public void setTimePerDay(int timePerDay) {
		this.timePerDay = timePerDay;
	}
	public String getObjective() {
		return objective;
	}
	public void setObjective(String objective) {
		this.objective = objective;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
}
