package com.kh.team.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.FollowService;
import com.kh.team.service.MovieService;
import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.vo.MovieVo;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value="/mypage")
public class MypageController {
	@Autowired
	UserService userService;
	@Autowired
	FollowService followService;
	@Autowired
	PointService pointService;
	@Autowired
	MovieService movieService;
	
	// 마이페이지 화면이동
	// 한 메소드에 3개의 서비스가.. + 1 개더 추가요 
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String mypage(HttpSession session, Model model, int userno) {
		UserVo loginUserVo = (UserVo)session.getAttribute("loginUserVo");
		UserVo userVo = userService.getUserInfoByUserno(userno);
		int follower = followService.selectFollowerNumber(userno);
		int follow = followService.selectFollowNumber(userno);
		List<PointVo> pointList = pointService.getPointListByUserno(userno);
		List<MovieVo> movieList = movieService.movieList();
		model.addAttribute("follower", follower);
		model.addAttribute("follow", follow);
		model.addAttribute("pointList", pointList);
		model.addAttribute("userVo", userVo);
		model.addAttribute("movieList", movieList);
		return "mypage/main";
	}
	
	// 내 정보 화면 이동
	@RequestMapping(value="/userinfo", method=RequestMethod.GET) 
	public String userinfo(Model model, int userno) {
		UserVo userVo = userService.getUserInfoByUserno(userno);
		int follower = followService.selectFollowerNumber(userno);
		int follow = followService.selectFollowNumber(userno);
		model.addAttribute("follower", follower);
		model.addAttribute("follow", follow);	
		model.addAttribute("userVo", userVo);
		return "mypage/userinfo";
	}
	
	// 예매 내역 화면 이동
	@RequestMapping(value="ticket_movie_list")
	public String ticketMovieList(Model model, int userno) {
		List<MovieVo> movieList = movieService.movieList();
		model.addAttribute("movieList", movieList);
		return "mypage/ticket_movie_list";
	}
}
