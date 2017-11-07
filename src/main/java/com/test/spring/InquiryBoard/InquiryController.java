package com.test.spring.InquiryBoard;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//문의 게시판
public class InquiryController {
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/center/road.action")
	public String centerRoad() {
		return "center.road.view";
	}


}
