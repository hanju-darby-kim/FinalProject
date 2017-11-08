package com.test.spring.company;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.CertificationDTO;
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
		
		System.out.println(testlist.size());
		
		req.setAttribute("testlist", testlist);
		req.setAttribute("content", content);
		
		return "company.notice.addnotice";
	}
}
