package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.RoomTimelineVo;

@Repository
public class RoomTimelineDaoImpl implements RoomTimelineDao {
	private final String NAMESPACE = "com.kh.team.mappers.room-timeline.";
	
	@Autowired
	private SqlSession sqlSession;
	
	// 상영관 별 스케줄 생성
	@Override
	public boolean insertRoomTimeline(
				RoomTimelineVo roomTimelineVo
			) {
		int count = sqlSession.insert(NAMESPACE + "insertRoomTimeline", roomTimelineVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 상영관별 스케줄 리스트 조회
	@Override
	public List<RoomTimelineVo> selectRoomTimelineList(
				int room_no, 
				String order_column, 
				String order_type
			) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("room_no", room_no);
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);
		List<RoomTimelineVo> roomTimelineList = sqlSession.selectList(NAMESPACE + "selectRoomTimelineList", parameter);
		return roomTimelineList;
	}

	// 영화관 별 영화 스케줄 리스트 조회
	@Override
	public List<RoomTimelineVo> selectRoomTimelineList(
				int cinema_no, 
				String search_column, 
				Object search_data,
				String order_column, 
				String order_type
			) {
		
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("cinema_no", cinema_no);
		parameter.put("search_column", search_column);
		parameter.put("search_data", search_data);
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);
		
		List<RoomTimelineVo> roomTimelineList = sqlSession.selectList(NAMESPACE + "selectRoomTimelineList", parameter);
		return roomTimelineList;
	}

	// 스케줄 정보 조회
	@Override
	public RoomTimelineVo selectRoomTimeline(
				int timeline_no
			) {
		RoomTimelineVo roomTimelineVo = sqlSession.selectOne(NAMESPACE + "selectRoomTimeline", timeline_no);
		return roomTimelineVo;
	}

	// 상영관 스케줄 정보 변경
	@Override
	public boolean updateRoomTimelineInfo(
				int timeline_no, 
				int room_no, 
				String movie_code, 
				String movie_begin_date,
				String movie_finish_date, 
				boolean movie_status
			) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("timeline_no", timeline_no);
		parameter.put("room_no", room_no);
		parameter.put("movie_code", movie_code);
		parameter.put("movie_begin_date", movie_begin_date);
		parameter.put("movie_finish_date", movie_finish_date);
		parameter.put("movie_status", movie_status);
		int count = sqlSession.update(NAMESPACE + "updateRoomTimelineInfo", parameter);
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 상영관 스케줄 상태 변경
	@Override
	public boolean updateRoomTimelineStatus(
				int timeline_no, 
				boolean movie_status
			) {
		
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("timeline_no", timeline_no);
		parameter.put("movie_status", movie_status);
		int count = sqlSession.update(NAMESPACE + "updateRoomTimelineStatus", parameter);
		if (count > 0) {
			return true;
		}
		return false;
	}

}
