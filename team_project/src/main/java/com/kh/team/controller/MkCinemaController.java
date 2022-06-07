package com.kh.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.dao.CinemaDao;
import com.kh.team.dao.CinemaRoomDao;
import com.kh.team.dao.RoomSeatDao;
import com.kh.team.dao.RoomTimelineDao;

@Controller
@RequestMapping("/mkcinema")
public class MkCinemaController {
	
	@Autowired
	private CinemaDao cinemaDao;
	
	@Autowired
	private CinemaRoomDao cinemaRoomDao;
	
	@Autowired
	private RoomSeatDao roomSeatDao;
	
	@Autowired
	private RoomTimelineDao roomTimelineDao;
	
	@RequestMapping(value = "/cinemaDB", method = RequestMethod.GET)
	public String createCinema() {
		return "cinema/cinemaDB";
	}
}
