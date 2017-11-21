package com.test.spring.dto;
public class CurriculumDTO {
	private String seq;
	private String title;
	private String categoryseq;
	private int cost;
	private String capacity;
	private int time;
	private int timeperday;
	private String objective;
	private int day;
	private String category;
	
	
	
	public String getCategoryseq() {
		return categoryseq;
	}
	public void setCategoryseq(String categoryseq) {
		this.categoryseq = categoryseq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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

	public int getTimeperday() {
		return timeperday;
	}
	public void setTimeperday(int timeperday) {
		this.timeperday = timeperday;
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
