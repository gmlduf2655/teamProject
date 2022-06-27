package com.kh.team.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.dao.GetServerTimeDao;
import com.kh.team.service.CinemaService;
import com.kh.team.service.MovieService;
import com.kh.team.service.TicketService;
import com.kh.team.util.MapAJaxAdaper;
import com.kh.team.vo.CinemaVo;
import com.kh.team.vo.MovieVo;
import com.kh.team.vo.RoomTypeVo;

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
	public String ticketingSeat(String room_type_code, String room_name, String movie_begin_date, Model model) {
		model.addAttribute("room_type_code", room_type_code);
		model.addAttribute("room_name", room_name);
		model.addAttribute("movie_begin_date", movie_begin_date);
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
	
}
