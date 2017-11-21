package com.test.spring.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.StudentDTO;

@Service
public class ManagerService implements IManagerService {

	@Autowired
	private ManagerDAO dao;

	@Override
	public void attManager() {
		
		
	}
	
	@Override
	public String attStart(int seq) {
		
		int result = dao.attManagerCheck(seq);
		
		if (result != 0) {
			return "금일은 이미 출결개시를 했습니다";
		} else {			
			dao.attStart(seq);
			return "금일 출결개시를 시작했습니다";
		}
	}
	
}
