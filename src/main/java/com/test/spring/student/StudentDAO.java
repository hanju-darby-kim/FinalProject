package com.test.spring.student;

import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class StudentDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	
}
