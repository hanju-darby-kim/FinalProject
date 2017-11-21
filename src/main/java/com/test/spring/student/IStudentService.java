package com.test.spring.student;

import java.util.List;

import com.test.spring.dto.AtTypeDTO;
import com.test.spring.dto.StudentAttendanceDTO;

public interface IStudentService {

	String attCheck(int seq);

	int checkVac(int seq);

	String stuVac(String seq, String date, String content, String type);

	List<StudentAttendanceDTO> attStudent(int seq);

	int remainVac(int seq);

	List<AtTypeDTO> getType();

}
