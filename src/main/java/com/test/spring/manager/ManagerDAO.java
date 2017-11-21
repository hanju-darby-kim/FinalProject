package com.test.spring.manager;

import org.springframework.stereotype.Repository;

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
		
		List<Integer> students = sql.selectList("manager.stuList", seq);
		
		for (int i=0;i<students.size();i++) {			
			sql.insert("manager.start", students.get(i));
		}
	}

	
}
