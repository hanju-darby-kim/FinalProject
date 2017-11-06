package com.test.spring.hanjuCurriculum;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.CertificationDTO;

@Controller
public class CurController {

	ICurService service;
	
	//주소 팝업창
		@RequestMapping(method = {RequestMethod.GET}, value="/curProgramming.action")
		public String programmingList() {
			return "curriculum.programming";
	}
		@RequestMapping(method = {RequestMethod.GET}, value="/curDatabase.action")
		public String databaseList() {
			return "curriculum.database";
		}
		@RequestMapping(method = {RequestMethod.GET}, value="/curSmartphone.action")
		public String smartphoneList() {
			return "curriculum.smartphone";
		}

		
	
}
