package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.EventService;
import com.kh.team.vo.EventVo;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	// 이벤트 게시글 목록
	@RequestMapping(value = "/event_list", method = RequestMethod.GET)
	public String eventList(Model model) {
		List<EventVo> eventList = eventService.list();
		model.addAttribute("eventList", eventList);
		return "/event/event_list";
	}
	
	// 이벤트 게시글 폼
	@RequestMapping(value = "/write_form", method = RequestMethod.GET)
	public String writeForm() {
		return "/event/write_form";
	}
	
	// 이벤트 게시글 작성
	@RequestMapping(value = "/write_run", method = RequestMethod.POST)
	public String writeRun(EventVo eventVo) {
		System.out.println("eventController, writeRun, eventVo:"+ eventVo);
		boolean result = eventService.insert(eventVo);
		System.out.println("result:"+result);
		return "redirect:/event/event_list";
	}

}
