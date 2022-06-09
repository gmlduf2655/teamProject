package com.kh.team.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.RequestContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.service.CinemaService;
import com.kh.team.util.MapAJaxAdaper;
import com.kh.team.vo.CinemaVo;
import com.kh.team.vo.RoomTimelineVo;

@Controller
@RequestMapping("/mkcinema")
public class MkCinemaController {
	
	@Autowired
	private CinemaService cinemaService;
	
	@RequestMapping(value = "/cinema", method = RequestMethod.GET)
	public String createCinema(HttpServletRequest request, Model model, RedirectAttributes rttr) {
		String uri = request.getRequestURI();
		int index = uri.indexOf("/");
		String str = uri.substring(index);
		System.out.println(str);
		model.addAttribute("pageInfo", str);
		return "cinema/cinemaDB";
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCinemaList", method = RequestMethod.GET)
	public List<CinemaVo> getCinemaList(String cinema_address) {
		String search_column = "cinema_address";
		String search_data = cinema_address + "___";
		String order_column = "cinema_no";
		String order_type = "desc";
		List<CinemaVo> cinemaList = cinemaService.getCinemaList(search_column, search_data, order_column, order_type);
		return cinemaList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCinemaRoomList", method = RequestMethod.GET)
	public List<Map<String, Object>> getCinemaRoomList(int cinema_no) {
//		int cinemaNo = Integer.parseInt(cinema_no);
		String order_column = "room_no";
		String order_type = "desc";
		List<Map<String, Object>> tempList = cinemaService.getCinemaRoomList(cinema_no, order_column, order_type);
		// date 형태의 데이터를 String으로 변환해서 리스트로 다시 담기
		List<Map<String, Object>> cinemaRoomList = MapAJaxAdaper.returnAdapter(tempList);
		return cinemaRoomList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getRoomTimelineList", method = RequestMethod.GET)
	public List<Map<String, Object>> getRoomTimelineList(int room_no){
		String order_column = "movie_begin_date";
		String order_type = "desc";
		List<Map<String, Object>> tempList = cinemaService.getRoomTimelineList(room_no, order_column, order_type);
		System.out.println(tempList);
		List<Map<String, Object>> roomTimelineList = MapAJaxAdaper.returnAdapter(tempList);
		System.out.println(roomTimelineList);
		return roomTimelineList;
	}
}
