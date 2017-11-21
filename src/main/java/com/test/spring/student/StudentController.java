package com.test.spring.student;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.StudentAttendanceDTO;

@Controller
public class StudentController {

	@Autowired
	IStudentService service;
	
	@RequestMapping(method= {RequestMethod.GET}, value="/student/attcheck.action")
	public String attCheck(HttpServletRequest req, HttpSession session) {
		
		CertificationDTO certification = (CertificationDTO) session.getAttribute("certification");
		
		if (certification.getTarget().equals("student")) {
			//금일 출석 여부 체크
			int seq = Integer.parseInt(certification.getSeq());
			String msg = service.attCheck(seq);
			if (!msg.equals("오류가 발생했습니다")) {
				session.setMaxInactiveInterval(2*60*60);//세션 풀리는 시간 연장(2시간)				
			}
			req.setAttribute("procMsg", msg);
			return "forward:/main.action";
		
		} else {//에러페이지로
			req.setAttribute("errorMsg", "로그인 후 다시 이용해 주십시오");
			return "sign.error";
		}	
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/student/attendance.action")
	public String attendance(HttpServletRequest req, HttpSession session) {
		
		CertificationDTO certification = (CertificationDTO) session.getAttribute("certification");
		
		if (certification.getTarget().equals("student")) {
			
			int seq = Integer.parseInt(certification.getSeq());
			System.out.println(seq);
			List<StudentAttendanceDTO> list = service.attStudent(seq);
			req.setAttribute("list", list);
			return "student.attendance";
			
		} else {//에러페이지로
			req.setAttribute("errorMsg", "로그인 후 다시 이용해 주십시오");
			return "sign.error";
		}
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/student/vacation.action")
	public String vacation(HttpServletRequest req, HttpSession session) {
		
		CertificationDTO certification = (CertificationDTO) session.getAttribute("certification");
		
		if (certification.getTarget().equals("student")) {
			
			//사용 휴가일수 체크
			int seq = Integer.parseInt(certification.getSeq());
			int result = service.checkVac(seq);
			req.setAttribute("checkVac", result);
			
			return "student.vacation";
			
		} else {//에러페이지로
			req.setAttribute("errorMsg", "로그인 후 다시 이용해 주십시오");
			return "sign.error";
		}
	}
	
	@RequestMapping(method= {RequestMethod.POST}, value="/student/vacationGo.action")
	public String vacationGo(HttpServletRequest req, HttpSession session) {
		
		CertificationDTO certification = (CertificationDTO) session.getAttribute("certification");
		
		String seq = certification.getSeq();
		String date = (String) req.getParameter("day");
		String content = (String) req.getParameter("content");
		
		String result = service.stuVac(seq, date, content);
		req.setAttribute("procMsg", result);
		System.out.println(result);
		
		return "main.action";
	}
}
