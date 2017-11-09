package com.test.spring.teacher;

import org.springframework.stereotype.Repository;

import com.test.spring.dto.StudentDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class TeacherDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	
	
}
