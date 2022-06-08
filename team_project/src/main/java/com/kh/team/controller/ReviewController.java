package com.kh.team.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.ReviewService;
import com.kh.team.vo.ReviewVo;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	// 게시글 목록
		@RequestMapping(value = "/review_list", method = RequestMethod.GET)
		public String eventList(Model model) {
			List<ReviewVo> reviewList = reviewService.list();
			model.addAttribute("reviewList", reviewList);
			return "/review/review_list";
		}
	// 게시글 작성 폼
		@RequestMapping(value = "/review_form", method = RequestMethod.GET)
		public String writeForm() {
			return "/review/review_form";
		}
		
	// 게시글 작성 
		@RequestMapping(value = "/review_writeRun", method = RequestMethod.POST)
		public String writerWriteRun(ReviewVo reviewVo){
			System.out.println("reviewVo:"+reviewVo);
			boolean result = reviewService.insert(reviewVo);
			System.out.println("ReviewController, writeRun, result:"+ result);
			return "redirect:/review/review_list";
		}
		
	// 게시글 읽기
		@RequestMapping(value = "/review_read", method = RequestMethod.GET)
		public String eventRead(int review_no, Model model) {
			ReviewVo reviewVo = reviewService.readContent(review_no);
			model.addAttribute("reviewVo", reviewVo);
			return "/review/review_read";
		}
		
	// 게시글 수정 폼
		@RequestMapping(value = "review_modifyForm", method = RequestMethod.GET)
		public String reviewModifyForm(int review_no, Model model) {
			ReviewVo reviewVo = reviewService.readContent(review_no);
			model.addAttribute("reviewVo", reviewVo);
			return "/review/review_modifyForm";
		}
	
	// 게시글 수정 실행
		@RequestMapping(value = "/review_modifyRun", method = RequestMethod.POST)
		public String reviewModifyRun(ReviewVo reviewVo, int review_no, RedirectAttributes rttr) {
			System.out.println("ReviewController, reviewModifyRun, reviewVo:" + reviewVo);
			boolean result = reviewService.modify(reviewVo);
			rttr.addFlashAttribute("modify_result", result);
			return "redirect:/review/review_read?review_no=" + review_no;
		}
		
	// 게시글 삭제
		@RequestMapping(value = "/review_delete", method = RequestMethod.GET)
		public String reviewDelete(int review_no, RedirectAttributes rttr) {
			boolean result = reviewService.delete(review_no);
			rttr.addFlashAttribute("delete_result", result);
			return "redirect:/review/review_list";
		}
}
