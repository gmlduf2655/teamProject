package com.kh.team.controller;

import java.util.List;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.EventService;
import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.service.ReviewService;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;
import com.kh.team.vo.ReviewPagingDto;
import com.kh.team.vo.ReviewVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private EventService eventService;
	@Autowired
	private UserService userService;
	@Autowired
	private PointService pointService;
	@Autowired
	private ReviewService reviewService;

	@RequestMapping(value = "/manage", method = RequestMethod.GET)
	public String adminPage() {
		System.out.println("관리자페이지");
		return "admin/manage";
	}
	
	// 관리자 페이지 이벤트 관리 - 이벤트 목록
		@RequestMapping(value = "/event_admin_list", method = RequestMethod.GET)
		public String eventAdminList(Model model, PagingDto pagingDto) {
			pagingDto.setCount(eventService.getCount(pagingDto));
			pagingDto.setPage(pagingDto.getPage());
			List<EventVo> eventList = eventService.list(pagingDto);
			model.addAttribute("eventList", eventList);
			model.addAttribute("pagingDto", pagingDto);
			return "admin/event_admin_list";
		}
		
	// 유저 관리
	@RequestMapping(value="/user_list", method=RequestMethod.GET)
	public String userList(Model model) {
//		List<UserVo> originUserList = userService.getOriginUserList();
//		List<UserVo> snsUserList = userService.getSnsUserList();
//		String str = snsUserList.toString();
//		model.addAttribute("originUserList", originUserList);
//		model.addAttribute("snsUserList", snsUserList);
		return "admin/user_list";
	}
	
	// 기존 유저 목록
	@RequestMapping(value="/origin_user_list", method=RequestMethod.GET)
	public String originUserList(Model model, PagingDto pagingDto){
		int count = userService.getCountOriginUserList();
		pagingDto.setPage(pagingDto.getPage());
		List<UserVo> originUserList = userService.getOriginUserList(pagingDto);
		pagingDto.setCount(count);
		model.addAttribute("originUserList", originUserList);
		return "admin/origin_user_list";
	}
	
	// 간편로그인 유저 목록
	@RequestMapping(value="/sns_user_list", method=RequestMethod.GET)
	public String snsUserList(Model model, PagingDto pagingDto){
		int count = userService.getCountSnsUserList();
		pagingDto.setPage(pagingDto.getPage());
		List<UserVo> snsUserList = userService.getSnsUserList(pagingDto);
		pagingDto.setCount(count);
		model.addAttribute("snsUserList", snsUserList);
		return "admin/sns_user_list";
	}
	
	// 전체 유저 포인트 내역
	@RequestMapping(value="/total_point_list", method=RequestMethod.GET)
	public String totalPointList(Model model, PagingDto pagingDto) {
		int count = pointService.getCountPointList();
		pagingDto.setPage(pagingDto.getPage());
		List<PointVo> pointList = pointService.getPointList(pagingDto);
		for(PointVo pointVo : pointList) {
			System.out.println("pointVo : " + pointList);
		}
		pagingDto.setCount(count);
		model.addAttribute("pointList", pointList);
		model.addAttribute("pagingDto", pagingDto);
		return "admin/total_point_list";
	}
	
	// 포인트 코드 관리 페이지 이동
	@RequestMapping(value="/manage_point_code", method=RequestMethod.GET)
	public String createPointCode(Model model, int page, PagingDto pagingDto) {
		pagingDto.setPage(page);
		List<PointVo> pointCodeList = pointService.getPointCodeList(pagingDto);
		int count = pointService.getCountPointCodeList();
		pagingDto.setCount(count);
		model.addAttribute("pointCodeList", pointCodeList);
		return "admin/manage_point_code";
	}
	
	// 관리자 페이지 이벤트 관리 - 이벤트 목록 -> 이벤트 읽기(수정, 삭제)
		@RequestMapping(value = "/event_admin_read", method = RequestMethod.GET)
		public String eventAdminRead(int event_no, Model model) {
			EventVo eventVo = eventService.readContent(event_no);
			model.addAttribute("eventVo", eventVo);
			return "admin/event_admin_read";
		}
	
	// 관리자 페이지 평점/리뷰 관리 - 평점/리뷰 목록 띄우기
		@RequestMapping(value = "/event_admin_reviewList", method = RequestMethod.GET)
		public String eventAdminReviewList(Model model, ReviewPagingDto pagingDto) {
			pagingDto.setCount(reviewService.getCount(pagingDto));
			pagingDto.setPage(pagingDto.getPage());
			List<ReviewVo> reviewList = reviewService.list(pagingDto);
			model.addAttribute("reviewList", reviewList);
			model.addAttribute("pagingDto", pagingDto);
			return "admin/event_admin_reviewList";
		}
	
	// 관리자 페이지 평점/리뷰 관리 - 관리자가 게시물 삭제하기
		@RequestMapping(value = "/event_admin_reviewDelete", method = RequestMethod.POST)
		public String eventAdminReviewDelete(ReviewVo reviewVo) {
			boolean result = reviewService.adminDelete(reviewVo);
			return "redirect:/admin/event_admin_reviewList";
		
		}
}
