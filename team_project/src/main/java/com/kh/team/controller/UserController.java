package com.kh.team.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.UserService;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	UserService userService;
	
	// 로그인 페이지 이동
	@RequestMapping(value="/login_form", method=RequestMethod.GET)
	public String loginForm() {
		return "user/login_form";
	}
	
	// 로그인
	@RequestMapping(value="/login_run", method=RequestMethod.POST)
	public String loginRun(String userid, String userpw, HttpSession session) {
		UserVo loginUserVo = userService.login(userid, userpw);
//		if(loginUserVo != null) {
//			session.setAttribute("loginUserVo", loginUserVo);
//		}
		return "redirect:/";
	}
	
	// 회원가입 페이지 이동
	@RequestMapping(value="/signup_form", method=RequestMethod.GET)
	public String signupForm() {
		return "user/signup_form";
	}
	
	// 회원가입
	@RequestMapping(value="/signup_run", method=RequestMethod.POST)
	public String signupRun(UserVo userVo, RedirectAttributes redirectAttributes) {
		System.out.println(userVo);
		boolean result = userService.signUp(userVo);
		redirectAttributes.addFlashAttribute("signup_result", result + "");
		return "redirect:/user/login_form";
	}	
	
	// 네이버 로그인 페이지 이동
	@RequestMapping(value="/naver_login", method=RequestMethod.GET)
	public String naverLogin() {
		return "redirect:/";
	}
	
}
