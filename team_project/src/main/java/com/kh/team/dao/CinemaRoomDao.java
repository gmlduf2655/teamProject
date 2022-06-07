package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.CinemaRoomVo;


public interface CinemaRoomDao {
	
	// 상영관 생성
	public boolean insertCinemaRoom(CinemaRoomVo cinemaRoomVo);
	
	// 영화관 내 상영관 리스트 조회
	public List<CinemaRoomVo> selectCinemaRoomList(int cinema_no, String order_column, String order_type);
	
	// 해당 영화 상영중인 상영관 리스트 / 상영관 이름으로 상영관 리스트 조회
	public List<CinemaRoomVo> selectCinemaRoomList(int cinema_no, String search_column, String search_data, String order_column, String order_type);
	
	// 상영관 정보 조회
	public CinemaRoomVo selectCinemaRoom(int room_no);
	
	// 상영관 정보 수정
	public boolean updateCinemaRoomInfo(
			int room_no,
			String room_name,
			String room_floor,
			String room_begin_time,
			String room_finish_time,
			boolean room_status);
	
	// 상영관 상태 변경
	public boolean updateCinemaRoomStatus(int room_no, boolean room_status);
	
}
