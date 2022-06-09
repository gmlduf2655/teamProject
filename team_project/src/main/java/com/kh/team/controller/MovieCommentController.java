package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.service.MovieCommentService;
import com.kh.team.vo.MovieCommentVo;

@Controller
@RequestMapping("/moviecomment")
public class MovieCommentController {

	@Autowired
	private MovieCommentService commentService;
	
	@RequestMapping(value= "/commentInsert", method= RequestMethod.POST)
	@ResponseBody
	public String commentInsert(MovieCommentVo commentVo) {
		boolean result = commentService.commentInsert(commentVo);
		System.out.println("result" + result);
		return String.valueOf(result);
	}
	
	@RequestMapping(value= "/commentList", method= RequestMethod.GET)
	@ResponseBody
	public List<MovieCommentVo> commentList(String movie_code) {
		List<MovieCommentVo> movieCommentList = commentService.commentList(movie_code);
		System.out.println("MovieCommentController, result" + movieCommentList);
		return movieCommentList;
	}
	
	@RequestMapping(value= "/commentUpdate", method= RequestMethod.POST)
	@ResponseBody
	public String commentUpdate(MovieCommentVo commentVo) {
		boolean result = commentService.commentUpdate(commentVo);
		System.out.println("result" + result);
		return String.valueOf(result);
	}
	
	@RequestMapping(value= "/commentDelete", method= RequestMethod.GET)
	@ResponseBody
	public String commentDelete(int cno) {
		boolean result = commentService.commentDelete(cno);
		return String.valueOf(result);
	}
	
}
