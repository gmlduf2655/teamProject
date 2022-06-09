package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.RoomTypeVo;

@Repository
public class RoomTypeDaoImpl implements RoomTypeDao {
	private final String NAMESPACE = "com.kh.team.mappers.room-type.";
	
	@Autowired
	private SqlSession sqlSession;
	
	// 상영관 타입 만들기
	@Override
	public boolean insertRoomType(RoomTypeVo roomTypeVo) {
		int count = sqlSession.insert(NAMESPACE + "insertRoomType", roomTypeVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 상영관 타입 리스트 조회
	@Override
	public List<RoomTypeVo> selectRoomTypeList() {
		List<RoomTypeVo> roomTypeList = sqlSession.selectList(NAMESPACE + "selectRoomTypeList");
		return roomTypeList;
	}
	
	// 상영관 타입 정보 수정
	@Override
	public boolean updateRoomTypeInfo(int room_type_no, String room_type_code, String room_type, int room_price) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("room_type_no", room_type_no);
		parameter.put("room_type_code", room_type_code);
		parameter.put("room_type", room_type);
		parameter.put("room_price", room_price);
		int count = sqlSession.update(NAMESPACE + "updateRoomTypeInfo", parameter);
		if (count > 0) {
			return true;
		}
		return false;
	}
	
	// 상영관 타입 삭제
	@Override
	public boolean deleteRoomType(int room_type_no) {
		int count = sqlSession.delete(NAMESPACE + "deleteRoomType", room_type_no);
		if (count > 0) {
			return true;
		}
		return false;
	}

}
