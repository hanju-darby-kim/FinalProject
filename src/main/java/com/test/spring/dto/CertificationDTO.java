package com.test.spring.dto;

/**
 * 인증ㅌ티켓
 * @author 
 *
 */
public class CertificationDTO {
	private String target; //계정 종류(member, student, company, manager, teacher, admin)
	private String seq; 		//번호
	private String name; 	//이름
	private int count; 		//로그인 아이디와 비번이 존재하는지
	private boolean isStudent; //학생인지(멤버랑 구분 위해)
	private String pf;	//학생이라면 탈락여부알려줌
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean getIsStudent() {
		return isStudent;
	}
	public void setIsStudent(boolean isStudent) {
		this.isStudent = isStudent;
	}
	public String getPf() {
		return pf;
	}
	public void setPf(String pf) {
		this.pf = pf;
	}
	
	@Override
	public String toString() {
		System.out.println(target + " " + seq + " " + name + " " + count + " " + isStudent + " " + pf);
		return "";
	}


}
