package com.kh.team.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		int count = pointService.getCountPointListByUserno(userno);
		pagingDto.setPage(page);
		List<PointVo> pointList = pointService.getPointListByUserno(userno, pagingDto); 
		pagingDto.setCount(count);
		System.out.println(pointList);
		model.addAttribute("pointList", pointList);
		model.addAttribute("pagingDto", pagingDto);
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
	
	// 포인트 코드 생성
	@RequestMapping(value="/create_point_code_run", method=RequestMethod.POST)
	public String createPointCodeRun(PointVo pointVo, RedirectAttributes redirectAttributes) {
		boolean result = pointService.addPointCode(pointVo);
		redirectAttributes.addFlashAttribute("add_result", result + "");
		return "redirect:/admin/create_point_code?page=1";
	}
	
	// 포인트 코드 수정
	@RequestMapping(value="/update_point_code", method=RequestMethod.POST)
	public String updatePointCode(PointVo pointVo, RedirectAttributes redirectAttributes) {
		boolean result = pointService.updatePointCode(pointVo);
		redirectAttributes.addFlashAttribute("update_result", result + "");
		return "redirect:/admin/create_point_code?page=1";		
	}
	
	// 포인트 코드 삭제
	@RequestMapping(value="/delete_point_code", method=RequestMethod.POST)
	public String deletePointCode(int point_code, RedirectAttributes redirectAttributes) {
		boolean result = pointService.deletePointCode(point_code);
		redirectAttributes.addFlashAttribute("delete_result", result + "");
		return "redirect:/admin/create_point_code?page=1";		
	}
	
	// 포인트 코드 다수 삭제
	@RequestMapping(value="/multi_delete_point_code", method=RequestMethod.POST)
	public String multiDeletePointCode(String sData, int page, String[] sendData, RedirectAttributes redirectAttributes) {
		List<Integer> pointCodes = new ArrayList<Integer>();
		for(String pointCode : sendData) {
			pointCodes.add(Integer.parseInt(pointCode));
		}
		boolean result = pointService.multiDeletePointCode(pointCodes);
		redirectAttributes.addFlashAttribute("delete_result", result + "");
		return "redirect:/admin/create_point_code?page=" + page;
	}
}
