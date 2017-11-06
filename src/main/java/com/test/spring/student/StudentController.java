package com.test.spring.student;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController {

	@Autowired
	IService service;
	
	@RequestMapping(method= {RequestMethod.GET}, value="/student/attendance.action")
	public String attendance(HttpServletRequest req) {
		
		
		return "";
	}
}
