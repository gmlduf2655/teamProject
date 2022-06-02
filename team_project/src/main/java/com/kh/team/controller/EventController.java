package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String writeRun(EventVo eventVo, RedirectAttributes rttr) {
		System.out.println("eventController, writeRun, eventVo:"+ eventVo);
		boolean result = eventService.insert(eventVo);
		System.out.println("result:"+result);
		rttr.addFlashAttribute("write_result", result);
		return "redirect:/event/event_list";
	}
	
	// 이벤트 게시글 읽기
	@RequestMapping(value = "/event_read", method = RequestMethod.GET)
	public String eventRead(int event_no, Model model) {
		EventVo eventVo = eventService.readContent(event_no);
		model.addAttribute("eventVo", eventVo);
		return "/event/event_read";
	}
	
	// 이벤트 게시글 삭제
	@RequestMapping(value = "/event_delete", method = RequestMethod.GET)
	public String delete(int event_no, RedirectAttributes rttr) {
		boolean result = eventService.delete(event_no);
		rttr.addFlashAttribute("delete_result", result);
		return "redirect:/event/event_list";
	}

}
