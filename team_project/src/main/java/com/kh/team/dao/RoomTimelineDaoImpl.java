package com.kh.team.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.util.MapAJaxAdaper;
import com.kh.team.vo.RoomTimelineVo;

@Repository
public class RoomTimelineDaoImpl implements RoomTimelineDao {
	private final String NAMESPACE = "com.kh.team.mappers.room-timeline.";
	
	@Autowired
	private SqlSession sqlSession;
	
	// 상영관 코드 얻어내기
	public String selectRoomTimelineCode(int room_no) {
		String timeline_code = sqlSession.selectOne(NAMESPACE + "selectRoomTimelineCode", room_no);
		return timeline_code;
	};
	
	// 상영관 별 스케줄 생성
	@Override
	public boolean insertRoomTimeline(
				RoomTimelineVo roomTimelineVo
			) {
		System.out.println(roomTimelineVo);
		int count = sqlSession.insert(NAMESPACE + "insertRoomTimeline", roomTimelineVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 상영관별 스케줄 리스트 조회
	@Override
	public List<Map<String, Object>> selectRoomTimelineList(
				int room_no, 
				String order_column, 
				String order_type
			) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("room_no", room_no);
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);
		List<Map<String, Object>> tempList = sqlSession.selectList(NAMESPACE + "selectRoomTimelineList", parameter);
		List<Map<String, Object>> roomTimelineList = new ArrayList<>();
		for (Map<String, Object> map : tempList) {
			Map<String, Object> tempMap = new HashMap<>();
			for (Map.Entry<String, Object> entry : map.entrySet()) {
				String keys = entry.getKey().toLowerCase();
				Object values = entry.getValue();
				tempMap.put(keys, values);
			}
			roomTimelineList.add(tempMap);
		}
		return roomTimelineList;
	}

	// 영화관 별 영화 스케줄 리스트 조회
	@Override
	public List<Map<String, Object>> selectRoomTimelineList(
				int room_no, 
				String search_column, 
				Object search_data,
				String order_column, 
				String order_type
			) {
		
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("room_no", room_no);
		parameter.put("search_column", search_column);
		parameter.put("search_data", search_data);
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);
		
		List<Map<String, Object>> tempList = sqlSession.selectList(NAMESPACE + "selectRoomTimelineList", parameter);
		List<Map<String, Object>> roomTimelineList = new ArrayList<>();
		for (Map<String, Object> map : tempList) {
			Map<String, Object> tempMap = new HashMap<>();
			for (Map.Entry<String, Object> entry : map.entrySet()) {
				String keys = entry.getKey().toLowerCase();
				Object values = entry.getValue();
				tempMap.put(keys, values);
			}
			roomTimelineList.add(tempMap);
		}
		return roomTimelineList;
	}

	// 스케줄 정보 조회
	@Override
	public Map<String, Object> selectRoomTimeline(
				int timeline_no
			) {
		Map<String, Object> tempMap = sqlSession.selectOne(NAMESPACE + "selectRoomTimeline", timeline_no);
		Map<String, Object> roomTimelineInfo = new HashMap<>();
		for (Map.Entry<String, Object> entry : tempMap.entrySet()) {
			String keys = entry.getKey().toLowerCase();
			Object values = entry.getValue();
			roomTimelineInfo.put(keys, values);
		}
		return roomTimelineInfo;
	}

	// 상영관 스케줄 정보 변경
	@Override
	public boolean updateRoomTimelineInfo(
				int timeline_no, 
				int room_no, 
				String room_type_code,
				String movie_code, 
				String movie_begin_date,
				String movie_finish_date, 
				boolean movie_status
			) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("timeline_no", timeline_no);
		parameter.put("room_no", room_no);
		parameter.put("room_type_code", room_type_code);
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
