package com.test.spring.main;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.MemberDTO;


@Controller
public class MainController {

	@Autowired
	IMainService service;
	
	//비회원, 회원 메인
	@RequestMapping(method = {RequestMethod.GET}, value="/main.action")
	public String main() {
		return "main.member";
	}
	
	//회원가입
	@RequestMapping(method = {RequestMethod.GET}, value="/register.action")
	public String register(HttpServletRequest req) {
		return "register";
	}
	
	//회원가입
	@RequestMapping(method = {RequestMethod.GET}, value="/registerok.action")
	public String registerok(HttpServletRequest req, MemberDTO dto) {
		
		
		return "registerok";
	}
	
	//매니저 메인
	@RequestMapping(method = {RequestMethod.GET}, value="/manager/main.action")
	public String managermain() {
		return "main.manager";
	}
	
	//학생 메인
	@RequestMapping(method = {RequestMethod.GET}, value="/student/main.action")
	public String studentmain() {
		return "main.student";
	}
	
	//관리자 메인
	@RequestMapping(method = {RequestMethod.GET}, value="/admin/main.action")
	public String adminmain() {
		return "main.manager";
	}
	
	//예제 블랭크 파일
	@RequestMapping(method = {RequestMethod.GET}, value="/layout.action")
	public String layout() {
		return "layout.member";
	}
	

	@RequestMapping(method = {RequestMethod.GET}, value="/login.action")
	public String login() {
		return "sign.login";
	}
	
	@RequestMapping(method = {RequestMethod.POST}, value="/loginok.action")
	public String loginok(HttpServletRequest req, HttpSession session, String id, String pw, String target) {
		
		
		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("target", target);
		loginMap.put("id", id);
		loginMap.put("pw", pw);
		
		//인증티켓
		//target, seq, name, count가 넘어간
		CertificationDTO certification = service.loginok(loginMap);
		
		//성공하면 메인으로 실패하면 로그인 페이지에 그대로 남기
		session.setAttribute("certification", certification);
		
		if (certification.getCount() != 0) { //성공시
			return "main.member";
		} else { //실패시
			return "sign.login";
		}
		
		
	}
	
	@RequestMapping(method = {RequestMethod.GET}, value="/register.action")
	public String register() {
		return "sign.register";
	}
	
	@RequestMapping(method = {RequestMethod.POST}, value="/registerok.action")
	public String registerok() {
		return "sign.registerok";
	}
	
}
