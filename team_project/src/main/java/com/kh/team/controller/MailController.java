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

@Controller
@EnableAsync
@RequestMapping(value="/mail")
public class MailController {
	
	@Autowired
	MailService mailService;
	
	// 메일 보내기
	@RequestMapping(value="/send", method=RequestMethod.POST)
	@ResponseBody
	public String send(HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		int authCode = (int)(Math.random()*(900000)) + 1000000;
		mailService.sendMail("gmlduf2655@naver.com", "테스트 메일", "인증 번호 코드는 " + authCode + "입니다");
		return authCode + "";
	}
}
