package com.kh.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping(value = "/manage", method = RequestMethod.GET)
	public String adminPage() {
		System.out.println("관리자페이지");
		return "admin/manage";
	}
}
