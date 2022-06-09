package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.service.ReviewCommentService;
import com.kh.team.vo.ReviewCommentVo;

@Controller
@RequestMapping("/reviewComment")
public class ReviewCommentController {
	
	@Autowired
	private ReviewCommentService commentService;
	
	@RequestMapping(value = "/insertComment", method = RequestMethod.POST)
	@ResponseBody
	public String insertComment(ReviewCommentVo commentVo) {
		System.out.println("ReviewCommentController, insertCommen, commentVo:"+commentVo);
		boolean result = commentService.insertComment(commentVo);
		return String.valueOf(result);
	}
	
	@RequestMapping(value = "/commentList/{review_no}", method = RequestMethod.GET)
	@ResponseBody
	public List<ReviewCommentVo> commentList(@PathVariable("review_no") int review_no){
		List<ReviewCommentVo> commentList = commentService.commentList(review_no);
		return commentList;
	}

}
