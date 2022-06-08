package com.kh.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.ReviewCommentService;
import com.kh.team.vo.ReviewCommentVo;

@Controller
@RequestMapping("/reviewComment")
public class ReviewCommentController {
	
	@Autowired
	private ReviewCommentService commentService;
	
	@RequestMapping(value = "/insertComment", method = RequestMethod.POST)
	public String insertComment(ReviewCommentVo commentVo) {
		boolean result = commentService.insertComment(commentVo);
		return String.valueOf(result);
	}

}
