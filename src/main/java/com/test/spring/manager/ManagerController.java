package com.test.spring.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.StudentDTO;

@Controller
public class ManagerController {

	@Autowired
	IManagerService service;
	
	@RequestMapping(method= {RequestMethod.GET}, value="/manager/attcheck.action")
	public String attCheck(HttpServletRequest req, HttpSession session, StudentDTO dto) {
		
		if (session.getAttribute("target").equals("manager")) {
			//매니저가 관리하는 학생 전체의 금일 출석 insert, 이미 완료했으면 관련 문자열 / 아직 안됐으면 성공관련 문자열 반환
			int seq = (Integer) req.getAttribute("seq");
			String result = service.attStart(seq);
			
			req.setAttribute("checkResult", result);
			return "main.manager";
			
		} else {
			return "main.error";//에러페이지로
		}	
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/manager/attendance.action")
	public String attendance(HttpServletRequest req, HttpSession session) {
		
		if (session.getAttribute("target").equals("manager")) {
			
			service.attManager();
			
			return "student.manager.attendance";		
			
		} else {
			return "main.error";			
		}
	}
}
