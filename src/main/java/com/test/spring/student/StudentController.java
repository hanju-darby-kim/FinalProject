package com.test.spring.student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.StudentDTO;
import com.test.spring.manager.ManagerController;

@Controller
public class StudentController {

	@Autowired
	IStudentService service;
	
	@RequestMapping(method= {RequestMethod.GET}, value="/student/attcheck.action")
	public String attCheck(HttpServletRequest req, HttpSession session, StudentDTO dto) {
		
		if (session.getAttribute("target").equals("student")) {
			//금일 출석 여부 체크
			int result = service.attCheck(dto);
			session.setMaxInactiveInterval(2*60*60);//세션 풀리는 시간 연장(2시간)
			
			if (result == 1) {//출석체크 성공
				req.setAttribute("checkResult", "출석처리가 완료되었습니다");
			} else if (result == 0) {//이미 출석, 퇴실처리
				req.setAttribute("checkResult", "퇴실처리가 완료되었습니다");
			} else {//오류
				req.setAttribute("checkResult", "출석처리에 오류가 발생했습니다");				
			}			
			return "main.student";
		
		} else {//에러페이지로
			req.setAttribute("errorMsg", "먼저 로그인을 해주시기 바랍니다");
			return "main.error";
		}	
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/student/attendance.action")
	public String attendance(HttpServletRequest req, HttpSession session) {
		
		if (session.getAttribute("target").equals("student")) {
			
			service.attStudent();
			
			
			return "student.attendance";		
			
		} else {			
			return "main.error";//에러페이지로
		}
	}
}
