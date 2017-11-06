package com.test.spring.main;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.CertificationDTO;

@Repository
public class MainDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public CertificationDTO loginok(HashMap<String, String> loginMap) {
		
		return sql.select("main.loginok", loginMap);
	}
	
}
