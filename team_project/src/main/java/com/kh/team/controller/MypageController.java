package com.kh.team.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.EventService;
import com.kh.team.service.FollowService;
import com.kh.team.service.MovieLikeService;
import com.kh.team.service.MovieService;
import com.kh.team.service.ParticipateEventService;
import com.kh.team.service.PointService;
import com.kh.team.service.ReviewService;
import com.kh.team.service.TicketService;
import com.kh.team.service.UserService;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.MovieVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ParticipateEventVo;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.ReviewPagingDto;
import com.kh.team.vo.ReviewVo;
import com.kh.team.vo.TicketUserVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value="/mypage")
public class MypageController {
	// 서비스 8개
	@Autowired
	UserService userService;
	@Autowired
	FollowService followService;
	@Autowired
	PointService pointService;
	@Autowired
	MovieService movieService;
	@Autowired 
	EventService eventService;
	@Autowired
	ReviewService reviewService;
	@Autowired
	ParticipateEventService participateEventService;
	@Autowired
	MovieLikeService movieLikeService;
	@Autowired
	TicketService ticketService;
	
	
	// 마이페이지 이동
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String mypage(HttpSession session, Model model, int userno) {
		PagingDto pagingDto = new PagingDto();
		ReviewPagingDto reviewPagingDto = new ReviewPagingDto();
		pagingDto.setPage(1);
		reviewPagingDto.setPage(1);
		UserVo loginUserVo = (UserVo)session.getAttribute("loginUserVo");
		// 유저 번호로 유저 정보 얻음
		UserVo userVo = userService.getUserInfoByUserno(userno);
		// 유저 번호로 팔로우와 팔로워 얻음
		int follower = followService.selectFollowerNumber(userno);
		int follow = followService.selectFollowNumber(userno);
		// 유저 번호와 pagingDto로 포인트 목록 얻어옴 (페이지는 1페이지로함)
		List<PointVo> pointList = pointService.getPointListByUserno(userno, pagingDto);
		// 영화 목록을 얻어옴
		List<MovieVo> movieList = movieService.movieList();
		// 유저가 좋아오 누른 영화 목록을 얻어옴
		List<MovieVo> movieLikeList = movieLikeService.getLikeMovieListByuserid(userVo.getUserid());
//		// pagingDto로 이벤트 목록 얻어옴 (페이지는 1페이지로함)
//		List<EventVo> eventList = eventService.list(pagingDto);
		// reviewPagingDto로 리뷰 목록 얻어옴 (페이지는 1페이지로함)
		List<ReviewVo> reviewList = reviewService.myReviewList(userno, pagingDto);
		
		List<TicketUserVo> ticketUserList = ticketService.getTicketUserList(userno);
		
		
		
		// pagingDto로 이벤트 목록 얻어옴 (페이지는 1페이지로 가정)
//		List<EventVo> eventList = eventService.list(pagingDto);
		// 내가 참여한 이벤트 목록 얻어오기
		List<ParticipateEventVo> eventList = participateEventService.myList(userno, pagingDto);
		model.addAttribute("follower", follower);
		model.addAttribute("follow", follow);
		model.addAttribute("pointList", pointList);
		model.addAttribute("userVo", userVo);
		model.addAttribute("movieList", movieList);
		model.addAttribute("movieLikeList", movieLikeList);
		model.addAttribute("eventList", eventList);
		model.addAttribute("ticketUserList", ticketUserList);
//		model.addAttribute("participateEventList", participateEventList);
		model.addAttribute("reviewList", reviewList);
		return "mypage/main";
	}
	
	// 내 정보 페이지 이동
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
	
	// 예매 내역 목록 페이지 이동
	@RequestMapping(value="/ticket_movie_list", method=RequestMethod.GET)
	public String ticketMovieList(Model model, int userno) {
		List<TicketUserVo> ticketUserList = ticketService.getTicketUserList(userno);
		model.addAttribute("ticketUserList", ticketUserList);
		return "mypage/ticket_movie_list";
	}
	
