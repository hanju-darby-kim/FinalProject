package com.test.spring.jaejun;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JJAjaxController {
	@Autowired
	IJJCurriService service;
	
	/**
	 * 카테고리 추가
	 * @param req
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST}, value="/admin/curri/categoryaddok.action")
	public String categoryAddOk(HttpServletRequest req, String categoryname){
		System.out.println("포스트방식 접근");
		//System.out.println("categoryname: " + categoryname);
		
		int addCategoryresult = service.addCategory(categoryname);
		req.setAttribute("addCategoryresult", addCategoryresult);
		//System.out.println("result:" + result);
		return "admin/curriculum/categoryaddok";
	}
	
}


