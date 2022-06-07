package com.kh.team.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.service.MailService;
import com.kh.team.service.UserService;
import com.kh.team.util.PasswordMaker;

@Controller
@EnableAsync
@RequestMapping(value="/mail")
public class MailController {
	
	@Autowired
	MailService mailService;
	
	@Autowired
	UserService userService;
	
	// 메일 보내기
	@RequestMapping(value="/send", method=RequestMethod.POST)
	@ResponseBody
	public String send(String email) throws IOException {
		System.out.println("보낸 이메일 : " + email);
		if(email != null && !email.equals("")) {
			int authCode = (int)(Math.random()*(900000)) + 100000;
			mailService.sendMail(email, "[Mover]인증 코드", "인증 번호 코드는<br><h1>" + authCode + "</h1>입니다");
			return authCode + "";
		}
		return "fail";
	}
	
	// 비밀번호 받기
	@RequestMapping(value="/get_password", method=RequestMethod.POST)
	@ResponseBody
	public boolean getPassword(String email) {
		String tempPwd = PasswordMaker.makeTempPwd();
		boolean result = userService.updateUserpwToTempPwd(email, tempPwd);
		if(result) {
			mailService.sendMail(email, "[Mover]임시 비밀번호", "임시비밀번호는<br><h1>" + tempPwd + "</h1>입니다");
		}
		return result;
	}
}
