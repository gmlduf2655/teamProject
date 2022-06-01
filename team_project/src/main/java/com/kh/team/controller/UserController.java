package com.kh.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	UserService userService;
	
	// 로그인 페이지 이동
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	
	// 회원가입 페이지 이동
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup() {
		return "user/signup";
	}
	
	// 네이버 로그인 페이지 이동
	@RequestMapping(value="/naver_login", method=RequestMethod.GET)
	public String naverLogin() {
		return "redirect:/";
	}
}
