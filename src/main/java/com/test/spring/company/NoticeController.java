package com.test.spring.company;

import org.springframework.stereotype.Controller;


@Controller
public class NoticeController {

	public String addNotice() {
		
		return "company.notice.addnotice";
	}
}
