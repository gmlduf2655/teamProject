package com.kh.team.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		@ResponseBody
		public String writerWriteRun(
				@RequestParam(value = "review_title") String review_title,
				@RequestParam(value = "review_content") String review_content,
				@RequestParam(value = "userScoreNum") int write_star) throws Exception 
		{
/*			String dform = URLDecoder.decode(form, "UTF-8");
			System.out.println("dform: "+dform);
			System.out.println("write_star: "+write_star);
			String[] arrFormData = new String[2]; 
			String[] formData = dform.split("&");
			for (String data : formData) {
				String[] arrData = data.split("=");
				if (arrData.equals("review_title")) {
					String adata = arrData[1];
				}
			} */
			
			ReviewVo reviewVo = new ReviewVo();
			reviewVo.setReview_title(review_title);
			reviewVo.setReview_content(review_title);
			reviewVo.setReview_star(write_star);
			
			System.out.println("reviewVo:"+reviewVo);
			
			boolean result = reviewService.insert(reviewVo);
			System.out.println("ReviewController, writeRun, result:"+ result);
//			rttr.addFlashAttribute("insert_result", result);
			return "redirect:/review/review_list";
		}
}
