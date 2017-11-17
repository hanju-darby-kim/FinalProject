package com.test.spring.jaejun;

import java.util.HashMap;

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
		//System.out.println("포스트방식 접근");
		//System.out.println("categoryname: " + categoryname);
		
		int addCategoryresult = service.addCategory(categoryname);
		req.setAttribute("addCategoryresult", addCategoryresult);
		
		int lastseq = service.lastseqCategory();
		req.setAttribute("lastseq", lastseq);
		
		//System.out.println("result:" + result);
		return "admin/curriculum/categoryaddok";
	}
	
	/**
	 * 카테고리 수정
	 * @param req
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST}, value="/admin/curri/categoryeditok.action")
	public String categoryEditOk(HttpServletRequest req, String seq, String editcategoryname){
		//System.out.println("에이작스에서 건네받은 seq" + seq);
		//System.out.println("에이작스에서 건네받은 editcategoryname" + editcategoryname);
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("editcategoryname", editcategoryname);
		map.put("seq", seq);
		
		//System.out.println(map.get("seq"));
		//System.out.println(map.get("editcategoryname"));
		
		int editCategoryresult = service.editCategory(map);
		req.setAttribute("editCategoryresult", editCategoryresult);
		
		return "admin/curriculum/categoryeditok";
	}
	
	/**
	 * 카테고리 삭제
	 * @param req
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST}, value="/admin/curri/categorydelok.action")
	public String categoryDelOk(HttpServletRequest req, String delcategoryseq){
		//System.out.println("포스트방식 접근");
		//System.out.println("categoryseq: " + delcategoryseq);
		
		int delCategoryresult = service.delCategory(delcategoryseq);
		req.setAttribute("delCategoryresult", delCategoryresult);
		//System.out.println("delCategoryresult result:" + delCategoryresult);
		return "admin/curriculum/categorydelok";
	}
	
}


