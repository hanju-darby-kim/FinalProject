package com.test.spring.main;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.CertificationDTO;


@Service
public class MainService implements IMainService {

	@Autowired
	private MainDAO dao;
	
	public CertificationDTO loginok(HashMap<String, String> loginMap) {
		
		
		CertificationDTO certification = new CertificationDTO();

		//해당 id와 pw에 맞는 회원이 몇명인지
		int count = dao.loginok(loginMap);
		
		if(certification.getCount() != 0) { 
			//0이 아니라면(회원이 존재 한다면) 인증티켓 얻어오기
			certification = dao.getCertification(loginMap);
			
		} else { 
			//0이라면(회원이 존재하지 않는다면)
			certification.setCount(count);
		}
		
			
		
		
		return certification;
	}


}
