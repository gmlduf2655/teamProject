package com.kh.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.dao.GetServerTimeDao;
import com.kh.team.dao.TicketDao;
import com.kh.team.service.CinemaService;
import com.kh.team.vo.RoomTypeVo;

@Controller
@RequestMapping(value = "/ticket")
public class TicketController {

	@Autowired
	private GetServerTimeDao getServerTimeDao;
	
	@Autowired
	private CinemaService cinemaService;
	
	@Autowired
	private TicketDao ticketDao;
	
	@RequestMapping(value = "/ticketing", method = RequestMethod.GET)
	public String ticketViewer(Model model) {
		List<String> cinemaList = cinemaService.getCinemaCityAddressList();
		List<RoomTypeVo> roomTypeList = cinemaService.getRoomTypeList();
		String time = getServerTimeDao.getServerDate();
		model.addAttribute("cinemaCityList", cinemaList);
		model.addAttribute("roomTypeList", roomTypeList);
		model.addAttribute("serverTime", time);
		return "ticket/ticketing";
	}
}
