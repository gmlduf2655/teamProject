package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.RoomTimelineVo;

public interface RoomTimelineDao {
	
	// 상영관 별 스케줄 생성
	public boolean insertRoomTimeline(
				RoomTimelineVo roomTimelineVo
			);
	
	// 상영관별 스케줄 리스트 조회
	public List<RoomTimelineVo> selectRoomTimelineList(
				int room_no,
				String order_column, 
				String order_type
			);
	
	// 영화관별 영화 스케줄 리스트 조회
	public List<RoomTimelineVo> selectRoomTimelineList(
				int cinema_no,
				String search_column, 
				Object search_data, 
				String order_column, 
				String order_type
			);
	
	// 스케줄 정보 조회
	public RoomTimelineVo selectRoomTimeline(
				int timeline_no
			);
	
	// 상영관 스케줄 정보 변경
	public boolean updateRoomTimelineInfo(
				int timeline_no,
				int room_no,
				String movie_code,
				String movie_begin_date,
				String movie_finish_date,
				boolean movie_status
			);
	
	// 상영관 스케줄 삭제
	public boolean updateRoomTimelineStatus(
				int timeline_no,
				boolean movie_status
			);
	
}
