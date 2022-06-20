package com.kh.team.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.ReviewLikeService;
import com.kh.team.service.ReviewService;
import com.kh.team.util.EventFileUploader;
import com.kh.team.vo.ReviewLikeVo;
import com.kh.team.vo.ReviewPagingDto;
import com.kh.team.vo.ReviewVo;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ReviewLikeService reviewLikeService;
	
	// 게시글 목록
		@RequestMapping(value = "/review_list", method = RequestMethod.GET)
		public String eventList(Model model, ReviewPagingDto pagingDto) {
			System.out.println("ReviewPagingDto:" + pagingDto);
			pagingDto.setCount(reviewService.getCount(pagingDto));
			pagingDto.setPage(pagingDto.getPage());
			List<ReviewVo> reviewList = reviewService.list(pagingDto);
			model.addAttribute("reviewList", reviewList);
			model.addAttribute("pagingDto", pagingDto);
			return "review/review_list";
		}
	// 게시글 작성 폼
		@RequestMapping(value = "/review_form", method = RequestMethod.GET)
		public String writeForm() {
			return "review/review_form";
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
			return "review/review_read";
		}
		
	// 게시글 수정 폼
		@RequestMapping(value = "review_modifyForm", method = RequestMethod.GET)
		public String reviewModifyForm(int review_no, Model model) {
			ReviewVo reviewVo = reviewService.readContent(review_no);
			model.addAttribute("reviewVo", reviewVo);
			return "review/review_modifyForm";
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
		
		// 썸머노트 이미지 업로드
		@RequestMapping(value = "/uploadSummernoteImageFile", method = RequestMethod.POST)
		@ResponseBody
		public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) throws Exception {
			
			String uploadPath = "//192.168.0.67/boardattach";
			String originalFilename = multipartFile.getOriginalFilename();
			
			String file = EventFileUploader.uploadFile(uploadPath, originalFilename, multipartFile.getBytes());
			System.out.println("uploadSummernoteImageFile, file:" + file);
			return file;
		}
		
		// 좋아요 
		@RequestMapping(value="/createLike", method = RequestMethod.POST)
		@Transactional
		@ResponseBody
		public String createLike(ReviewLikeVo reviewLikeVo) {
			System.out.println("createLike, reviewLikeVo:"+reviewLikeVo);
			boolean result = false;
			boolean result1 = false;
			if(reviewLikeVo.getUserid() != null && !reviewLikeVo.getUserid().equals("")) {
				result1 = reviewLikeService.isLike(reviewLikeVo.getReview_no(), reviewLikeVo.getUserid());
				if(result1 == false) {
					result = reviewLikeService.createLike(reviewLikeVo);
				} else if (result1 == true) {
					result = reviewLikeService.deleteLike(reviewLikeVo.getReview_no(), reviewLikeVo.getUserid());
				}
			}
			return String.valueOf(result);
		}
		
		@RequestMapping(value="/isLike", method = RequestMethod.GET)
		@ResponseBody
		public String isLike(int review_no, String userid) {
			boolean result = reviewLikeService.isLike(review_no, userid);
			return String.valueOf(result);
		}
		
		@RequestMapping(value="/countLike", method = RequestMethod.GET)
		@ResponseBody
		public int countLike(int review_no) {
			System.out.println("countLike, review_no:"+review_no);
			int count = reviewLikeService.countLike(review_no);
			return count;
		}
}
