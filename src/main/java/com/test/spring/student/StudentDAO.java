package com.test.spring.student;

import org.springframework.stereotype.Repository;

import com.test.spring.dto.StudentAttendanceDTO;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class StudentDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int attCheck(int seq) {
		
		return sql.selectOne("student.checkInOut", seq);
	}

	public int checkVac(int seq) {
		
		return sql.selectOne("student.checkVac", seq);
	}

	public int stuVac(HashMap<String, String> param) {
		
		sql.insert("student.stuVac", param);
		return 0;
	}

	public List<StudentAttendanceDTO> attStudent(int seq) {
		
		return sql.selectList("student.attStudent", seq);
	}


}
