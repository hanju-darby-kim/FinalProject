package com.test.spring.teacher;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.CurSubjectsDTO;
import com.test.spring.dto.MemberDTO;
import com.test.spring.dto.MenuCategoryDTO;

@Controller
public class TeacherController {

	@Autowired
	ITeacherService service;
	
	MenuCategoryDTO menuCategory = new MenuCategoryDTO();
	//이미지 헤더의 분류를 나타내주기위해 만든 DTO
	
	// 센터소개 -> 개요
	@RequestMapping(method = { RequestMethod.GET }, value = "/teacher/project.action")
	public String projectManager(HttpServletRequest req, HttpSession session) {
		
		CertificationDTO cdto = (CertificationDTO)session.getAttribute("certification");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

		Calendar c1 = Calendar.getInstance();

		String strToday = sdf.format(c1.getTime());
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("nowdate", strToday);
		map.put("tseq",cdto.getSeq());
		
		CurSubjectsDTO csdto = service.getCurSubject(map);
		
		
		menuCategory.setBigCategory("강사메뉴");
		menuCategory.setMiddleCategory("프로젝트 관리");
		menuCategory.setSmallCategory("프로젝트");
		
		
		req.setAttribute("menuCategory", menuCategory);
		return "teacher.project.view";
	}
	

}
