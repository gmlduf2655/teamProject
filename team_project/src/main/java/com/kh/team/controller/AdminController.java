package com.kh.team.controller;

import java.util.List;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.EventService;
import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private EventService eventService;
	@Autowired
	private UserService userService;
	@Autowired
	private PointService pointService;

	@RequestMapping(value = "/manage", method = RequestMethod.GET)
	public String adminPage() {
		System.out.println("관리자페이지");
		return "admin/manage";
	}
	
	// 관리자 페이지 이벤트 관리 - 이벤트 목록
		@RequestMapping(value = "/event_admin_list", method = RequestMethod.GET)
		public String eventAdminList(Model model, PagingDto pagingDto) {
			pagingDto.setCount(eventService.getCount(pagingDto));
			pagingDto.setPage(pagingDto.getPage());
			List<EventVo> eventList = eventService.list(pagingDto);
			model.addAttribute("eventList", eventList);
			model.addAttribute("pagingDto", pagingDto);
			return "admin/event_admin_list";
		}
		
	// 유저 관리
	@RequestMapping(value="/user_list", method=RequestMethod.GET)
	public String userList(Model model) throws ParseException {
		List<UserVo> originUserList = userService.getOriginUserList();
		List<UserVo> snsUserList = userService.getSnsUserList();
		String str = snsUserList.toString();
		model.addAttribute("originUserList", originUserList);
		model.addAttribute("snsUserList", snsUserList);
		return "admin/user_list";
	}
	
	// 전체 유저 포인트 내역
	@RequestMapping(value="/total_point_list", method=RequestMethod.GET)
	public String totalPointList(Model model, PagingDto pagingDto) {
		int count = pointService.getCountPointList();
		pagingDto.setPage(pagingDto.getPage());
		List<PointVo> pointList = pointService.getPointList(pagingDto);
		for(PointVo pointVo : pointList) {
			String userid = userService.getUseridByUserno(pointVo.getUserno());
			pointVo.setUserid(userid);
		}
		pagingDto.setCount(count);
		model.addAttribute("pointList", pointList);
		model.addAttribute("pagingDto", pagingDto);
		return "admin/total_point_list";
	}
	
	// 포인트 코드 생성기
	@RequestMapping(value="/create_point_code", method=RequestMethod.GET)
	public String createPointCode(Model model, int page) {
		List<PointVo> pointCodeList = pointService.getPointCodeList();
		model.addAttribute("pointCodeList", pointCodeList);
		return "admin/create_point_code";
	}
}
