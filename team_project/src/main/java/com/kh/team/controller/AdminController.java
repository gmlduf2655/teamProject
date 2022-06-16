package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.EventService;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.PagingDto;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private EventService eventService;

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
}
