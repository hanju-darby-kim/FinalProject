package com.test.spring.company;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class NoticeController {

	/**
	 * 기업 공고 등록
	 * @return
	 */
	@RequestMapping(method = {RequestMethod.GET}, value="/company/addnotice.action")
	public String addNotice() {
		
		return "company.notice.addnotice";
	}
}
