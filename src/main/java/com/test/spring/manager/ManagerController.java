package com.test.spring.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.AtReasonDTO;
import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.CurListDTO;
import com.test.spring.dto.StuListDTO;
import com.test.spring.dto.StudentDTO;

@Controller
public class ManagerController {

	@Autowired
	IManagerService service;
	
	@RequestMapping(method= {RequestMethod.GET}, value="/manager/attcheck.action")
	public String attCheck(HttpServletRequest req, HttpSession session) {
		
		//매니저가 관리하는 학생 전체의 금일 출석 insert, 이미 완료했으면 관련 문자열 / 아직 안됐으면 성공관련 문자열 반환
		CertificationDTO certification = (CertificationDTO) session.getAttribute("certification");
		
		if (certification.getTarget().equals("manager")) {
			int seq = Integer.parseInt(certification.getSeq());
			String result = service.attStart(seq);
			
			req.setAttribute("procMsg", result);
			return "forward:/main.action";
			
		} else {
			req.setAttribute("errorMsg", "로그인 후 다시 이용해 주십시오");
			return "sign.error";
		}
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/manager/attendance.action")
	public String attendance(HttpServletRequest req, HttpSession session) {
		
		CertificationDTO certification = (CertificationDTO) session.getAttribute("certification");
		
		if (certification.getTarget().equals("manager")) {
			
			int seq = Integer.parseInt(certification.getSeq());
			List<CurListDTO> bigList = service.curList(seq);
			req.setAttribute("bigList", bigList);
			
			return "manager.attendance";		
			
		} else {
			req.setAttribute("errorMsg", "로그인 후 다시 이용해 주십시오");
			return "sign.error";
		}
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/manager/attendanceStuList.action")
	public String attendanceList(HttpServletRequest req, HttpSession session) {
		
		CertificationDTO certification = (CertificationDTO) session.getAttribute("certification");
		
		if (certification.getTarget().equals("manager")) {
			
			int curriSeq = Integer.parseInt(req.getParameter("curriSeq"));
			List<StuListDTO> smallList = service.stuList(curriSeq);
			req.setAttribute("smallList", smallList);
			
			return "manager.attendance";
			
		} else {
			req.setAttribute("errorMsg", "로그인 후 다시 이용해 주십시오");
			return "sign.error";
		}
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/manager/manageAtt.action")
	public String manageAtt(HttpServletRequest req, HttpSession session) {
		
		CertificationDTO certification = (CertificationDTO) session.getAttribute("certification");
		
		if (certification.getTarget().equals("manager")) {
			
			int seq = Integer.parseInt(certification.getSeq());
			List<AtReasonDTO> list = service.reasonList(seq);
			
			return "manager.manageAtt";		
			
		} else {
			return "main.error";			
		}
	}
}
