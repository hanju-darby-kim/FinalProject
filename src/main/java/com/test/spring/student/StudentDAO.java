package com.test.spring.student;

import org.springframework.stereotype.Repository;

import com.test.spring.dto.StudentDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class StudentDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int attCheck(StudentDTO dto) {
		
		String result = sql.selectOne("student.loginCheck", dto);
		
		if (result.equals("")) {//로그인 되있지 않음
			
			int res = sql.update("student.checkIn");
					
			return 1;
		} else if (result.equals("")){//이미 로그인 -> 퇴실 처리
			
			int res = sql.update("student.checkOut");
			
			return 0;
		} else {//로그인 실패
			return -1;
		}
	}
	
	
}
