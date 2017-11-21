package com.test.spring.student;

import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.HashMap;
import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class StudentDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int attCheck(int seq) {
		
		int result = sql.selectOne("student.checkInOut", seq);
		System.out.println(result);
		return result;
	}

	public int checkVac(int seq) {
		
		return sql.selectOne("student.checkVac", seq);
	}


}
