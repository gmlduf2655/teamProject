package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.RoomTypeVo;

public interface RoomTypeDao {
	
	// 상영관 타입 만들기
	public boolean insertRoomType(RoomTypeVo roomTypeVo);
	
	// 상영관 타입 조회하기
	public List<RoomTypeVo> selectRoomTypeList();
	
	// 상영관 타입 정보 수정하기
	public boolean updateRoomTypeInfo(int room_type_no, String room_type_code, String room_type, int room_price);
	
	// 상영관 타입 삭제하기
	public boolean deleteRoomType(int room_type_no);
	
}
