package com.test.spring.main;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.MemberDTO;
import com.test.spring.dto.MenuCategoryDTO;

@Controller
public class MainController {

	@Autowired
	IMainService service;
	
	MenuCategoryDTO menuCategory = new MenuCategoryDTO();
	//이미지 헤더의 분류를 나타내주기위해 만든 DTO
	
	// 비회원, 회원 메인
	@RequestMapping(method = { RequestMethod.GET }, value = "/main.action")
	public String main(HttpServletRequest req) {

		req.setAttribute("logout", req.getAttribute("logout"));
		return "main.member";
	}

	// 매니저 메인
	@RequestMapping(method = { RequestMethod.GET }, value = "/manager/main.action")
	public String managermain() {
		return "main.manager";
	}

	// 학생 메인
	@RequestMapping(method = { RequestMethod.GET }, value = "/student/main.action")
	public String studentmain() {
		return "main.student";
	}

	// 관리자 메인
	@RequestMapping(method = { RequestMethod.GET }, value = "/admin/main.action")
	public String adminmain() {
		return "main.admin";
	}

	// 예제 블랭크 파일
	@RequestMapping(method = { RequestMethod.GET }, value = "/layout.action")
	public String layout() {
		return "layout.member";
	}

	@RequestMapping(method = { RequestMethod.GET }, value = "/login.action")
	public String login() {
		return "sign.login";
	}

	@RequestMapping(method = { RequestMethod.GET }, value = "/logout.action")
	public String logout(HttpSession session, HttpServletRequest req) {

		// session 값에 인증티켓이 있다면
		if (session.getAttribute("certification") != null) {
			session.invalidate(); // 지운다
			req.setAttribute("logout", true); // 로그아웃한거맞다
		} else {
			req.setAttribute("logout", false); // 로그아웃한거 아니다(새로고침)
		}

		return "forward:/main.action";
	}

	@RequestMapping(method = { RequestMethod.POST }, value = "/loginok.action")
	public String loginok(HttpServletRequest req, HttpSession session, String id, String pw, String target) {

		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("target", target);
		loginMap.put("id", id);
		loginMap.put("pw", pw);

		// 로그인 성공하면 인증티켓
		// target, seq, name, count가 넘어간다.
		CertificationDTO certification = service.loginok(loginMap);
		
		session.setAttribute("certification", certification);
		Object o = session.getAttribute("certification");
		CertificationDTO c = (CertificationDTO)session.getAttribute("certification");
		
		
		System.out.println("확인 : " + "main" + certification.getTarget());

		// 성공하면 메인으로 실패하면 로그인 페이지에 그대로 남기
		if (certification.getCount() != 0) { // 성공시
			return "main." + certification.getTarget(); // 타겟에 따라 다른 메인으로 접속
		} else { // 실패시
			req.setAttribute("login", false);
			return "sign.login";
		}

	}

	// 회원가입
	@RequestMapping(method = { RequestMethod.GET }, value = "/register.action")
	public String register(HttpServletRequest req) {
		return "sign.register";
	}

	// 회원가입
	@RequestMapping(method = { RequestMethod.POST }, value = "/registerok.action")
	public String registerok(HttpServletRequest req, MemberDTO dto) {
		
		int result = service.register(dto);
		
		req.setAttribute("result", result);
		
		return "sign.registerok";
	}

	// 회원가입 주소입력 팝업창
	@RequestMapping( value = "/jusoPopup.action")
	public String jusoPopup() {
		
		return "main/popup/jusoPopup";
	}


	// 센터소개 -> 개요
	@RequestMapping(method = { RequestMethod.GET }, value = "/center/geyo.action")
	public String centerGeyo(HttpServletRequest req) {
		menuCategory.setBigCategory("센터소개");
		menuCategory.setMiddleCategory("개요");
		menuCategory.setSmallCategory("없음");
		
		req.setAttribute("menuCategory", menuCategory);
		return "center.geyo.view";
	}
	
	// 센터소개 -> CEO컬럼
	@RequestMapping(method = { RequestMethod.GET }, value = "/center/column.action")
	public String centerColumn(HttpServletRequest req) {
		menuCategory.setBigCategory("센터소개");
		menuCategory.setMiddleCategory("CEO 컬럼");
		menuCategory.setSmallCategory("없음");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "center.column.view";
	}
	
	// 센터소개 -> 연혁
	@RequestMapping(method = { RequestMethod.GET }, value = "/center/history.action")
	public String centerHistory(HttpServletRequest req) {
		menuCategory.setBigCategory("센터소개");
		menuCategory.setMiddleCategory("연혁");
		menuCategory.setSmallCategory("없음");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "center.history.view";
	}
	
	// 센터소개 -> 시설및장비
	@RequestMapping(method = { RequestMethod.GET }, value = "/center/facility.action")
	public String centerFacility(HttpServletRequest req) {
		menuCategory.setBigCategory("센터소개");
		menuCategory.setMiddleCategory("시설 및 장비");
		menuCategory.setSmallCategory("없음");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "center.facility.view";
	}
	
	// 센터소개 -> 교수진소개
	@RequestMapping(method = { RequestMethod.GET }, value = "/center/teacher.action")
	public String centerTeacher(HttpServletRequest req) {
		menuCategory.setBigCategory("센터소개");
		menuCategory.setMiddleCategory("교수진 소개");
		menuCategory.setSmallCategory("없음");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "center.teacher.view";
	}
	
	// 센터소개 -> 입학안내
	@RequestMapping(method = { RequestMethod.GET }, value = "/center/joininfo.action")
	public String centerJoininfo(HttpServletRequest req) {
		menuCategory.setBigCategory("센터소개");
		menuCategory.setMiddleCategory("입학안내");
		menuCategory.setSmallCategory("없음");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "center.joininfo.view";
	}
	
	// 센터소개 -> 수상현황
	@RequestMapping(method = { RequestMethod.GET }, value = "/center/awards.action")
	public String centerAwards(HttpServletRequest req) {
		menuCategory.setBigCategory("센터소개");
		menuCategory.setMiddleCategory("수상현황");
		menuCategory.setSmallCategory("없음");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "center.awards.view";
	}
	
	// 센터소개 -> 찾아오시는길
	@RequestMapping(method = { RequestMethod.GET }, value = "/center/road.action")
	public String centerRoad(HttpServletRequest req) {
		menuCategory.setBigCategory("센터소개");
		menuCategory.setMiddleCategory("찾아오시는 길");
		menuCategory.setSmallCategory("없음");
		
		req.setAttribute("menuCategory", menuCategory);
		
		return "center.road.view";
	}

}
