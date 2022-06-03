package com.kh.team.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kh.team.service.UserService;
import com.kh.team.util.MyFileUploader;
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
	public String signupRun(UserVo userVo, RedirectAttributes redirectAttributes, MultipartFile file) throws IOException {
		String filename = file.getOriginalFilename();
		byte[] fileData = file.getBytes();
		System.out.println("filename : " + filename);
		System.out.println(!(filename.equals("")));
		if(filename != null && !(filename.equals("")) ) {
			String profileimage = MyFileUploader.fileUpload("moverattach", file.getOriginalFilename(), fileData);
			userVo.setProfile_image(profileimage);
		}
		boolean result = userService.signUp(userVo);
		redirectAttributes.addFlashAttribute("signup_result", result + "");
		return "redirect:/user/login_form";
	}	
	
	// 네이버 로그인 페이지 이동
	@RequestMapping(value="/naver_login", method=RequestMethod.GET)
	public String naverLogin() {
		return "user/naver_login";
	}
	
	// 회원가입시 아이디 중복 체크
	@RequestMapping(value="/userid_dupl_check", method=RequestMethod.POST)
	@ResponseBody
	public String useridDuplCheck(String userid){
		boolean result = userService.useridDuplCheck(userid);
		return result + "";
	}
	
	// 회원가입시 닉네임 중복 체크
	@RequestMapping(value="/nickname_dupl_check", method=RequestMethod.POST)
	@ResponseBody
	public String nicknameDuplCheck(String nickname){
		boolean result = userService.nicknameDuplCheck(nickname);
		return result + "";
	}
}
