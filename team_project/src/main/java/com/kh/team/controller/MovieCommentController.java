package com.kh.team.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		System.out.println("commentVo : " + commentVo);
		boolean result = commentService.commentInsert(commentVo);
		System.out.println("result" + result);
		return String.valueOf(result);
	}
	
	@RequestMapping(value= "/commentList", method= RequestMethod.GET)
	@ResponseBody
	public List<MovieCommentVo> commentList(String movie_code, int startRow) {
		if(startRow == 2) {
			startRow = 1;
		}
		int endRow = startRow + 4;
		List<MovieCommentVo> movieCommentList = commentService.commentListsection(movie_code, startRow, endRow);
		System.out.println("commentList. result" + movieCommentList);
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
	
	@RequestMapping(value= "/commentListuser", method= RequestMethod.GET)
	public List<MovieCommentVo> commentListuser(String userid) {
		List<MovieCommentVo> commentlistuser = commentService.commentListuser(userid);
		return commentlistuser;
	}
	
}
