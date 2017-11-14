package com.test.spring.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.StudentDTO;

@Controller
public class ManagerController {

	@Autowired
	IManagerService service;
	
	@RequestMapping(method= {RequestMethod.GET}, value="/manager/attcheck.action")
	public String attCheck(HttpServletRequest req, HttpSession session, StudentDTO dto) {
		
		//매니저가 관리하는 학생 전체의 금일 출석 insert, 이미 완료했으면 관련 문자열 / 아직 안됐으면 성공관련 문자열 반환
		CertificationDTO certification = (CertificationDTO) session.getAttribute("certification");
		
		System.out.println(certification.getTarget());
		if (certification.getTarget().equals("manager")) {
			int seq = Integer.parseInt(certification.getSeq());
			String result = service.attStart(seq);
			//TODO count 반환값에 오류 있음, 수정 요망
			
			req.setAttribute("procMsg", result);
			return "main";
		} else {
			req.setAttribute("errorMsg", "로그인 후 다시 이용해 주십시오");
			return "main.error";
		}
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/manager/attendance.action")
	public String attendance(HttpServletRequest req, HttpSession session) {
		
		if (session.getAttribute("target").equals("manager")) {
			
			service.attManager();
			
			return "manager.attendance";		
			
		} else {
			return "main.error";			
		}
	}
}
