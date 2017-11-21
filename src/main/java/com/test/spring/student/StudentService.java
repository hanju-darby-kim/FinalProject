package com.test.spring.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.StudentDTO;
import com.test.spring.manager.ManagerDAO;

@Service
public class StudentService implements IStudentService {

	@Autowired
	private StudentDAO dao;
	
	@Override
	public String attCheck(int seq) {
		
		int result = dao.attCheck(seq);
		
		if (result == 0) {//출석체크 성공
			return "출석처리가 완료되었습니다";
		} else if (result == 1) {//이미 출석, 퇴실처리	
			return "퇴실처리가 완료되었습니다";
		} else {//오류
			return "오류가 발생했습니다";
		}
	}
	
	@Override
	public void attStudent() {
				
	}

	@Override
	public int checkVac(int seq) {
		
		return dao.checkVac(seq);
	}



}
