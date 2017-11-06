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
		
		CertificationDTO certification = new HashMap<String, String>();
		
		certification = dao.loginok(loginMap);
		
		return certification;
	}


}
