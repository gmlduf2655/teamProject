package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.RoomSeatVo;

public interface RoomSeatDao {
	
	// 좌석 만들기
	public boolean insertRoomSeat(RoomSeatVo roomSeatVo);
	
	// 좌석 X줄 늘리기
	public boolean insertRoomSeatX(int room_no, int seat_x, List<String> yNum);
	
	// 좌석 Y줄 늘리기
	public boolean insertRoomSeatY(int room_no, List<Integer> xNum, String seat_y);
	
	// 상영관 좌석 리스트 조회
	public List<RoomSeatVo> selectRoomSeatList(int room_no);
	
	// 좌석 정보 조회
	public RoomSeatVo selectRoomSeat(int seat_no);
	
	// 좌석 정보 수정
	public boolean updateRoomSeatInfo(int seat_no, int seat_x, String seat_y, boolean seat_status);
	
	// 좌석 예약 상태 변경
	public boolean updateRoomSeatTicket(int seat_no, String ticket_no);
	
	// 좌석 삭제
	public boolean deleteRoomSeat(int room_no);
	
}
