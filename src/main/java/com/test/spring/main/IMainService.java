package com.test.spring.main;

import java.util.HashMap;

import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.MemberDTO;

public interface IMainService {
	   
	CertificationDTO loginok(HashMap<String, String> loginMap);

	int register(MemberDTO dto);
	
}
