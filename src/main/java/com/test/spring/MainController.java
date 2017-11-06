package com.test.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	//비회원, 회원 메인
	@RequestMapping(method = {RequestMethod.GET}, value="/main.action")
	public String main() {
		return "main.member";
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
	
	@RequestMapping(method = {RequestMethod.GET}, value="/register.action")
	public String register() {
		return "sign.register";
	}
	
	@RequestMapping(method = {RequestMethod.POST}, value="/registerok.action")
	public String registerok() {
		return "sign.registerok";
	}
	
}
