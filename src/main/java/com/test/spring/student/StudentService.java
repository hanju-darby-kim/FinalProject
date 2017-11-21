package com.test.spring.student;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.StudentAttendanceDTO;
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
	public int checkVac(int seq) {
		
		return dao.checkVac(seq);
	}

	@Override
	public String stuVac(String seq, String date, String content) {
		
		String procDate = date.substring(6, 10) + "-" + date.substring(0, 2) + "-" + date.substring(3, 5);
		HashMap<String, String> param = new HashMap<String, String>();
		System.out.println(seq + "/" + date + "/" + content);
		param.put("seq", seq);
		param.put("content", content);
		param.put("tempdate", procDate);
		
		int result = dao.stuVac(param);
		if (result == 0) {
			return "휴가신청이 정상적으로 완료되었습니다";
		} else {
			return "오류가 발생했습니다. 다시 시도해 주세요";
		}
		
	}

	@Override
	public List<StudentAttendanceDTO> attStudent(int seq) {
		
		List<StudentAttendanceDTO> list = dao.attStudent(seq);
		return list;
	}



}
