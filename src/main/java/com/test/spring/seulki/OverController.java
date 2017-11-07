package com.test.spring.seulki;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OverController {
	
	/**
	 * 근무표 작성
	 * 관리자가 -> 매니저의 근무를 정해주는 업무
	 * @return
	 */
	@RequestMapping(method = {RequestMethod.GET}, value="/admin/write.action")
	public String addOvernight() {
		
		return "admin.managerschedule.write";
	}

}//OverController
