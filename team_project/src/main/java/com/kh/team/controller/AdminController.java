package com.kh.team.controller;

import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.service.EventService;
import com.kh.team.service.MessageService;
import com.kh.team.service.ParticipateEventService;
import com.kh.team.service.MovieCommentService;
import com.kh.team.service.MovieService;
import com.kh.team.service.PointService;
import com.kh.team.service.UserService;
import com.kh.team.service.VisitNumberService;
import com.kh.team.service.WinnerService;
import com.kh.team.service.ReviewService;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.MessageVo;
import com.kh.team.vo.MovieCommentVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ParticipateEventVo;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;
import com.kh.team.vo.WinnerPagingDto;
import com.kh.team.vo.WinnerVo;
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
	@Autowired
	private WinnerService winnerService;
	@Autowired
	private ParticipateEventService participateEventService;
	@Autowired
	private MovieCommentService moviecommentService;
	@Autowired
	private MovieService movieService;
	@Autowired
	private VisitNumberService visitNumberService;
	@Autowired
	private MessageService messageService;
	
	// 임희열 : 관리자 메인 페이지
	@RequestMapping(value = "/manage", method = RequestMethod.GET)
	public String adminPage(Model model) {
		PagingDto pagingDto = new PagingDto();
		
		int totalUserCount = userService.getCountUserList(); // 총 유저 수
		int originUserCount = userService.getCountOriginUserList(pagingDto); // 기존 유저(Mover) 수
		int snsUserCount = userService.getCountSnsUserList(pagingDto); // 간편 로그인 유저 수
		int naverUserCount = userService.getCountEachSnsUserList("naver"); // 네이버 간편로그인 유저 수
		int googleUserCount = userService.getCountEachSnsUserList("google"); // 구글 간편로그인 유저 수
		int totalMovieCount = movieService.getCountTotalMovie(); // 총 영화 수
		
		// 오늘 날짜를 구하기 위해 사용
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		
		int monthVisitorCount = visitNumberService.getMonthVisitNumber(year, month); // 이번 달 방문자 수
		int dailyVisitorCount = visitNumberService.getTodayVisitNumber(year, month, day); // 오늘 방문자 수
		
		model.addAttribute("totalUserCount", totalUserCount);
		model.addAttribute("originUserCount", originUserCount);
		model.addAttribute("snsUserCount", snsUserCount);
		model.addAttribute("naverUserCount", naverUserCount);
		model.addAttribute("googleUserCount", googleUserCount);
		model.addAttribute("totalMovieCount", totalMovieCount);
		model.addAttribute("monthVisitorCount", monthVisitorCount);
		model.addAttribute("dailyVisitorCount", dailyVisitorCount);
		
		return "admin/manage";
	}
	
	// 장르와 장르별 영화 수를 ajax로 받아옴
	@RequestMapping(value = "/get_movie_genre_count", method = RequestMethod.GET, produces="text/plain;charset=utf-8")
	@ResponseBody
	public String getMovieGenreCount() {
		List<Map<String, Object>> movieGenreCountMap = movieService.getCountMovieGroupByGenre();
		String movieGenreCount = JSONArray.toJSONString(movieGenreCountMap);
		return movieGenreCount;
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
		
	// 유저 관리 (삭제 예정)
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
		int count = userService.getCountOriginUserList(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<UserVo> originUserList = userService.getOriginUserList(pagingDto);
		model.addAttribute("originUserList", originUserList);
		return "admin/origin_user_list";
	}
	
	// 간편로그인 유저 목록
	@RequestMapping(value="/sns_user_list", method=RequestMethod.GET)
	public String snsUserList(Model model, PagingDto pagingDto){
		int count = userService.getCountSnsUserList(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<UserVo> snsUserList = userService.getSnsUserList(pagingDto);
		model.addAttribute("snsUserList", snsUserList);
		return "admin/sns_user_list";
	}
	
	// 전체 유저 포인트 내역
	@RequestMapping(value="/total_point_list", method=RequestMethod.GET)
	public String totalPointList(Model model, PagingDto pagingDto) {
		int count = pointService.getCountPointList(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<PointVo> pointList = pointService.getPointList(pagingDto);
		for(PointVo pointVo : pointList) {
			System.out.println("pointVo : " + pointList);
		}
		model.addAttribute("pointList", pointList);
		model.addAttribute("pagingDto", pagingDto);
		return "admin/total_point_list";
	}
	
	// 포인트 코드 관리 페이지 이동
	@RequestMapping(value="/manage_point_code", method=RequestMethod.GET)
	public String createPointCode(Model model, int page, PagingDto pagingDto) {
		int count = pointService.getCountPointCodeList(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(page);
		List<PointVo> pointCodeList = pointService.getPointCodeList(pagingDto);
		model.addAttribute("pointCodeList", pointCodeList);
		return "admin/manage_point_code";
	}
	
	// 전체 유저 메세지 리스트 페이지 이동
	@RequestMapping(value="total_message_list", method=RequestMethod.GET)
	public String totlaMessageList(Model model, PagingDto pagingDto) {
		int count = messageService.getCountTotalMessage(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<MessageVo> totalMessageList = messageService.getTotalMessageList(pagingDto);
		
		model.addAttribute("totalMessageList",totalMessageList);
		
		return "admin/total_message_list";
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
	
	// 이벤트 당첨자 목록
		@RequestMapping(value = "/event_winner_list", method = RequestMethod.GET)
		public String eventwinnerlist(Model model, WinnerPagingDto pagingDto) {
			pagingDto.setCount(winnerService.getCount(pagingDto));
			pagingDto.setPage(pagingDto.getPage());
			List<WinnerVo> winnerList = winnerService.list(pagingDto);
			model.addAttribute("winnerList", winnerList);
			model.addAttribute("pagingDto", pagingDto);
			return "admin/event_winner_list";
		}
	
	// 이벤트 당첨자 게시글 읽기
		@RequestMapping(value = "/admin_winner_read", method = RequestMethod.GET)
		public String adminWinnerRead(int winner_no, Model model) {
			WinnerVo winnerVo = winnerService.readContent(winner_no);
			model.addAttribute("winnerVo", winnerVo);
			return "admin/admin_winner_read";
		}
	
	// 이벤트 당첨자 게시글 수정
		@RequestMapping(value = "/admin_winner_modify", method = RequestMethod.GET)
		public String adminWinnerModify(int winner_no, Model model) {
			WinnerVo winnerVo = winnerService.readContent(winner_no);
			model.addAttribute("winnerVo", winnerVo);
			return "admin/admin_winner_modify";
		}
	
	// 이벤트 당첨자 게시글 수정
		@RequestMapping(value = "/admin_winner_modifyRun", method = RequestMethod.POST)
		public String adminWinnerModifyRun(WinnerVo winnerVo, int winner_no) {
			boolean result = winnerService.modify(winnerVo);
			return "redirect:/admin/admin_winner_read?winner_no=" + winner_no;
		}
	
	// 이벤트 당첨자 삭제
		@RequestMapping(value = "/winner_delete", method = RequestMethod.GET)
		public String winnerDelete(int winner_no) {
			boolean result = winnerService.delete(winner_no);
			return "redirect:/admin/event_winner_list";
		}
		
	// 이벤트 신청자 리스트
		@RequestMapping(value = "/event_participate_list", method = RequestMethod.GET)
		public String eventParticipateList(Model model, PagingDto pagingDto) {
			pagingDto.setCount(participateEventService.getCount(pagingDto));
			pagingDto.setPage(pagingDto.getPage());
			List<ParticipateEventVo> adminList = participateEventService.adminList(pagingDto);
			model.addAttribute("adminList", adminList);
			model.addAttribute("pagingDto", pagingDto);
			return "admin/event_participate_list";
		}
	
	// 이벤트 당첨자 업데이트 winnerUpdate
		@RequestMapping(value = "/winnerUpdate", method = RequestMethod.POST)
		@ResponseBody
		public String winnerUpdate(@RequestParam(value = "chBox[]") List<String> chArr,
				ParticipateEventVo vo) {
			
			System.out.println("chArr:"+chArr);
			
			int participate_no = 0;
			if (chArr != null) {
				for (String i : chArr) {
					participate_no = Integer.parseInt(i);
					vo.setParticipate_no(participate_no);
					participateEventService.winnerUpdate(vo);
				}
			
			return String.valueOf(true);
			}
			return String.valueOf(false);
		}
	 
	// 유수연 - 영화 댓글 블럭 페이지이동
		@RequestMapping(value = "/movie_comment", method = RequestMethod.GET)
		public String moviecomment() {
			return "admin/movie_comment";
		}
	// 유수연 - 영화 댓글 블럭 
		@RequestMapping(value = "/movie_commentUpdate", method = RequestMethod.GET)
		public String moviecommentUpdate(int cno) {
			boolean result = moviecommentService.commentAdminUpdate(cno);
			return "redirect:/admin/movie_comment";
		}	
	// 유수연 - 영화 댓글 리스트
		@RequestMapping(value = "/movie_commentlistHole", method = RequestMethod.GET)
		public String commentlistHole(Model model,PagingDto commentpagingDto) {
			commentpagingDto.setCount(moviecommentService.getCountmoviecomment(commentpagingDto));
			System.out.println(commentpagingDto.getCount());
			commentpagingDto.setPage(commentpagingDto.getPage());
			
			List<MovieCommentVo> commentlistHole = moviecommentService.commentListHole(commentpagingDto);
			
	//		System.out.println(pagingDto);
	//		System.out.println("commentlistHole: " + commentlistHole);
			model.addAttribute("commentlistHole", commentlistHole);
			model.addAttribute("commentpagingDto", commentpagingDto);
			return "admin/movie_comment";
		}	
}
