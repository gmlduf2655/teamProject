package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.RoomSeatVo;

public interface RoomSeatDao {
	
	// 좌석 만들기
	public boolean insertRoomSeat(RoomSeatVo roomSeatVo);
	
	// 상영관 좌석 리스트 조회
	public List<RoomSeatVo> selectRoomSeatList(int room_no);
	
	// 좌석 정보 조회
	public RoomSeatVo selectRoomSeat(int seat_no);
	
	// 좌석 정보 수정
	public boolean updateRoomSeatInfo(int seat_no, int seat_x, String seat_y, String seat_status);
	
	// 좌석 예약 상태 변경
	public boolean updateRoomSeatTiket(int seat_no, String ticket_no);
	
}
