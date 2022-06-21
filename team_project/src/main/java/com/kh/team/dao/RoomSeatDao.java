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
	
	// 상영관 내 좌석 전부 삭제
	public boolean deleteRoomSeat(int room_no);
	
	// 좌석 X줄 삭제
	public boolean deleteRoomSeatX(int room_no, int seat_x, List<String> yNum);
	
	// 좌석 Y줄 삭제
	public boolean deleteRoomSeatY(int room_no, List<Integer> xNum, String seat_y);
	
	// 좌석 사용 여부 변경
	public boolean updateRoomSeatStatus(int seat_no, boolean seat_status);
	
}
