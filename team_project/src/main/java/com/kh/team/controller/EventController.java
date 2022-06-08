package com.kh.team.controller;

import java.io.FileInputStream;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.util.EventFileUploader;
import com.kh.team.service.EventService;
import com.kh.team.service.WinnerService;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.WinnerVo;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@Autowired
	private WinnerService winnerService;
	
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
	public String writeRun(EventVo eventVo, RedirectAttributes rttr, MultipartFile file) throws Exception {
		System.out.println("eventController, writeRun, eventVo:"+ eventVo);
		
		System.out.println("eventController, writeRun, file:"+ file);
		String originalFilename = file.getOriginalFilename();
		System.out.println("originalFilename: "+ originalFilename);
		long size = file.getSize();
		System.out.println("size:" + size);
		
		byte[] fileData = file.getBytes();
		if(originalFilename != null) {
			String event_image = EventFileUploader.uploadFile("//192.168.0.60/boardattach", file.getOriginalFilename(), fileData);
			eventVo.setEvent_image(event_image);
		}
		
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
	
	// 이벤트 게시글 수정
	@RequestMapping(value = "/event_modify", method = RequestMethod.POST)
	public String eventModify(EventVo eventVo, int event_no, RedirectAttributes rttr) {
		System.out.println("EventController, eventModify, eventVo:" + eventVo);
		boolean result = eventService.modify(eventVo);
		rttr.addFlashAttribute("modify_result", result);
		return "redirect:/event/event_read?event_no=" + event_no;
	}
	
	// 이벤트 게시글 삭제
	@RequestMapping(value = "/event_delete", method = RequestMethod.GET)
	public String delete(int event_no, RedirectAttributes rttr) {
		boolean result = eventService.delete(event_no);
		rttr.addFlashAttribute("delete_result", result);
		return "redirect:/event/event_list";
	}
	
	// 이미지 보여주기
	@RequestMapping(value = "/displayImage", method = RequestMethod.GET)
	@ResponseBody
	public byte[] displayImage(String filename) throws Exception {
		FileInputStream fis;
		fis = new FileInputStream(filename);
		byte[] data = IOUtils.toByteArray(fis);
		fis.close();
		return data;
	}
	
	// 당첨자 발표 게시판 목록
	@RequestMapping(value = "/winner_info", method = RequestMethod.GET)
	public String winnerInfo(Model model) {
		List<WinnerVo> winnerList = winnerService.list();
		model.addAttribute("winnerList", winnerList);
		return "/event/winner_info";
	}
	
	// 당첨자 게시판 읽기
	@RequestMapping(value = "/winner_read", method = RequestMethod.GET)
	public String winnerRead(int winner_no, Model model) {
		WinnerVo winnerVo = winnerService.readContent(winner_no);
		model.addAttribute("winnerVo", winnerVo);
		return "/event/winner_read";
	}
	
	// 당첨자 게시판 글쓰기 폼 
	@RequestMapping(value = "/winner_write", method = RequestMethod.GET)
	public String winnerWrite() {
		return "/event/winner_writeForm";
	}
	
	// 당첨자 게시판 글쓰기
	@RequestMapping(value = "/winner_writeRun", method = RequestMethod.POST)
	public String winnerWriteRun(WinnerVo winnerVo, RedirectAttributes rttr) {
		System.out.println("BoardController, createRun, winnerVo:"+ winnerVo);
		boolean result = winnerService.insert(winnerVo);
		System.out.println("BoardController, createRun, result:"+ result);
		rttr.addFlashAttribute("insert_result", result);
		return "redirect:/event/winner_info";
	}
	
	// 당첨자 게시글 삭제 
	@RequestMapping(value = "/winner_delete", method = RequestMethod.GET)
	public String winnerDelete(int winner_no, RedirectAttributes rttr) {
		boolean result = winnerService.delete(winner_no);
		rttr.addFlashAttribute("delete_result", result);
		return "redirect:/event/winner_info";
	}
	
	// 당첨자 게시판 수정하기 폼
	@RequestMapping(value = "/winner_updateForm", method = RequestMethod.GET)
	public String winnerModifyForm(int winner_no, Model model) {
		WinnerVo winnerVo = winnerService.readContent(winner_no);
		model.addAttribute("winnerVo", winnerVo);
		return "/event/winner_updateForm";
	}
	
	// 당첨자 게시판 글 수정하기
	@RequestMapping(value = "/winner_modify", method = RequestMethod.POST)
	public String winnerModify(WinnerVo winnerVo, int winner_no, RedirectAttributes rttr) {
		System.out.println("EventController, eventModify, winnerVo:" + winnerVo);
		boolean result = winnerService.modify(winnerVo);
		rttr.addFlashAttribute("modify_result", result);
		return "redirect:/event/winner_read?winner_no=" + winner_no;
	}
}
