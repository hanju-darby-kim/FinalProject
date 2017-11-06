package com.test.spring.main;

import java.util.HashMap;

import com.test.spring.dto.CertificationDTO;

public interface IMainService {
	   
	CertificationDTO loginok(HashMap<String, String> loginMap);
	
}
