package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;

@Controller
@RequestMapping (value="/point")
public class PointController {
	@Autowired
	PointService pointService;
	@Autowired
	UserService UserService;
	
	// 포인트 목록 내역
	@RequestMapping (value="/point_list", method=RequestMethod.GET)
	public String pointList(Model model, int userno, int page, PagingDto pagingDto) {
		pagingDto.setPage(page);
		List<PointVo> pointList = pointService.getPointListByUserno(userno, pagingDto); 
		int count = pointList.size();
		pagingDto.setCount(count);
		System.out.println(pointList);
		model.addAttribute("pointList", pointList);
		model.addAttribute("count", count);
		return "mypage/point_list";
	}

	// 포인트 충전 페이지 이동
	@RequestMapping(value="/charge_point_form", method=RequestMethod.GET)
	public String chargePointForm(int userno) {
		return "mypage/charge_point_form";
	}
	
	// 포인트 충전
	@RequestMapping(value="/charge_point_run", method=RequestMethod.POST)
	public String chargePointRun(PointVo pointVo, RedirectAttributes redirectAttributes) {
		boolean result = pointService.addPoint(pointVo);
		redirectAttributes.addFlashAttribute("charge_result", result);
		return "redirect:/mypage/main?userno=" + pointVo.getUserno();
	}
}
