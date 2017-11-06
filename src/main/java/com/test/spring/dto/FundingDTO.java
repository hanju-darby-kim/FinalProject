package com.test.spring.dto;

public class FundingDTO {
	private String seq;
	private String stuByCurSeq;
	private String conDate;
	private String status;
	private int amount;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getStuByCurSeq() {
		return stuByCurSeq;
	}
	public void setStuByCurSeq(String stuByCurSeq) {
		this.stuByCurSeq = stuByCurSeq;
	}
	public String getConDate() {
		return conDate;
	}
	public void setConDate(String conDate) {
		this.conDate = conDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
}
