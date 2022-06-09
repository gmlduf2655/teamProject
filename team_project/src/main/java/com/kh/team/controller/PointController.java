package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.PointService;
import com.kh.team.vo.PointVo;

@Controller
@RequestMapping (value="/point")
public class PointController {
	@Autowired
	PointService pointService;
	
	@RequestMapping (value="/point_list", method=RequestMethod.GET)
	public String pointList(Model model, int userno, String userid) {
		List<PointVo> pointList = pointService.getPointListByUserno(userno); 
		System.out.println(pointList);
		//model.addAllAttributes(pointList);
		model.addAttribute("pointList", pointList);
		model.addAttribute("userid", userid);
		return "user/point_list";
	}
}
