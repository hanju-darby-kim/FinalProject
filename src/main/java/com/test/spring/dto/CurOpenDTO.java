package com.test.spring.dto;
public class CurOpenDTO {
	private String seq;
	private String curSeq;
	private String startDate;
	private String endDate;
	private String insSeq;
	private String roomSeq;
	private String managerSeq;
	private int rating;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCurSeq() {
		return curSeq;
	}
	public void setCurSeq(String curSeq) {
		this.curSeq = curSeq;
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
	public String getInsSeq() {
		return insSeq;
	}
	public void setInsSeq(String insSeq) {
		this.insSeq = insSeq;
	}
	public String getRoomSeq() {
		return roomSeq;
	}
	public void setRoomSeq(String roomSeq) {
		this.roomSeq = roomSeq;
	}
	public String getManagerSeq() {
		return managerSeq;
	}
	public void setManagerSeq(String managerSeq) {
		this.managerSeq = managerSeq;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	} 
}
