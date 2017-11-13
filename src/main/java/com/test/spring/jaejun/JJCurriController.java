package com.test.spring.jaejun;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.CurTypeDTO;
import com.test.spring.dto.MenuCategoryDTO;

@Controller
public class JJCurriController {
	@Autowired
	IJJCurriService service;
	MenuCategoryDTO menuCategory = new MenuCategoryDTO();
	
	private JJCurriDAO dao;
	
	public JJCurriController() {
		this.dao = new JJCurriDAO();
	}
	
	
	/**
	 * 과정 추가 페이지
	 * @param req
	 * @return 
	 */
	@RequestMapping(method={RequestMethod.GET}, value="/admin/curri/add.action")
	public String curriAdd(HttpServletRequest req){
		menuCategory.setBigCategory("관리자메뉴");
		menuCategory.setMiddleCategory("과정추가");
		menuCategory.setSmallCategory("");
		req.setAttribute("menuCategory", menuCategory);

		List<CurTypeDTO> list = service.curType();
		//System.out.println(list.size());
		req.setAttribute("list", list);
		
		return "admin.curriculum.add";
	}
	
	/**
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST}, value="/admin/curri/addok.action")
	public String curriAddok(HttpServletRequest req){
//		menuCategory.setBigCategory("관리자메뉴");
//		menuCategory.setMiddleCategory("과정추가");
//		menuCategory.setSmallCategory("");
//		
//		req.setAttribute("menuCategory", menuCategory);

		return "admin.curriculum.addok";
	}
	
	
	/**
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping(method={RequestMethod.GET}, value="/admin/curri/list.action")
	public String curriList(HttpServletRequest req){
		menuCategory.setBigCategory("관리자메뉴");
		menuCategory.setMiddleCategory("과정목록");
		menuCategory.setSmallCategory("");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "admin.curriculum.list";
	}
	
	/**
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping(method={RequestMethod.GET}, value="/admin/subject/add.action")
	public String subjectAdd(HttpServletRequest req){
		menuCategory.setBigCategory("관리자메뉴");
		menuCategory.setMiddleCategory("과목추가");
		menuCategory.setSmallCategory("");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "admin.subject.add";
	}
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/subject/list.action")
	public String subjectList(HttpServletRequest req){
		menuCategory.setBigCategory("관리자메뉴");
		menuCategory.setMiddleCategory("과목목록");
		menuCategory.setSmallCategory("");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "admin.subject.list";
	}
	
	
	/**
	 * 과정 카테고리 추가
	 * @param req
	 * @return
	 */
	@RequestMapping(method={RequestMethod.GET}, value="/admin/curriculum/categoryadd.action")
	public String categoryAdd(HttpServletRequest req){
		List<CurTypeDTO> list = service.curType();
		//System.out.println(list.size());
		req.setAttribute("list", list);
		
		return "admin/curriculum/categoryadd";
	}
	
	
	
}


