package com.test.spring.manager;

import org.springframework.stereotype.Repository;

import com.test.spring.dto.AtReasonDTO;
import com.test.spring.dto.CurListDTO;
import com.test.spring.dto.StuListDTO;
import com.test.spring.dto.StudentDTO;

import org.springframework.beans.factory.annotation.Autowired;

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

		return sql.selectList("manager.reasonList", seq);
		//seq는 managerSeq, 이를 이용해서 관리하는 학생들이 올린 공결처리서를 모두 가져오기(뷰 생성 필요)
	}

	
}
