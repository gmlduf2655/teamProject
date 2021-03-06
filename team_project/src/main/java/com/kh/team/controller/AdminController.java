package com.kh.team.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.EventService;
import com.kh.team.service.FaqService;
import com.kh.team.service.MessageService;
import com.kh.team.service.ParticipateEventService;
import com.kh.team.service.MovieCommentService;
import com.kh.team.service.MovieService;
import com.kh.team.service.PointService;
import com.kh.team.service.ReportUserService;
import com.kh.team.service.UserService;
import com.kh.team.service.VisitNumberService;
import com.kh.team.service.WinnerService;
import com.kh.team.service.ReviewService;
import com.kh.team.service.TicketService;
import com.kh.team.vo.EventPagingDto;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.FaqVo;
import com.kh.team.vo.MessageVo;
import com.kh.team.vo.MovieCommentVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ParticipateEventVo;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.ReportUserVo;
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
	@Autowired
	private ReportUserService reportUserService;
	@Autowired
	private FaqService faqService;
	@Autowired
	private TicketService ticketService;
	
	
	// ????????? : ????????? ?????? ?????????
	@RequestMapping(value = "/manage", method = RequestMethod.GET)
	public String adminPage(Model model) {
		PagingDto pagingDto = new PagingDto();
		
		int totalUserCount = userService.getCountUserList(); // ??? ?????? ???
		int originUserCount = userService.getCountOriginUserList(pagingDto); // ?????? ??????(Mover) ???
		int snsUserCount = userService.getCountSnsUserList(pagingDto); // ?????? ????????? ?????? ???
		int naverUserCount = userService.getCountEachSnsUserList("naver"); // ????????? ??????????????? ?????? ???
		int googleUserCount = userService.getCountEachSnsUserList("google"); // ?????? ??????????????? ?????? ???
		int totalMovieCount = movieService.getCountTotalMovie(); // ??? ?????? ???
		
		// ?????? ????????? ????????? ?????? ??????
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		
		int monthVisitorCount = visitNumberService.getMonthVisitNumber(year, month); // ?????? ??? ????????? ???
		int dailyVisitorCount = visitNumberService.getTodayVisitNumber(year, month, day); // ?????? ????????? ???
		
		int totalTicketPrice = ticketService.getTotalTicketPrice(); // ?????? ??? ??????
		
		model.addAttribute("totalUserCount", totalUserCount);
		model.addAttribute("originUserCount", originUserCount);
		model.addAttribute("snsUserCount", snsUserCount);
		model.addAttribute("naverUserCount", naverUserCount);
		model.addAttribute("googleUserCount", googleUserCount);
		model.addAttribute("totalMovieCount", totalMovieCount);
		model.addAttribute("monthVisitorCount", monthVisitorCount);
		model.addAttribute("dailyVisitorCount", dailyVisitorCount);
		model.addAttribute("totalTicketPrice", totalTicketPrice);		
		return "admin/manage";
	}
	
	// ????????? ????????? ?????? ?????? ajax??? ?????????
	@RequestMapping(value = "/get_movie_genre_count", method = RequestMethod.GET, produces="text/plain;charset=utf-8")
	@ResponseBody
	public String getMovieGenreCount() {
		List<Map<String, Object>> movieGenreCountMap = movieService.getCountMovieGroupByGenre();
		String movieGenreCount = JSONArray.toJSONString(movieGenreCountMap);
		return movieGenreCount;
	}
	
	// ????????? ????????? ????????? ?????? - ????????? ??????
		@RequestMapping(value = "/event_admin_list", method = RequestMethod.GET)
		public String eventAdminList(Model model, EventPagingDto pagingDto) {
			System.out.println("eventAdminList, pagingDto:"+pagingDto);
			List<EventVo> eventList = eventService.list(pagingDto);
			pagingDto.setCount(eventService.getEventCount(pagingDto));
			pagingDto.setPage(1);
			model.addAttribute("eventList", eventList);
			model.addAttribute("pagingDto", pagingDto);
			return "admin/event_admin_list";
		}
	
	// ?????? ?????? ??????
	@RequestMapping(value="/multi_user_suspend", method=RequestMethod.POST)
	public String multiUserSuspend(String uri, int page, String[] sData, RedirectAttributes redirectAttributes) {
		List<Integer> list = new ArrayList<Integer>();
		for(String usernoStr : sData) {
			System.out.println(usernoStr);
			list.add(Integer.parseInt(usernoStr));
		}
		boolean result = userService.multiUserSuspend(list);
		redirectAttributes.addFlashAttribute("suspend_result", result);
		return "redirect:"+ uri +"?page=" + page;
	}
	
	// ?????? ?????? ??????
	@RequestMapping(value="/multi_user_recover", method=RequestMethod.POST)
	public String multiUserRecover(String uri, int page, String[] sData, RedirectAttributes redirectAttributes) {
		List<Integer> list = new ArrayList<Integer>();
		for(String usernoStr : sData) {
			System.out.println(usernoStr);
			list.add(Integer.parseInt(usernoStr));
		}
		boolean result = userService.multiUserRecover(list);
		redirectAttributes.addFlashAttribute("recover_result", result);
		return "redirect:"+ uri +"?page=" + page;
	}	
	
	// ?????? ?????? ??????
	@RequestMapping(value="/origin_user_list", method=RequestMethod.GET)
	public String originUserList(Model model, PagingDto pagingDto){
		int count = userService.getCountOriginUserList(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<UserVo> originUserList = userService.getOriginUserList(pagingDto);
		model.addAttribute("originUserList", originUserList);
		return "admin/origin_user_list";
	}
	
	// ??????????????? ?????? ??????
	@RequestMapping(value="/sns_user_list", method=RequestMethod.GET)
	public String snsUserList(Model model, PagingDto pagingDto){
		int count = userService.getCountSnsUserList(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<UserVo> snsUserList = userService.getSnsUserList(pagingDto);
		model.addAttribute("snsUserList", snsUserList);
		return "admin/sns_user_list";
	}
	
	// ?????? ?????? ?????? ????????? ??????
	@RequestMapping(value="/report_user_list", method=RequestMethod.GET)
	public String reportUserList(Model model, PagingDto pagingDto) {
		int count = reportUserService.getCountReportUser(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<ReportUserVo> reportUserList = reportUserService.getReportUserList(pagingDto);
		model.addAttribute("reportUserList", reportUserList);
		model.addAttribute("pagingDto", pagingDto);
		return "admin/report_user_list";
	}
	
	// ?????? ?????? ?????? ?????? 
	@RequestMapping(value="/read_report", method=RequestMethod.GET)
	public String readReport(Model model, int reportno) {
		System.out.println("reportno : " + reportno);
		ReportUserVo reportUserVo = reportUserService.readReport(reportno);
		if(reportUserVo.getReport_accept_date() == null) {
			reportUserService.modifyReportAcceptDate(reportno);
		}
		model.addAttribute("reportUserVo", reportUserVo);
		return "admin/read_report";
	}
	
	// ?????? ?????? ?????? ??????
	@RequestMapping(value="/multi_report_resolve", method=RequestMethod.POST)
	public String multiReportResolve(int page, String[] sData, RedirectAttributes redirectAttributes) {
		List<Integer> reportnoList = new ArrayList<>();
		for(String reportnoStr : sData) {
			reportnoList.add(Integer.parseInt(reportnoStr));
		}
		boolean result = reportUserService.modifyMultiReportResolve(reportnoList);
		redirectAttributes.addFlashAttribute("resolve_result", result);
		return "redirect:/admin/report_user_list?page=" + page;
	}
	
	// FAQ ?????? ????????? ??????
	@RequestMapping(value="/manage_faq", method=RequestMethod.GET)
	public String manageFaq(Model model, PagingDto pagingDto) {
		int count = faqService.getCountAllFAQList(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<FaqVo> faqList = faqService.getAllFAQList(pagingDto);
		
		model.addAttribute("faqList", faqList);
		return "admin/manage_faq";
	}
	
	// FAQ ??????
	@RequestMapping(value="/add_faq", method=RequestMethod.POST)
	public String addFaq(int page, FaqVo faqVo, RedirectAttributes redirectAttributes) {
		int faqno = 0;
		do {
			faqno = (int)(Math.random()*(900000)) + 100000;
		} while(faqService.isFaqnoExist(faqno));
		
		faqVo.setFaqno(faqno);
		boolean result = faqService.addFAQ(faqVo);
		redirectAttributes.addFlashAttribute("add_result", result);
		return "redirect:/admin/manage_faq?page=" + page;
	}
	
	// FAQ ??????
	@RequestMapping(value="/modify_faq", method=RequestMethod.POST)
	public String modifyFaq(int page, FaqVo faqVo, RedirectAttributes redirectAttributes) {
		boolean result = faqService.modifyFAQ(faqVo);
		redirectAttributes.addFlashAttribute("modify_result", result);		
		return "redirect:/admin/manage_faq?page=" + page;
	}
	
	// FAQ ??????
	@RequestMapping(value="/delete_faq", method=RequestMethod.POST)
	public String deleteFaq(int page, int faqno, RedirectAttributes redirectAttributes) {
		boolean result = faqService.deleteFAQ(faqno);
		redirectAttributes.addFlashAttribute("delete_result", result);		
		return "redirect:/admin/manage_faq?page=" + page;		
	}
	
	// FAQ ?????? ??????
	@RequestMapping(value="/multi_delete_faq", method=RequestMethod.POST)
	public String multiDeleteFaq(int page, String[] sData, RedirectAttributes redirectAttributes) {
		List<Integer> faqnoList = new ArrayList<>();
		for(String faqnoStr : sData) {
			faqnoList.add(Integer.parseInt(faqnoStr));
		}		
		
		boolean result = faqService.multiDeleteFAQ(faqnoList);
		redirectAttributes.addFlashAttribute("delete_result", result);		
		return "redirect:/admin/manage_faq?page=" + page;		
	}
	
	// FAQ ?????? ?????????
	@RequestMapping(value="/multi_close_faq", method=RequestMethod.POST)
	public String multiCloseFaq(int page, String[] sData, RedirectAttributes redirectAttributes) {
		List<Integer> faqnoList = new ArrayList<>();
		for(String faqnoStr : sData) {
			faqnoList.add(Integer.parseInt(faqnoStr));
		}		
		
		boolean result = faqService.multiCloseFAQ(faqnoList);
		redirectAttributes.addFlashAttribute("close_result", result);		
		return "redirect:/admin/manage_faq?page=" + page;		
	}	
	
	// ?????????(1:1) ?????? ??????
	@RequestMapping(value="/manage_admin_inquiry", method=RequestMethod.GET)
	public String manageAdminInquiry(Model model, PagingDto pagingDto) {
		int count = messageService.getReceiverMessageCount("admin", pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<MessageVo> adminInquiryMessageList = messageService.getReceiverMessageList("admin", pagingDto);
		
		model.addAttribute("adminInquiryMessageList", adminInquiryMessageList);
		return "admin/manage_admin_inquiry";
	}
	
	// ?????? ?????? ????????? ??????
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
	
	// ????????? ?????? ?????? ????????? ??????
	@RequestMapping(value="/manage_point_code", method=RequestMethod.GET)
	public String createPointCode(Model model, int page, PagingDto pagingDto) {
		int count = pointService.getCountPointCodeList(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(page);
		List<PointVo> pointCodeList = pointService.getPointCodeList(pagingDto);
		model.addAttribute("pointCodeList", pointCodeList);
		return "admin/manage_point_code";
	}
	
	// ?????? ?????? ????????? ????????? ????????? ??????
	@RequestMapping(value="total_message_list", method=RequestMethod.GET)
	public String totlaMessageList(Model model, PagingDto pagingDto) {
		int count = messageService.getCountTotalMessage(pagingDto);
		pagingDto.setCount(count);
		pagingDto.setPage(pagingDto.getPage());
		List<MessageVo> totalMessageList = messageService.getTotalMessageList(pagingDto);
		
		model.addAttribute("totalMessageList",totalMessageList);
		
		return "admin/total_message_list";
	}
	
	// ????????? ????????? ????????? ?????? - ????????? ?????? -> ????????? ??????(??????, ??????)
		@RequestMapping(value = "/event_admin_read", method = RequestMethod.GET)
		public String eventAdminRead(int event_no, Model model) {
			EventVo eventVo = eventService.readContent(event_no);
			model.addAttribute("eventVo", eventVo);
			return "admin/event_admin_read";
		}
	
	// ????????? ????????? ??????/?????? ?????? - ??????/?????? ?????? ?????????
		@RequestMapping(value = "/event_admin_reviewList", method = RequestMethod.GET)
		public String eventAdminReviewList(Model model, ReviewPagingDto pagingDto) {
			pagingDto.setCount(reviewService.getCount(pagingDto));
			pagingDto.setPage(pagingDto.getPage());
			List<ReviewVo> reviewList = reviewService.list(pagingDto);
			model.addAttribute("reviewList", reviewList);
			model.addAttribute("pagingDto", pagingDto);
			return "admin/event_admin_reviewList";
		}
	
	// ????????? ????????? ??????/?????? ?????? - ???????????? ????????? ????????????
		@RequestMapping(value = "/event_admin_reviewDelete", method = RequestMethod.POST)
		public String eventAdminReviewDelete(ReviewVo reviewVo) {
			boolean result = reviewService.adminDelete(reviewVo);
			return "redirect:/admin/event_admin_reviewList?page=1";
		
		}
	
	// ????????? ????????? ??????
		@RequestMapping(value = "/event_winner_list", method = RequestMethod.GET)
		public String eventwinnerlist(Model model, WinnerPagingDto pagingDto) {
			pagingDto.setCount(winnerService.getCount(pagingDto));
			pagingDto.setPage(pagingDto.getPage());
			List<WinnerVo> winnerList = winnerService.list(pagingDto);
			model.addAttribute("winnerList", winnerList);
			model.addAttribute("pagingDto", pagingDto);
			return "admin/event_winner_list";
		}
	
	// ????????? ????????? ????????? ??????
		@RequestMapping(value = "/admin_winner_read", method = RequestMethod.GET)
		public String adminWinnerRead(int winner_no, Model model) {
			WinnerVo winnerVo = winnerService.readContent(winner_no);
			model.addAttribute("winnerVo", winnerVo);
			return "admin/admin_winner_read";
		}
	
	// ????????? ????????? ????????? ??????
		@RequestMapping(value = "/admin_winner_modify", method = RequestMethod.GET)
		public String adminWinnerModify(int winner_no, Model model) {
			WinnerVo winnerVo = winnerService.readContent(winner_no);
			model.addAttribute("winnerVo", winnerVo);
			return "admin/admin_winner_modify";
		}
	
	// ????????? ????????? ????????? ??????
		@RequestMapping(value = "/admin_winner_modifyRun", method = RequestMethod.POST)
		public String adminWinnerModifyRun(WinnerVo winnerVo, int winner_no) {
			boolean result = winnerService.modify(winnerVo);
			return "redirect:/admin/admin_winner_read?winner_no=" + winner_no;
		}
	
	// ????????? ????????? ??????
		@RequestMapping(value = "/winner_delete", method = RequestMethod.GET)
		public String winnerDelete(int winner_no) {
			boolean result = winnerService.delete(winner_no);
			return "redirect:/admin/event_winner_list?page=1";
		}
		
	// ????????? ????????? ?????????
		@RequestMapping(value = "/event_participate_list", method = RequestMethod.GET)
		public String eventParticipateList(Model model, PagingDto pagingDto) {
			pagingDto.setCount(participateEventService.getCount(pagingDto));
			pagingDto.setPage(pagingDto.getPage());
			List<ParticipateEventVo> adminList = participateEventService.adminList(pagingDto);
			model.addAttribute("adminList", adminList);
			model.addAttribute("pagingDto", pagingDto);
			return "admin/event_participate_list";
		}
	
	// ????????? ????????? ????????????
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
	 
	// ????????? - ?????? ?????? ?????? ???????????????
		@RequestMapping(value = "/movie_comment", method = RequestMethod.GET)
		public String moviecomment() {
			return "admin/movie_comment";
		}
	// ????????? - ?????? ?????? ?????? 
		@RequestMapping(value = "/movie_commentUpdate", method = RequestMethod.GET)
		@ResponseBody
		public String moviecommentUpdate(int cno,String admin_delete) {
			boolean result = moviecommentService.commentAdminUpdate(cno,admin_delete);
			return String.valueOf(result);
		}	
	// ????????? - ?????? ?????? ?????????
		@RequestMapping(value = "/movie_commentlistHole", method = RequestMethod.GET)
		public String commentlistHole(Model model,PagingDto commentpagingDto) {
			commentpagingDto.setCount(moviecommentService.getCountmoviecomment(commentpagingDto));
			System.out.println(commentpagingDto.getCount());
			commentpagingDto.setPage(commentpagingDto.getPage());
			List<MovieCommentVo> commentlistHole = moviecommentService.commentListHole(commentpagingDto);
			model.addAttribute("commentlistHole", commentlistHole);
			model.addAttribute("commentpagingDto", commentpagingDto);
			return "admin/movie_comment";
		}	
		
		// ????????? ????????? ????????? ??? 
		@RequestMapping(value = "/winner_writeForm", method = RequestMethod.GET)
		public String winnerWrite() {
			return "/admin/winner_writeForm";
		}
}
