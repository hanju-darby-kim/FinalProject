package com.test.spring.dto;
/**
 * 졸업 상태 데이터를 담는 DTO 클래스
 * @author 전슬기
 *
 */
public class GraduateStateDTO {

	private String seq;
	private String graduateState;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getGraduateState() {
		return graduateState;
	}
	public void setGraduateState(String graduateState) {
		this.graduateState = graduateState;
	}
	
	
	
}//GraduateStateDTO
