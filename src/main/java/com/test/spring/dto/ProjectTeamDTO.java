package com.test.spring.dto;

public class ProjectTeamDTO {

	private String seq;
	private String projectSeq;
	private String teamName;
	private String subject;
	private String content;
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getProjectSeq() {
		return projectSeq;
	}
	public void setProjectSeq(String projectSeq) {
		this.projectSeq = projectSeq;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
