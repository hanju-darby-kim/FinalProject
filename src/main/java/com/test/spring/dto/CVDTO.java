package com.test.spring.dto;
/**
 * 이력서 데이터 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class CVDTO {

	private String seq;
	private String stuByCurSeq;
	private String photo;
	private String tel;
	private String regDate;
	private String address;
	private String email;
	private String portfolioOrgName;
	private String portfolioName;
	
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPortfolioOrgName() {
		return portfolioOrgName;
	}
	public void setPortfolioOrgName(String portfolioOrgName) {
		this.portfolioOrgName = portfolioOrgName;
	}
	public String getPortfolioName() {
		return portfolioName;
	}
	public void setPortfolioName(String portfolioName) {
		this.portfolioName = portfolioName;
	}
	
	
	
}
