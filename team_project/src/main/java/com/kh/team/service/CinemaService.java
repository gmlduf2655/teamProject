package com.kh.team.service;

import java.util.List;
import java.util.Map;

import com.kh.team.vo.CinemaRoomVo;
import com.kh.team.vo.CinemaVo;
import com.kh.team.vo.RoomSeatVo;
import com.kh.team.vo.RoomTimelineVo;
import com.kh.team.vo.RoomTypeVo;

public interface CinemaService {
	
	// 서버 시간 얻어내기
	public String getServerTime();
	
	// 영화관 생성
	public boolean createCinema(CinemaVo cinemaVo);
	
	// 영화관 리스트 조회
	public List<CinemaVo> getCinemaList(String order_column, String order_type);
	
	// 영화관 리스트 조회 (지역별, 영화별, 영화관 이름별)
	public List<CinemaVo> getCinemaList(String search_column, Object search_data, String order_column, String order_type);
	
	// 영화관 정보 조회
	public CinemaVo getCinema(int cinema_no);
	
	// 영화관 정보 수정
	public boolean modifyCinemaInfo(int cinema_no, String cinema_name, String cinema_address, String cinema_status);
	
	// 영화관 상태 변경
	public boolean modifyCinemaStatus(int cinema_no, String cinema_status);
	
	// 등록 영화관 (시 단위) 리스트 얻어내기
	public List<String> getCinemaCityAddressList();
	
	
	//-----------------
	
	
	
	// 상영관 생성
	public boolean createCinemaRoom(CinemaRoomVo cinemaRoomVo);
	
	// 영화관 내 상영관 리스트 조회
	public List<Map<String, Object>> getCinemaRoomList(int cinema_no, String order_column, String order_type); 
	
	// 해당 영화 상영중인 상영관 리스트 / 상영관 이름, 위치로 상영관 리스트 조회
	public List<Map<String, Object>> getCinemaRoomList(int cinema_no, String search_column, String search_data, String order_column, String order_type); 
	
	// 상영관 정보 조회
	public Map<String, Object> getCinemaRoom(int room_no);
	
	// 상영관 정보 수정
	public boolean modifyCinemaRoomInfo(int room_no, String room_name, String room_floor, String room_begin_time, String room_finish_time, boolean room_status);
	
	// 상영관 상태 변경
	public boolean modifyCinemaRoomStatus(int room_no, boolean room_status);
	
	// 상영관 삭제
	public boolean deleteCinemaRoom(int room_no);
	
	

	// ------------------
	
	
	
	// 상영 스케줄 생성
	public boolean createRoomTimeline(RoomTimelineVo roomTimelineVo);

	// 상영 스케줄 리스트 조회
	public List<Map<String, Object>> getRoomTimelineList(int cinema_no, String order_column, String order_type);
	
	// 상영 스케줄 리스트 조회
	public List<Map<String, Object>> getRoomTimelineList(int room_no, String search_column, Object search_data, String order_column, String order_type);
	
	// 상영 스케줄 정보 조회
	public Map<String, Object> getRoomTimeline(int timeline_no);
	
	// 상영 스케줄 정보 수정
	public boolean modifyRoomTimelineInfo(int timeline_no, int room_no, String room_type_code, String movie_code, String movie_begin_date, String movie_finish_date, boolean movie_status);
	
	// 상영 스케줄 상태 변경
	public boolean modifyRoomTimelineStatus(int timeline_no, boolean movie_status);
	
	
	
	// ---------------------
	
	
	
	
	// 좌석 생성
	public boolean createRoomSeat(RoomSeatVo roomSeatVo);
	
	// 좌석 x줄 추가
	public boolean createRoomSeatX(int room_no, int seat_x, List<String> yNum);
	
	// 좌석 y줄 추가
	public boolean createRoomSeatY(int room_no, List<Integer> xNum, String seat_y);
	
	// 좌석 리스트 조회
	public List<RoomSeatVo> getRoomSeatList(int room_no);
	
	// 좌석 정보 조회
	public RoomSeatVo getRoomSeat(int seat_no);
	
	// 좌석 정보 수정
	public boolean modifyRoomSeatInfo(int seat_no, int seat_x, String seat_y, boolean seat_status);
	
	// 좌석 삭제
	public boolean deleteRoomSeat(int room_no);
	
	// 좌석 X줄 삭제
	public boolean deleteRoomSeatX(int room_no, int seat_x, List<String> yNum);
	
	// 좌석 Y줄 삭제
	public boolean deleteRoomSeatY(int room_no, List<Integer> xNum, String seat_y);
	
	
	// 좌석 사용 여부 상태 변경
	public boolean modifyRoomSeatStatus(int seat_no, boolean seat_status);
	
	// -------------------------------------
	
	
	
	
	
	
	// 룸 타입 리스트 조회
	public List<RoomTypeVo> getRoomTypeList();

	
	
	
	
	
	// ---------------------------
}
