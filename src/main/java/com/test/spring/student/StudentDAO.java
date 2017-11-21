package com.test.spring.student;

import org.springframework.stereotype.Repository;

import com.test.spring.dto.AtTypeDTO;
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
		
		return sql.selectOne("student.loginCheck", seq);
	}

	public void attCheckIn(int seq) {
		
		sql.update("student.attCheckIn", seq);
	}
	
	public void attCheckOut(int seq) {

		sql.update("student.attCheckOut", seq); 
	}
	
	public int checkVac(int seq) {
		
		return sql.selectOne("student.checkVac", seq);
	}

	public int remainVac(int seq) {
		
		return sql.selectOne("student.remainVac", seq);
	}
	
	public List<AtTypeDTO> getType() {
		
		return sql.selectList("student.getType");
	}
	
	public int stuVac(HashMap<String, String> param) {
		
		sql.insert("student.stuVac", param);
		return 0;
	}

	public List<StudentAttendanceDTO> attStudent(int seq) {
		
		return sql.selectList("student.attStudent", seq);
	}
}
