package com.kh.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.service.MovieLikeService;
import com.kh.team.vo.MovieLikeVo;

@Controller
@RequestMapping("/movielike")
public class MovieLikeContrller {

	@Autowired
	private MovieLikeService movieLikeService;
	
	//좋아요 카운트
	@RequestMapping(value="/likeCount", method = RequestMethod.GET)
	@ResponseBody
	public int likeCount(int movie_no) {
		int likecount = movieLikeService.countLike(movie_no);
		return likecount;
	}
	@RequestMapping(value="/insertLike", method = RequestMethod.POST)
	@Transactional
	@ResponseBody
	public String insertLike(MovieLikeVo movieLikeVo) {
		boolean result = false;
		boolean result1 = false;
		if(movieLikeVo.getUserid() != null && !movieLikeVo.getUserid().equals("")) {
			result1 = movieLikeService.isLike(movieLikeVo.getMovie_no(), movieLikeVo.getUserid());
			if(result1 == false) {
				result = movieLikeService.insertLike(movieLikeVo);
			} else if (result1 == true) {
				result = movieLikeService.deleteLike(movieLikeVo.getMovie_no(), movieLikeVo.getUserid());
			}
		}
		return String.valueOf(result);
	}
	
	//좋아요 유저 여부
	@RequestMapping(value="/islike", method = RequestMethod.GET)
	@ResponseBody
	public String islike(int movie_no, String userid) {
		boolean result = movieLikeService.isLike(movie_no, userid);
		return String.valueOf(result);
	}
	
	
}
