package com.test.spring.company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.CertificationDTO;


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
		
		String seq = ((CertificationDTO)session.getAttribute("certification")).getSeq();
	
		String content = service.getContent(seq);
		req.setAttribute("content", content);
		
		return "company.notice.addnotice";
	}
}
