package com.test.spring.seulki;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.test.spring.dto.MenuCategoryDTO;
import com.test.spring.jaejun.IJJCurriService;

@Controller
public class OverController {
	@Autowired
	IJJCurriService service;
	MenuCategoryDTO menuCategory = new MenuCategoryDTO();
	
	/**
	 * 근무표 작성
	 * 관리자 > 메뉴 > 근무표 관리 > 근무 일지 체크
	 * 관리자가 -> 매니저의 근무를 정해주는 업무
	 * @return
	 */
	@RequestMapping(method = {RequestMethod.GET}, value="/admin/write.action")
	public String addOvernight(HttpServletRequest req) {
		
		menuCategory.setBigCategory("관리자 메뉴");
		menuCategory.setMiddleCategory("근무표 관리");
		menuCategory.setSmallCategory("근무 일지 체크");
		
		req.setAttribute("menuCategory", menuCategory);
		return "admin.managerschedule.write";
		
	}

	
	
}//OverController
