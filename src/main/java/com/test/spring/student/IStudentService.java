package com.test.spring.student;

import com.test.spring.dto.StudentDTO;

public interface IStudentService {

	void attStudent();

	String attCheck(int seq);

	int checkVac(int seq);

}
