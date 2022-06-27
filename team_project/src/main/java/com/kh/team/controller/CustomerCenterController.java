package com.kh.team.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.FaqService;
import com.kh.team.service.MessageService;
import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.util.MyFileUploader;
import com.kh.team.vo.FaqVo;
import com.kh.team.vo.MessageVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value="/customer")
public class CustomerCenterController {
	
	@Autowired
	private FaqService faqService;
	@Autowired
	private UserService userService;
	@Autowired
	private MessageService messageService;
	
	
	// FAQ 게시판 이동
	@RequestMapping(value="/faq_list", method=RequestMethod.GET)
	public String faqList(Model model,PagingDto pagingDto) {
		int count = faqService.getCountFAQList(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<FaqVo> faqList = faqService.getFAQList(pagingDto);

		model.addAttribute("faqList", faqList);
		return "customer/faq_list";
	}
	
	// 관리자(1:1) 문의 페이지 이동
	@RequestMapping(value="/admin_inquiry_form", method=RequestMethod.GET)
	public String adminInquiryForm() {
		return "customer/admin_inquiry_form";
	}	
	
	// 관리자(1:1) 문의 전송
	@RequestMapping(value="/admin_inquiry_run", method=RequestMethod.POST)
	public String writeRun(HttpSession session, MessageVo messageVo, RedirectAttributes redirectAttributes) {
		UserVo loginUserVo = (UserVo)session.getAttribute("loginUserVo");
		System.out.println("messageVo : " + messageVo);
		boolean result = messageService.addMessage(messageVo);
		// 쪽지가 추가되지 않았다면 파일을 저장한 디렉토리를 제거하고
		// 추가 되었다면 유저 포인트를 증가시키고 세션에 있는 유저 정보를 변경함
		if(!result) {
			MyFileUploader.deleteDirectory("/moverattach/message/" + messageVo.getMessageno());
		}
		redirectAttributes.addFlashAttribute("add_result", result + "");
		return "redirect:/";
	}}
