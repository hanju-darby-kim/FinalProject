package com.test.spring.manager;

import org.springframework.stereotype.Repository;

import com.test.spring.dto.AtReasonDTO;
import com.test.spring.dto.CurListDTO;
import com.test.spring.dto.StuListDTO;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class ManagerDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	//매니저의 관리 학생들 출결 개시했는지 여부 확인
	public int attManagerCheck(int seq) {
		
		return sql.selectOne("manager.check", seq);
	}
	
	//매니저의 관리 학생들 출결 개시
	public void attStart(int seq) {
		
		List<Integer> students = sql.selectList("manager.attStart", seq);
		
		for (int i=0;i<students.size();i++) {			
			sql.insert("manager.start", students.get(i));
		}
	}

	public List<CurListDTO> curList(int seq) {

		return sql.selectList("manager.curList", seq);
	}

	public List<StuListDTO> stuList(int curriSeq) {
		
		return sql.selectList("manager.stuList", curriSeq);
	}

	public List<AtReasonDTO> reasonList(int seq) {
		
		List<String> names = new ArrayList<String>(); 
		List<AtReasonDTO> list = sql.selectList("manager.reasonList", seq);
		List<AtReasonDTO> vlist = new ArrayList<AtReasonDTO>();
		String temp = "";
		int value = 0;
		
		for (int i=0;i<list.size();i++) {
			AtReasonDTO dto = list.get(i);
			value = Integer.parseInt(dto.getTempseq());
			temp = sql.selectOne("manager.stuNames", value);
			dto.setAtSeq(temp);
			vlist.add(dto);
		}
		return vlist;
	}

	public AtReasonDTO getVac(int seq) {

		return sql.selectOne("manager.getVac", seq);
	}

	public int getA(int sseq) {
		
		return sql.selectOne("student.checkVac", sseq);
	}

	public int getB(int sseq) {
		
		return sql.selectOne("student.remainVac", sseq);
	}

	public void changeAtt(HashMap<String, String> param, int retype) {
		
		int target = sql.selectOne("manager.targetAtt", param);
		HashMap<String, Integer> result = new HashMap<String, Integer>();
		result.put("target", target);
		result.put("type", retype);
		sql.update("manager.changeAtt", result);
	}

	public void delReason(int resultSeq) {
		
		sql.delete("manager.delReason", resultSeq);		
	}

}
