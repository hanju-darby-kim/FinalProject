package com.test.spring.jaejun;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JJCurriController {
	@Autowired
	IJJCurriService service;
	
	@RequestMapping(method={RequestMethod.GET}, value="/jaejun/add.action")
	public String add(){
		
		return "add.action";
		
	}
	
	
}
