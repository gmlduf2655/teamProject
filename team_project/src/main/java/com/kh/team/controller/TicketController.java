package com.kh.team.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.dao.GetServerTimeDao;
import com.kh.team.service.CinemaService;
import com.kh.team.service.MovieService;
import com.kh.team.service.PointService;
import com.kh.team.service.TicketService;
import com.kh.team.service.UserService;
import com.kh.team.util.MapAJaxAdaper;
import com.kh.team.vo.CinemaVo;
import com.kh.team.vo.MovieVo;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.RoomSeatVo;
import com.kh.team.vo.RoomTypeVo;
import com.kh.team.vo.TicketVo;
import com.kh.team.vo.UserVo;

@Controller
@RequestMapping(value = "/ticket")
public class TicketController {

	@Autowired
	private GetServerTimeDao getServerTimeDao;
	
	@Autowired
	private CinemaService cinemaService;
	
	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private MovieService movieService;
	
	@Autowired
	private PointService pointService; // addPoint
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/ticketing", method = RequestMethod.GET)
	public String ticketViewer(Model model) {
		
		List<String> cinemaCityList = cinemaService.getCinemaCityAddressList();
		model.addAttribute("cinemaCityList", cinemaCityList);
		
		List<RoomTypeVo> roomTypeList = cinemaService.getRoomTypeList();
		model.addAttribute("roomTypeList", roomTypeList);
		
		List<MovieVo> movieList = movieService.movieList();
		for (MovieVo movieVo : movieList) {
			String opening_date = String.valueOf(movieVo.getOpening_date());
			opening_date = opening_date.substring(0, 10);
			movieVo.setOpening_date(opening_date);
		}
		model.addAttribute("movieList", movieList);
		
		String time = getServerTimeDao.getServerDate();
		model.addAttribute("serverTime", time);
		
		return "ticket/ticketing";
	}
	
	@RequestMapping(value = "/ticketingSeat", method = RequestMethod.GET)
	public String ticketingSeat(int room_no, int timeline_no, Model model, HttpSession session, HttpServletRequest request) {
		UserVo userVo = (UserVo) session.getAttribute("loginUserVo");
		if (userVo == null) {
			String uri = request.getRequestURI();
			String query = request.getQueryString();
			
			String locationTarget = uri + "?" + query;
			session.setAttribute("locationTarget", locationTarget);
		}
		Map<String, Object> timelineMap = cinemaService.getRoomTimeline(timeline_no);
		List<RoomSeatVo> seatList = cinemaService.getRoomSeatList(room_no);
		model.addAttribute("seatList", seatList);
		model.addAttribute("timelineMap", timelineMap);
		return "ticket/ticketingSeat";
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCinemaList", method = RequestMethod.GET)
	public List<CinemaVo> getCinemaList(String search_data, HttpSession session) {
		List<CinemaVo> cinemaList = cinemaService.getCinemaList("cinema_address", search_data, "cinema_no", "asc");
		return cinemaList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getMovieAndTimelineList", method = RequestMethod.GET)
	public List<Map<String, Object>> getMovieAndTimelineList(int cinema_no) {
		
		List<Map<String, Object>> timelineList = cinemaService.getRoomTimelineList(cinema_no, "movie_name", "asc");
		timelineList = MapAJaxAdaper.returnAdapter(timelineList);
		
		return timelineList;
	}
	
	
	@Transactional
	@RequestMapping(value = "/pamentTicketing", method = RequestMethod.GET)
	public String pamentTicketing(
			int user_no, 
			int timeline_no, 
//			String seat_no_list, 
			@RequestParam(value = "seat_no_list", required=false, defaultValue="") List<Integer> seat_no_list, 
			int room_price, 
			Model model) throws ParseException {
		Map<String, Object> ticketInfo = null;
		System.out.println("seat_no_list : " + seat_no_list);
		// 포인트 사용이 완료 되면
		int point_code = 0;
		int point = 0;
		System.out.println(-room_price/seat_no_list.size());
		switch(-room_price/seat_no_list.size()) {
			case PointService.TICKET_DIGITAL_POINT:
				point_code = PointService.TICKET_DIGITAL;
				point = PointService.TICKET_DIGITAL_POINT;
				break;
			case PointService.TICKET_2D_POINT:
				point_code = PointService.TICKET_2D;
				point = PointService.TICKET_DIGITAL_POINT;
				break;
			case PointService.TICKET_3D_POINT:
				point_code = PointService.TICKET_3D;
				point = PointService.TICKET_DIGITAL_POINT;
				break;
			case PointService.TICKET_4D_POINT:
				point_code = PointService.TICKET_4D;
				point = PointService.TICKET_DIGITAL_POINT;
				break;
			case PointService.TICKET_IMAX_POINT:
				point_code = PointService.TICKET_IMAX;
				point = PointService.TICKET_DIGITAL_POINT;
				break;
			case PointService.TICKET_IMAX3D_POINT:
				point_code = PointService.TICKET_IMAX3D;
				point = PointService.TICKET_DIGITAL_POINT;
				break;
		}
		
		int userPoint = userService.getUserInfoByUserno(user_no).getPoint();
		PointVo pointVo = new PointVo(point, user_no, point_code);
		boolean result = pointService.usingTicketingPoint(pointVo, seat_no_list.size(), userPoint);
		if (result) {
			// 좌석 예약
			result = false;
			for (Integer seat_no : seat_no_list) {
				TicketVo ticketVo = new TicketVo(user_no, timeline_no, seat_no, true);
				result = ticketService.createTicket(ticketVo);
			}
			if (result) {
				List<Map<String, Object>> ticketList = ticketService.getTicketList("user_no", user_no, "ticket_regdate", "desc");
				ticketInfo = ticketList.get(ticketList.size() - 1);
				ticketInfo = MapAJaxAdaper.returnAdapter(ticketInfo);
			}
			// 예약 한 뒤 타임 스케줄 좌석 예약 상태 변경
			
			model.addAttribute("ticketInfo", ticketInfo);
		}
		
		return "ticket/ticketingSuccess";
	}
	
}
