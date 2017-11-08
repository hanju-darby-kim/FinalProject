package com.test.spring.seulki;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.test.spring.dto.MenuCategoryDTO;

@Controller
public class OverController {

	MenuCategoryDTO menuCategory = new MenuCategoryDTO();
	
	/**
	 * 근무표 작성
	 * 관리자 > 메뉴 > 근무표 관리 > 근무 일지 작성
	 * 관리자가 근무 일지를 작성하는 화면
	 * @return
	 */
	@RequestMapping(method = {RequestMethod.GET}, value="/admin/write.action")
	public String addOvernight(HttpServletRequest req) {
		
		menuCategory.setBigCategory("관리자 메뉴");
		menuCategory.setMiddleCategory("근무표 관리");
		menuCategory.setSmallCategory("근무 일지 작성");
		
		req.setAttribute("menuCategory", menuCategory);
		/*<!-- company.notice.addnotice.addnoticecss -->  */
		return "admin.managerschedule.write";
		
	}
	
	/**
	 * 근무 일지 View
	 * 관리자 > 메뉴 > 근무표 관리 > 근무 일지 체크
	 * 관리자가 근무표 일지를 볼 수 있는 화면(풀캘린더 api 이용)
	 * @return
	 */
	@RequestMapping(method = {RequestMethod.GET}, value="/admin/overnightviewcss.action")
	public String viewOvernight(HttpServletRequest req) {
		
		menuCategory.setBigCategory("관리자 메뉴");
		menuCategory.setMiddleCategory("근무표 관리");
		menuCategory.setSmallCategory("근무 일지 체크");
		
		req.setAttribute("menuCategory", menuCategory);
	 	/*<!-- company.notice.addnotice.addnoticecss -->  */
		return "admin.managerschedule.overnightview.overnightviewcss";
		
	}
	
	

	
	
}//OverController
