package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.RoomSeatVo;

@Repository
public class RoomSeatDaoImpl implements RoomSeatDao {
	private final String NAMESPACE = "com.kh.team.mappers.room-seat.";
	
	@Autowired
	private SqlSession sqlSession;
	
	// 좌석 만들기
	public boolean insertRoomSeat(
				RoomSeatVo roomSeatVo
			) {
		int count = sqlSession.insert(NAMESPACE + "insertRoomSeat", roomSeatVo);
		if (count > 0) {
			return true;
		}
		return false;
	};
	
	// 상영관 좌석 리스트 조회
	public List<RoomSeatVo> selectRoomSeatList(
				int room_no
			){
		List<RoomSeatVo> roomSeatList = sqlSession.selectList(NAMESPACE + "selectRoomSeatList", room_no);
		return roomSeatList;
	};
	
	// 좌석 정보 조회
	public RoomSeatVo selectRoomSeat(
				int seat_no
			) {
		RoomSeatVo roomSeatVo = sqlSession.selectOne(NAMESPACE + "selectRoomSeat", seat_no);
		return roomSeatVo;
	};
	
	// 좌석 정보 수정
	public boolean updateRoomSeatInfo(
				int seat_no, 
				int seat_x, 
				String seat_y, 
				boolean seat_status
			) {
		
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("seat_no", seat_no);
		parameter.put("seat_x", seat_x);
		parameter.put("seat_y", seat_y);
		parameter.put("seat_status", seat_status);
		sqlSession.update(NAMESPACE + "updateRoomSeatInfo", parameter);
		return false;
	};
	
	// 좌석 예약 상태 변경
	public boolean updateRoomSeatTicket(
				int seat_no, 
				String ticket_no
			) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("seat_no", seat_no);
		parameter.put("ticket_no", ticket_no);
		int count = sqlSession.update(NAMESPACE + "updateRoomSeatTicket", parameter);
		if (count > 0) {
			return true;
		}
		return false;
	};
	

}
