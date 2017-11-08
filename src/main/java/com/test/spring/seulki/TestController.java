package com.test.spring.seulki;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class TestController {	
	
	/**
	 * 테스트 해봅시다
	 * @return
	 */
	@RequestMapping(method = {RequestMethod.GET}, value="/admin/seulikitest.action")
	public String SubTest() {
		
		return "admin.managerschedule.seulikitest";
	}
	
}//TestController
