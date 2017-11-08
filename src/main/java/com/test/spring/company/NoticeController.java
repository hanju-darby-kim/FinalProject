package com.test.spring.company;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.TestTypeDTO;


@Controller

public class NoticeController {
	
	@Autowired
	private INoticeService service;
	
	/**
	 * 기업 공고 등록
	 * @return
	 */
	@RequestMapping(method = {RequestMethod.GET}, value="/company/addnotice.action")
	public String addNotice(HttpSession session, HttpServletRequest req) {
		
		//인증티켓 중 기업의 seq 필요
		String seq = ((CertificationDTO)session.getAttribute("certification")).getSeq();
	
		//기업 설명 얻어오기
		String content = service.getContent(seq);
		
		//전형 종류 가져오기 
		List<TestTypeDTO> testlist = new ArrayList<TestTypeDTO>();
		testlist = service.getTestType();
		
		//hireType 얻어오기
		List<HireTypeDTO> hiretypelist = new ArrayList<HireTypeDTO>();
		hiretypelist = service.getHireType();
		
		//careerType 얻어오기
		List<CareerTypeDTO> careertypelist = new ArrayList<CareerTypeDTO>();
		careertypelist = service.getCareerType();
		
		req.setAttribute("content", content);
		req.setAttribute("testlist", testlist);
		req.setAttribute("hiretypelist", hiretypelist);
		req.setAttribute("careertypelist", careertypelist);
		
		return "company.notice.addnotice";
	}
}
