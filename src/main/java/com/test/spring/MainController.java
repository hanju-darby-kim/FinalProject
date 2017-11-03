package com.test.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@RequestMapping(method = {RequestMethod.GET}, value="/test.action")
	public String hello() {
		
		//JSP ViewResolver -> Tiles ViewResolver
		return "test";
	}
}
