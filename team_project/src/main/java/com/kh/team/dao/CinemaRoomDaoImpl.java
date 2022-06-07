package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.CinemaRoomVo;

@Repository
public class CinemaRoomDaoImpl implements CinemaRoomDao {
	private final String NAMESPACE = "com.kh.team.mappers.cinema-room.";
	
	@Autowired
	private SqlSession sqlSession;
	
	// 상영관 생성
	@Override
	public boolean insertCinemaRoom(
				CinemaRoomVo cinemaRoomVo
			) {
		int count = sqlSession.insert(NAMESPACE + "insertCinemaRoom", cinemaRoomVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 영화관 내 상영관 리스트 조회
	@Override
	public List<CinemaRoomVo> selectCinemaRoomList(
				int cinema_no,
				String order_column,
				String order_type
			) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("cinema_no", cinema_no);
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);
		List<CinemaRoomVo> cinemaRoomList = sqlSession.selectList(NAMESPACE + "selectCinemaRoomList", parameter);
		return cinemaRoomList;
	}

	// 해당 영화 상영중인 상영관 리스트 / 상영관 이름, 위치로 상영관 리스트 조회
	@Override
	public List<CinemaRoomVo> selectCinemaRoomList(
				int cinema_no, 
				String search_column, 
				String search_data,
				String order_column,
				String order_type
			) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("cinema_no", cinema_no);
		parameter.put("search_column", search_column);
		parameter.put("search_data", search_data);
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);
		List<CinemaRoomVo> cinemaRoomList = sqlSession.selectList(NAMESPACE + "selectCinemaRoomList", parameter);
		return cinemaRoomList;
	}

	// 상영관 정보 조회
	@Override
	public CinemaRoomVo selectCinemaRoom(int room_no) {
		CinemaRoomVo cinemaRoomVo = sqlSession.selectOne(NAMESPACE + "selectCinemaRoom", room_no);
		return cinemaRoomVo;
	}

	// 상영관 정보 수정
	@Override
	public boolean updateCinemaRoomInfo(
				int room_no,
				String room_name,
				String room_floor,
				String room_begin_time,
				String room_finish_time,
				boolean room_status
			) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("room_no", room_no);
		parameter.put("room_name", room_name);
		parameter.put("room_floor", room_floor);
		parameter.put("room_begin_time", room_begin_time);
		parameter.put("room_finish_time", room_finish_time);
		parameter.put("room_status", room_status);
		int count = sqlSession.update(NAMESPACE + "updateCinemaRoomInfo", parameter);
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 상영관 상태 변경
	@Override
	public boolean updateCinemaRoomStatus(
				int room_no, 
				boolean room_status
			) {
		
		Map<String, Object> parameter = new HashMap<>();
		
		parameter.put("room_no", room_no);
		parameter.put("room_status", room_status);
		
		int result = sqlSession.update(NAMESPACE + "updateCinemaRoomStatus", parameter);
		if (result > 0) {
			return true;
		}
		return false;
	}

}
