package com.kh.team;

import java.util.List;
import java.util.Locale;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.dao.GetServerTimeDao;
import com.kh.team.dao.TicketDao;
import com.kh.team.service.MovieService;
import com.kh.team.service.ReviewCommentService;
import com.kh.team.service.ReviewService;
import com.kh.team.service.UserService;
import com.kh.team.vo.MovieVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ReviewPagingDto;
import com.kh.team.vo.ReviewVo;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 임희열 : 로그인 세션 임시로 넣기 위해서 사용
	@Autowired
	private UserService userService;
	@Autowired
	TicketDao ticketDao;
	
	// 조재호 : 서버 시간 가져오기 위해 사용
	@Autowired
	private GetServerTimeDao getServerTimeDao;
	
	// 이정민 : 홈 화면에 띄울 영화 리스트/리뷰 리스트
	@Autowired
	private MovieService movieService;
	@Autowired
	private ReviewService reviewService;
	
	// 메인페이지로 이동
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		System.out.println("hello");
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
		
//		UserVo loginUserVo = userService.login("user01", "1234");
//		if(loginUserVo != null) {
//			session.setAttribute("loginUserVo", loginUserVo);
//		}
		
		// 영화 리스트
		List<MovieVo> movieList = movieService.movieListIng();
		List<MovieVo> movieList2 = movieService.movieList();
		model.addAttribute("movieList", movieList);
		model.addAttribute("movieList2", movieList2);
		// 리뷰 리스트
		ReviewPagingDto pagingDto = new ReviewPagingDto();
		pagingDto.setPage(1);
		List<ReviewVo> reviewList = reviewService.list(pagingDto);
		model.addAttribute("reviewList", reviewList);
		
		return "home";
	}
	
	// 카카오맵 테스트 페이지로 이동
	@RequestMapping(value="/kakao_map", method = RequestMethod.GET)
	public String kakaoMap() {
		return "kakao_map";
	}
	
	// 카카오맵 테스트 페이지로 이동
	@RequestMapping(value="/kakao_pay_success", method = RequestMethod.GET)
	public String kakaoPaySuccess() {
		return "kakao/kakao_pay_success";
	}
	
	// 조재호 : 서버와 클라이언트의 시간차이가 있을 수 있어서 서버 시간을 가져와서 사용
	@ResponseBody
	@RequestMapping(value = "/getServerTime", method = RequestMethod.GET)
	public String getServerTime() {
		
		String time = getServerTimeDao.getServerDate();
		
		return time;
	}
	
}