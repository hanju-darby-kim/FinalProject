package com.test.spring.hyunjin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.ConsulteeTypeDTO;
import com.test.spring.dto.ConsultingBookingDTO;
import com.test.spring.dto.CurTypeDTO;
import com.test.spring.dto.MenuCategoryDTO;


@Controller
public class ConsultController {

	@Autowired
	IConsultService service;
	
	MenuCategoryDTO menuCategory = new MenuCategoryDTO();
	//이미지 헤더의 분류를 나타내주기위해 만든 DTO
	
private ConsultDAO dao;
	
	public ConsultController() {
		this.dao = new ConsultDAO();
	}
	
	
	/**
	 * 과정 추가 페이지
	 * @param req
	 * @return 
	 */
	
	
	// 예약센터 -> 예약신청
	@RequestMapping(method = { RequestMethod.GET }, value = "/booking/consulting.action")
	public String consulting(HttpServletRequest req) {
		menuCategory.setBigCategory("예약센터");
		menuCategory.setMiddleCategory("예약신청");
		menuCategory.setSmallCategory("없음");
		
		
		req.setAttribute("menuCategory", menuCategory);
		
		List<ConsulteeTypeDTO> list = service.consulteeType();
		List<CurTypeDTO> list2 = service.curType();
		//System.out.println(list.size());
		req.setAttribute("list", list);
		req.setAttribute("list2", list2);
	
		
		return "booking.consulting.view";
	}
	
	//예약 추가
	@RequestMapping(method={RequestMethod.POST}, value="/booking/consultingOk.action")
	public String consultingOk(HttpServletRequest req, ConsultingBookingDTO dto){

		int result = service.booking(dto);
		
		req.setAttribute("result", result);	
		
		return "booking.consulting.addok";
	}

}