	// 예매 내역 정보 페이지 이동
	@RequestMapping(value="/ticket_info", method=RequestMethod.GET)
	public String ticketMovieList(Model model, int userno, String ticket_no) {
		TicketUserVo ticketUserVo = ticketService.getTicketUserVoByTicketno(userno, ticket_no);
		System.out.println(ticketUserVo);
		model.addAttribute("ticketUserVo", ticketUserVo);
		return "mypage/ticket_info";
	}
	
	// 유저가 좋아요 누른 영화 목록 페이지 이동
	@RequestMapping(value="/like_movie_list", method=RequestMethod.GET)
	public String likeMovieList(Model model, int userno) {
		UserVo userVo = userService.getUserInfoByUserno(userno);
		List<MovieVo> movieLikeList = movieLikeService.getLikeMovieListByuserid(userVo.getUserid());
		model.addAttribute("movieLikeList", movieLikeList);
		return "mypage/like_movie_list";
	}
	
	// 내가 쓴 리뷰 내역 페이지 이동
	@RequestMapping(value="/write_review_list", method=RequestMethod.GET)
	public String writeRiewList(Model model, int userno, PagingDto pagingDto) {
		System.out.println("writeRiewList, pagingDto:"+pagingDto);
		pagingDto.setCount(eventService.getCount(pagingDto));
		pagingDto.setPage(pagingDto.getPage());
		List<ReviewVo> myReviewList = reviewService.myReviewList(userno, pagingDto);
		System.out.println("myReviewList:"+myReviewList);
		model.addAttribute("reviewList", myReviewList);
		model.addAttribute("pagingDto", pagingDto);
		return "mypage/write_review_list";
	}
	
	// 참여 이벤트 페이지 이동
	@RequestMapping(value="/participate_event_list", method=RequestMethod.GET)
	public String participateEventList(Model model, int userno, PagingDto pagingDto) {
		System.out.println("participateEventLis, pagingDto:"+pagingDto);
		pagingDto.setCount(eventService.getCount(pagingDto));
		pagingDto.setPage(pagingDto.getPage());
		List<ParticipateEventVo> eventList = participateEventService.myList(userno, pagingDto);
		model.addAttribute("eventList", eventList);
		model.addAttribute("pagingDto", pagingDto);
		return "mypage/participate_event_list" ;
	}
	

	// 이벤트 참여 취소(삭제 버튼)
	@RequestMapping(value="/participate_event_cancel", method=RequestMethod.GET)
	@ResponseBody
	public String participateEventCancel(int participate_no) {
		boolean result = participateEventService.delete(participate_no);
		return String.valueOf(result);
	}
	
	// 비밀번호 변경 페이지 이동
	@RequestMapping(value="/change_password_form" , method=RequestMethod.GET)
	public String changePassword(int userno) {
		return "mypage/change_password_form";
	}
	
	// 비밀번호 확인 결과
	@RequestMapping(value="/password_check_result", method=RequestMethod.POST)
	@ResponseBody
	public boolean passwordCheckResult(int userno, String userpw) {
		UserVo userVo = userService.getUserByUsernoAndUserpw(userno, userpw);
		if(userVo == null) {
			return false;
		}else {
			return true;
		}
	}
	
	// 비밀번호 변경
	@RequestMapping(value="/change_password_run", method=RequestMethod.POST)
	public String changePasswordRun(String userid,String newUserpw, RedirectAttributes redirectAttributes) {
		boolean result = userService.modifyUserpw(userid, newUserpw);
		redirectAttributes.addFlashAttribute("update_userpw_result", result + "");
		return "redirect:/user/login_form";
	}
	
	// 회원 탈퇴 페이지 이동
	@RequestMapping(value="/unregister_form", method=RequestMethod.GET)
	public String userUnregisterForm(int userno) {
		return "mypage/unregister_form";
	}
	
	// 회원 탈퇴
	@RequestMapping(value="/unregister_run", method=RequestMethod.POST)
	public String userUnregisterRun(int userno, RedirectAttributes redirectAttributes, HttpSession session) {
		boolean result = userService.unregister(userno);
		redirectAttributes.addFlashAttribute("unregister_result", result);
		session.removeAttribute("loginUserVo");
		return "redirect:/";
	}
}
