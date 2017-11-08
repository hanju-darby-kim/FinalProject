package com.test.spring.jaejun;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.MenuCategoryDTO;

@Controller
public class JJCurriController {
	@Autowired
	IJJCurriService service;
	MenuCategoryDTO menuCategory = new MenuCategoryDTO();
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/curri/add.action")
	public String curriAdd(HttpServletRequest req){
		menuCategory.setBigCategory("관리자메뉴");
		menuCategory.setMiddleCategory("과정추가");
		menuCategory.setSmallCategory("");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "admin.curriculum.add";
	}
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/curri/list.action")
	public String curriList(HttpServletRequest req){
		menuCategory.setBigCategory("관리자메뉴");
		menuCategory.setMiddleCategory("과정목록");
		menuCategory.setSmallCategory("");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "admin.curriculum.list";
	}
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/subject/list.action")
	public String subjectList(HttpServletRequest req){
		menuCategory.setBigCategory("관리자메뉴");
		menuCategory.setMiddleCategory("과목목록");
		menuCategory.setSmallCategory("");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "admin.subject.add";
	}
}


