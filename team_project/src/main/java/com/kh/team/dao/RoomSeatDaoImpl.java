package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.team.vo.RoomSeatVo;

import oracle.jdbc.aq.AQNotificationListener;

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

	@Override
	@Transactional
	public boolean insertRoomSeatX(int room_no, int seat_x, List<String> yNum) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("room_no", room_no);
		parameter.put("seat_x", seat_x);
		int count = 0;
		for(String a : yNum) {
			parameter.put("seat_y", a);
			count += sqlSession.insert(NAMESPACE + "insertRoomSeatXY", parameter);
		}
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	@Transactional
	public boolean insertRoomSeatY(int room_no, List<Integer> xNum, String seat_y) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("room_no", room_no);
		int count = 0;
		parameter.put("seat_y", seat_y);
		for (int a : xNum) {
			parameter.put("seat_x", a);
			count += sqlSession.insert(NAMESPACE + "insertRoomSeatXY", parameter);
		}
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 좌석 삭제
	@Override
	public boolean deleteRoomSeat(int room_no) {
		int count = sqlSession.delete(NAMESPACE + "deleteRoomSeat", room_no);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	@Transactional
	public boolean deleteRoomSeatX(int room_no, int seat_x, List<String> yNum) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("room_no", room_no);
		parameter.put("seat_x", seat_x);
		int count = 0;
		for (String seat_y : yNum) {
			parameter.put("seat_y", seat_y);
			count += sqlSession.delete(NAMESPACE + "deleteRoomSeatXY", parameter);
		}
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	@Transactional
	public boolean deleteRoomSeatY(int room_no, List<Integer> xNum, String seat_y) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("room_no", room_no);
		parameter.put("seat_y", seat_y);
		int count = 0;
		for (int seat_x : xNum) {
			parameter.put("seat_x", seat_x);
			count += sqlSession.delete(NAMESPACE + "deleteRoomSeatXY", parameter);
		}
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 영화관 시트 사용상태 변경
	@Override
	public boolean updateRoomSeatStatus(int seat_no, boolean seat_status) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("seat_no", seat_no);
		parameter.put("seat_status", seat_status);
		int count = sqlSession.update(NAMESPACE + "updateRoomSeatStatus", parameter);
		if (count > 0) {
			return true;
		}
		return false;
	};
	

}
