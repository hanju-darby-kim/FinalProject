package com.test.spring.main;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.MemberDTO;

@Repository
public class MainDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	/**
	 * 입력한 id와 pw에 맞는 회원이 몇명인지 알아내는 메소드
	 * @param loginMap
	 * @return int 회원 수
	 */
	public int loginok(HashMap<String, String> loginMap) {
		return sql.selectOne("main.loginok", loginMap);
	}

	/**
	 * 회원의 인증티켓을 얻어오는 메소드
	 * @param loginMap
	 * @return CertificationDTO 회원의 정보
	 */
	public CertificationDTO getCertification(HashMap<String, String> loginMap) {
		return sql.selectOne("main.getCertification", loginMap);
	}

	public boolean isStudent(String seq) {
		
		//로그인한 회원과 동일한 시퀀스가 학생 테이블에 몇개 있는지 
		int count = sql.selectOne("main.isStudent", seq);
		
		if(count != 0) {
			return true;
		} else {
			return false;
		}
		
	}

	public String getPf(String seq) {
		return sql.selectOne("main.getPf", seq);
	}

	public int register(MemberDTO dto) {
		// 회원등록
		return sql.insert("main.register", dto);
	}
	
}
