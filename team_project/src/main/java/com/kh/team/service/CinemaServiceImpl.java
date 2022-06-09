package com.kh.team.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.team.dao.CinemaDao;
import com.kh.team.dao.CinemaRoomDao;
import com.kh.team.dao.RoomSeatDao;
import com.kh.team.dao.RoomTimelineDao;
import com.kh.team.vo.CinemaRoomVo;
import com.kh.team.vo.CinemaVo;
import com.kh.team.vo.RoomSeatVo;
import com.kh.team.vo.RoomTimelineVo;

@Controller
public class CinemaServiceImpl implements CinemaService {

	@Autowired
	private CinemaDao cinemaDao;
	
	@Autowired
	private CinemaRoomDao cinemaRoomDao;
	
	@Autowired
	private RoomTimelineDao roomtimelineDao;
	
	@Autowired
	private RoomSeatDao roomSeatDao;
	
	@Override
	public boolean createCinema(CinemaVo cinemaVo) {
		boolean result = cinemaDao.insertCinema(cinemaVo);
		return result;
	}

	@Override
	public List<CinemaVo> getCinemaList(String order_column, String order_type) {
		List<CinemaVo> cinemaList = cinemaDao.selectCinemaList(order_column, order_type);
		return cinemaList;
	}

	@Override
	public List<CinemaVo> getCinemaList(String search_column, Object search_data, String order_column,
			String order_type) {
		List<CinemaVo> cinemaVo = cinemaDao.selectCinemaList(search_column, search_data, order_column, order_type);
		return cinemaVo;
	}

	@Override
	public CinemaVo getCinema(int cinema_no) {
		CinemaVo cinemaVo = cinemaDao.selectCinema(cinema_no);
		return cinemaVo;
	}

	@Override
	public boolean modifyCinemaInfo(int cinema_no, String cinema_name, String cinema_address, String cinema_status) {
		boolean result = cinemaDao.updateCinemaInfo(cinema_no, cinema_name, cinema_address, cinema_status);
		return result;
	}

	@Override
	public boolean modifyCinemaStatus(int cinema_no, String cinema_status) {
		boolean result = cinemaDao.updateCinemaStatus(cinema_no, cinema_status);
		return result;
	}

	@Override
	public boolean createCinemaRoom(CinemaRoomVo cinemaRoomVo) {
		boolean result = cinemaRoomDao.insertCinemaRoom(cinemaRoomVo);
		return result;
	}

	@Override
	public List<Map<String, Object>> getCinemaRoomList(int cinema_no, String order_column, String order_type) {
		List<Map<String, Object>> cinemaRoomList = cinemaRoomDao.selectCinemaRoomList(cinema_no, order_column, order_type);
		return cinemaRoomList;
	}

	@Override
	public List<Map<String, Object>> getCinemaRoomList(int cinema_no, String search_column, String search_data, String order_column, String order_type) {
		List<Map<String, Object>> cinemaRoomList = cinemaRoomDao.selectCinemaRoomList(cinema_no, search_column, search_data, order_column, order_type);
		return cinemaRoomList;
	}

	@Override
	public Map<String, Object> getCinemaRoom(int room_no) {
		Map<String, Object> cinemaRoomVo = cinemaRoomDao.selectCinemaRoom(room_no);
		return cinemaRoomVo;
	}

	@Override
	public boolean modifyCinemaRoomInfo(int room_no, String room_name, String room_floor, String room_begin_time, String room_finish_time, boolean room_status, String room_type_code) {
		boolean result = cinemaRoomDao.updateCinemaRoomInfo(room_no, room_type_code, room_name, room_floor, room_begin_time, room_finish_time, room_status);
		return result;
	}

	@Override
	public boolean modifyCinemaRoomStatus(int room_no, boolean room_status) {
		boolean result = cinemaRoomDao.updateCinemaRoomStatus(room_no, room_status);
		return result;
	}

	@Override
	public boolean createRoomTimeline(RoomTimelineVo roomTimelineVo) {
		boolean result = roomtimelineDao.insertRoomTimeline(roomTimelineVo);
		return result;
	}

	@Override
	public List<Map<String, Object>> getRoomTimelineList(int room_no, String order_column, String order_type) {
		List<Map<String, Object>> roomTimelineList = roomtimelineDao.selectRoomTimelineList(room_no, order_column, order_type);
		return roomTimelineList;
	}

	@Override
	public List<Map<String, Object>> getRoomTimelineList(int cinema_no, String search_column, Object search_data, String order_column, String order_type) {
		List<Map<String, Object>> roomTimelineList = roomtimelineDao.selectRoomTimelineList(cinema_no, search_column, search_data, order_column, order_type);
		return roomTimelineList;
	}

	@Override
	public RoomTimelineVo getRoomTimeline(int timeline_no) {
		RoomTimelineVo roomTimelineVo = roomtimelineDao.selectRoomTimeline(timeline_no);
		return roomTimelineVo;
	}

	@Override
	public boolean modifyRoomTimelineInfo(int timeline_no, int room_no, String movie_code, String movie_begin_date, String movie_finish_date, boolean movie_status) {
		boolean result = roomtimelineDao.updateRoomTimelineInfo(timeline_no, room_no, movie_code, movie_begin_date, movie_finish_date, movie_status);
		return result;
	}

	@Override
	public boolean modifyRoomTimelineStatus(int timeline_no, boolean movie_status) {
		boolean result = roomtimelineDao.updateRoomTimelineStatus(timeline_no, movie_status);
		return result;
	}

	@Override
	public boolean createRoomSeat(RoomSeatVo roomSeatVo) {
		boolean result = roomSeatDao.insertRoomSeat(roomSeatVo);
		return result;
	}

	@Override
	public List<RoomSeatVo> getRoomSeatList(int room_no) {
		List<RoomSeatVo> roomSeatList = roomSeatDao.selectRoomSeatList(room_no);
		return roomSeatList;
	}

	@Override
	public RoomSeatVo getRoomSeat(int seat_no) {
		RoomSeatVo roomSeatVo = roomSeatDao.selectRoomSeat(seat_no);
		return roomSeatVo;
	}

	@Override
	public boolean modifyRoomSeatInfo(int seat_no, int seat_x, String seat_y, boolean seat_status) {
		boolean result = roomSeatDao.updateRoomSeatInfo(seat_no, seat_x, seat_y, seat_status);
		return result;
	}

}
