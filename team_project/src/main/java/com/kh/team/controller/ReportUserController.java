package com.kh.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.ReportUserService;
import com.kh.team.vo.ReportUserVo;

@Controller
@RequestMapping(value="/report")
public class ReportUserController {
	@Autowired
	private ReportUserService reportUserService;
	
	// 유저 신고 페이지 이동
	@RequestMapping(value="/report_user_form", method=RequestMethod.GET)
	public String reportUserForm(String reported_user) {
		return "user/report_user_form";
	}
	
	// 유저 신고 내역 추가
	@RequestMapping(value="/report_user_run", method=RequestMethod.POST)
	public String reportUserRun(ReportUserVo reportUserVo, RedirectAttributes redirectAttributes) {
		System.out.println(reportUserVo);
		boolean result = reportUserService.addReportUser(reportUserVo);
		redirectAttributes.addFlashAttribute("report_result", result + "");
		return "redirect:/report/report_user_form";
	}
}
