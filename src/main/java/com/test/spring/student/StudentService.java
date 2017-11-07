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
	public void attStudent() {
				
	}

	@Override
	public int attCheck(StudentDTO dto) {
		dao.attCheck(dto);
		return 0;
	}

}
