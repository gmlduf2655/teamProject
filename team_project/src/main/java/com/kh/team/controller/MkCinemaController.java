package com.kh.team.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.dao.GetServerTimeDao;
import com.kh.team.service.CinemaService;
import com.kh.team.service.MovieDBService;
import com.kh.team.util.MapAJaxAdaper;
import com.kh.team.vo.CinemaRoomVo;
import com.kh.team.vo.CinemaVo;
import com.kh.team.vo.MovieVo;
import com.kh.team.vo.RoomSeatVo;
import com.kh.team.vo.RoomTimelineVo;
import com.kh.team.vo.RoomTypeVo;

@Controller
@RequestMapping("/mkcinema")
public class MkCinemaController {
	
	@Autowired
	private CinemaService cinemaService;
	
	@Autowired
	private MovieDBService MovieDBService;
	
	@Autowired
	private GetServerTimeDao getServerTimeDao;
	
	@RequestMapping(value = "/cinema", method = RequestMethod.GET)
	public String createCinema(Model model, RedirectAttributes rttr) {
		List<String> cinemaCityList = cinemaService.getCinemaCityAddressList();
		String time = cinemaService.getServerTime();
		String inputTypeDatetime = time.replace(" ", "T").substring(0, 16);
		System.out.println(inputTypeDatetime);
		model.addAttribute("cinemaCityList", cinemaCityList);
		model.addAttribute("serverTime", inputTypeDatetime);
		return "admin/mkcinema";
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCinemaList", method = RequestMethod.GET)
	public List<CinemaVo> getCinemaList(String cinema_address) {
		String search_column = "cinema_address";
		String search_data = cinema_address;
		String order_column = "cinema_no";
		String order_type = "asc";
		List<CinemaVo> cinemaList = cinemaService.getCinemaList(search_column, search_data, order_column, order_type);
		return cinemaList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCinemaRoomList", method = RequestMethod.GET)
	public List<Map<String, Object>> getCinemaRoomList(int cinema_no) {
//		int cinemaNo = Integer.parseInt(cinema_no);
		String order_column = "room_no";
		String order_type = "asc";
		List<Map<String, Object>> tempList = cinemaService.getCinemaRoomList(cinema_no, order_column, order_type);
		// date ????????? ???????????? String?????? ???????????? ???????????? ?????? ??????
		List<Map<String, Object>> cinemaRoomList = MapAJaxAdaper.returnAdapter(tempList);
		return cinemaRoomList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getRoomTimelineList", method = RequestMethod.GET)
	public List<Map<String, Object>> getRoomTimelineList(int room_no, String movie_begin_date){
		movie_begin_date = movie_begin_date.replace("T", " ");
		String order_column = "movie_begin_date";
		String order_type = "asc";
		List<Map<String, Object>> tempList = cinemaService.getRoomTimelineList(room_no, "movie_begin_date", movie_begin_date, order_column, order_type);
		System.out.println(tempList);
		List<Map<String, Object>> roomTimelineList = MapAJaxAdaper.returnAdapter(tempList);
		return roomTimelineList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCinema", method = RequestMethod.GET)
	public CinemaVo getCinemaInfo(int cinema_no) {
		CinemaVo cinemaVo = cinemaService.getCinema(cinema_no);
		return cinemaVo;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCinemaRoom", method = RequestMethod.GET)
	public Map<String, Object> getCinemaRoomInfo(int room_no) {
		Map<String, Object> tempMap = cinemaService.getCinemaRoom(room_no);
		Map<String, Object> cinemaRoomMap = MapAJaxAdaper.returnAdapter(tempMap);
		return cinemaRoomMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getTimeline", method = RequestMethod.GET)
	public Map<String, Object> getTimelineInfo(int timeline_no) {
		Map<String, Object> tempMap = cinemaService.getRoomTimeline(timeline_no);
		Map<String, Object> roomTimelineInfo = MapAJaxAdaper.returnAdapter(tempMap);
		return roomTimelineInfo;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getRoomTypeCodeList", method = RequestMethod.GET)
	public List<RoomTypeVo> getRoomTypeCodeList() {
		List<RoomTypeVo> roomTypeList = cinemaService.getRoomTypeList();
		return roomTypeList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/searchMovie", method = RequestMethod.GET)
	public List<MovieVo> getMovieList(String movie_name){
		List<MovieVo> movieList = MovieDBService.dbSearchMovie("movie_name", movie_name);
		return movieList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getSeatList", method = RequestMethod.GET)
	public List<RoomSeatVo> getMovieList(int room_no){
		List<RoomSeatVo> roomSeatList = cinemaService.getRoomSeatList(room_no);
		return roomSeatList;
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "/roomSeatAddX", method = RequestMethod.GET)
	public boolean roomSeatAddX(int room_no, int seat_x, String yNum) throws ParseException{
		JSONParser parse = new JSONParser();
		List<String> yNumList = (List<String>)parse.parse(yNum);
		for (String list : yNumList) {
			System.out.println(list);
		}
		boolean result = cinemaService.createRoomSeatX(room_no, seat_x, yNumList);
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "/roomSeatAddY", method = RequestMethod.GET)
	public boolean roomSeatAddY(int room_no, String xNum, String seat_y) throws ParseException {
		System.out.println("room_no : " + room_no);
		System.out.println("xNum : " + xNum);
		System.out.println("seat_y : " + seat_y);
		JSONParser parse = new JSONParser();
		List<String> tempList = (List<String>)parse.parse(xNum);
		List<Integer> xNumList = new ArrayList<>();
		for (String list : tempList) {
			xNumList.add(Integer.parseInt(list));
		}
		boolean result = cinemaService.createRoomSeatY(room_no, xNumList, seat_y);
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "/roomSeatSubX", method = RequestMethod.GET)
	public boolean roomSeatSubX(int room_no, int seat_x, String yNum) throws ParseException {
		JSONParser parse = new JSONParser();
		List<String> tempList = (List<String>)parse.parse(yNum);
		List<String> yNumList = new ArrayList<>();
		for (String list : tempList) {
			yNumList.add(list);
		}
		boolean result = cinemaService.deleteRoomSeatX(room_no, seat_x, yNumList);
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "/roomSeatSubY", method = RequestMethod.GET)
	public boolean roomSeatSubY(int room_no, String xNum, String seat_y) throws ParseException {
		JSONParser parse = new JSONParser();
		List<String> tempList = (List<String>)parse.parse(xNum);
		List<Integer> xNumList = new ArrayList<>();
		for (String list : tempList) {
			xNumList.add(Integer.parseInt(list));
		}
		boolean result = cinemaService.deleteRoomSeatY(room_no, xNumList, seat_y);
		return result;
	}
	
	@RequestMapping(value = "/modifyCinema", method = RequestMethod.GET)
	public String modifyCinemaInfo(int cinema_no, String cinema_name, String cinema_address, String cinema_status, RedirectAttributes rttr) {
		boolean result = cinemaService.modifyCinemaInfo(cinema_no, cinema_name, cinema_address, cinema_status);
		rttr.addFlashAttribute("workName", "?????????");
		rttr.addFlashAttribute("modifyResult", result);
		return "redirect:/mkcinema/cinema";
	}
	
	@RequestMapping(value = "/modifyCinemaRoom", method = RequestMethod.GET)
	public String modifyCinemaRoomInfo(int room_no, String room_name, String room_floor, String room_begin_time, String room_finish_time, RedirectAttributes rttr) {
		boolean room_status = true;
		boolean result = cinemaService.modifyCinemaRoomInfo(room_no, room_name, room_floor, room_begin_time, room_finish_time, room_status);
		rttr.addFlashAttribute("workName", "?????????");
		rttr.addFlashAttribute("modifyResult", result);
		return "redirect:/mkcinema/cinema";
	}
	
	@RequestMapping(value = "/modifyTimeline", method = RequestMethod.GET)
	public String modifyTimelineInfo(int timeline_no, int room_no, String room_type_code, String movie_code, String movie_begin_date, String movie_begin_time, String movie_finish_date, String movie_finish_time, RedirectAttributes rttr) {
		
		boolean movie_status = true;
		movie_begin_date += " " + movie_begin_time; 
		movie_finish_date += " " + movie_finish_time;
		boolean result = cinemaService.modifyRoomTimelineInfo(timeline_no, room_no, room_type_code, movie_code, movie_begin_date, movie_finish_date, movie_status);
		rttr.addFlashAttribute("workName", "?????? ?????????");
		rttr.addFlashAttribute("modifyResult", result);
		return "redirect:/mkcinema/cinema";
	}
	
	@RequestMapping(value = "/createCinema", method = RequestMethod.GET)
	public String createCinema(CinemaVo cinemaVo, RedirectAttributes rttr) {
		boolean result = cinemaService.createCinema(cinemaVo);
		rttr.addFlashAttribute("workName", "?????????");
		rttr.addFlashAttribute("createCinema", result);
		return "redirect:/mkcinema/cinema"; 
	}
	
	@ResponseBody
	@RequestMapping(value = "/createRoom", method = RequestMethod.GET)
	public String createCinema(CinemaRoomVo cinemaRoomVo) {
		boolean result = cinemaService.createCinemaRoom(cinemaRoomVo);
		Object room_no = 0;
		if (result) {
			int cinema_no = cinemaRoomVo.getCinema_no();
			List<Map<String, Object>> roomList = cinemaService.getCinemaRoomList(cinema_no, "room_no", "desc");
			System.out.println(roomList.get(0).get("room_no"));
			room_no = roomList.get(0).get("room_no");
		}
		return String.valueOf(room_no); 
	}
	
	@ResponseBody
	@RequestMapping(value = "/cinemaSeatUse", method = RequestMethod.GET)
	public void modifyUseSeat(int seat_no) {
		boolean seat_status = true;
		boolean result = cinemaService.modifyRoomSeatStatus(seat_no, seat_status);
		System.out.println(result);
	}
	
	@ResponseBody
	@RequestMapping(value = "/cinemaSeatUuse", method = RequestMethod.GET)
	public void modifyUuseSeat(int seat_no) {
		boolean seat_status = false;
		boolean result = cinemaService.modifyRoomSeatStatus(seat_no, seat_status);
		System.out.println(result);
	}
	
	@Transactional
	@RequestMapping(value = "/deleteRoom", method = RequestMethod.GET)
	public String deleteRoom(int room_no, RedirectAttributes rttr) {
		System.out.println(room_no);
		boolean result = false;
		result = cinemaService.deleteRoomSeat(room_no);
		System.out.println("Check : " + result);
		System.out.println("1");
		if (result == true) {
			System.out.println("-2");
			result = cinemaService.deleteCinemaRoom(room_no);
		}
		System.out.println("delete : " + result);
		rttr.addFlashAttribute("cancelResult", result);
		rttr.addFlashAttribute("workName", "?????????, ?????? ??????");
		return "redirect:/mkcinema/cinema";
	}
	
	@RequestMapping(value = "/createSeat", method = RequestMethod.GET)
	public String createSeat(int room_no, RedirectAttributes rttr) {
		if (room_no > 0) {
			rttr.addFlashAttribute("workName", "???????????? ??????");
			rttr.addFlashAttribute("createResult", true);
		}
		return "redirect:/mkcinema/cinema";
	}
	
	@RequestMapping(value = "/createTimeline", method = RequestMethod.GET)
	public String createCinema(RoomTimelineVo roomTimelineVo, RedirectAttributes rttr) {
		String bdate = roomTimelineVo.getMovie_begin_date();
		String fdate = roomTimelineVo.getMovie_finish_date();
		String newBDate = bdate.replace("T", " ");
		String newFDate = fdate.replace("T", " ");
		roomTimelineVo.setMovie_begin_date(newBDate + ":00");
		roomTimelineVo.setMovie_finish_date(newFDate + ":00");
		roomTimelineVo.setMovie_status(true);
		System.out.println(roomTimelineVo);
		boolean result = cinemaService.createRoomTimeline(roomTimelineVo);
		rttr.addFlashAttribute("workName", "?????? ?????????");
		rttr.addFlashAttribute("createResult", result);
		return "redirect:/mkcinema/cinema"; 
	}
}
