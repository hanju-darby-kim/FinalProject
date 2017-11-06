package com.test.spring.company;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class NoticeController {

	@RequestMapping(method = {RequestMethod.GET}, value="/addNotice.action")
	public String addNotice() {
		
		return "company.notice.addnotice";
	}
}
