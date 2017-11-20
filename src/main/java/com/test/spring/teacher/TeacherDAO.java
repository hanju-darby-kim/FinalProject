package com.test.spring.teacher;

import org.springframework.stereotype.Repository;

import com.test.spring.dto.CurSubjectsDTO;
import com.test.spring.dto.StudentDTO;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class TeacherDAO {
	
	@Autowired
	private SqlSessionTemplate sql;


	public String getOpenCurSeqByTSeq(HashMap<String, String> map) {

		return sql.selectOne("teacher.getOpenCurSeqByTSeq",map);
	}


	public List<CurSubjectsDTO> getCurSubjectsByCSeq(String curSeq) {
		// TODO Auto-generated method stub
		return sql.selectList("teacher.getCurSubjectsByCSeq", curSeq);
	}

	
	
}
