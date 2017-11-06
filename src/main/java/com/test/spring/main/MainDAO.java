package com.test.spring.main;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class MainDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	
}
