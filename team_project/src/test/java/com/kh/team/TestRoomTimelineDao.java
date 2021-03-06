package com.kh.team;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.RoomTimelineDao;
import com.kh.team.vo.RoomTimelineVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestRoomTimelineDao {

	@Autowired
	private RoomTimelineDao roomTimelineDao;
	
	// 상영관 코드 얻어내기 테스트
	@Test
	public void selectRoomTimelineCodeTest() {
		String timeline_code = roomTimelineDao.selectRoomTimelineCode(1);
		System.out.println(timeline_code);
	}
	
	// 상영관 스케줄 생성
	@Test
	public void insertRoomTimelineTest() {
		
		int cinema_no				= 1;
		int room_no					= 3;
		String room_type_code		= "01";
		String movie_code			= "20204548";
		String movie_begin_date		= "2020-12-12 12:20";
		String movie_finish_date	= "2020-12-12 13:50";
		boolean movie_status		= true;
		
		RoomTimelineVo roomTimelineVo = new RoomTimelineVo(cinema_no, room_no, room_type_code, movie_code, movie_begin_date, movie_finish_date, movie_status);
		
		boolean result = roomTimelineDao.insertRoomTimeline(roomTimelineVo);
		System.out.println("result : " + result);
	}
	
	// 상영관별 스케줄 리스트 조회
	@Test
	public void selectRoomTimelineListTest() {
		
		int room_no				= 1;
		String search_column	= "movie_begin_date";
		String search_data		= "2022-06-02";
		String order_column		= "room_no";
		String order_type		= "desc";
		
//		List<Map<String, Object>> roomTimelineList = roomTimelineDao.selectRoomTimelineList(room_no, order_column, order_type);
		List<Map<String, Object>> roomTimelineList = roomTimelineDao.selectRoomTimelineList(room_no, search_column, search_data, order_column, order_type);
		
		for (Map<String, Object> roomTimelineInfo : roomTimelineList) {
			System.out.println("roomTimelineList : " + roomTimelineInfo);
		}
	}
	
	// 스케줄 정보 조회
	@Test
	public void selectRoomTimelineTest() {
		int timeline_no = 1;
		Map<String, Object> roomTimelineVo = roomTimelineDao.selectRoomTimeline(timeline_no);
		System.out.println(roomTimelineVo);
	}
	
	// 상영 스케줄 정보 변경
	@Test
	public void updateRoomTimelineInfo() {
		
		int timeline_no				= 1;
		int room_no					= 1;
		String room_type_code		= "01";
		String movie_code			= "20225365";
		String movie_begin_date		= "00:00";
		String movie_finish_date	= "00:15";
		boolean movie_status		= false;
		
		boolean result = roomTimelineDao.updateRoomTimelineInfo(timeline_no, room_no, room_type_code, movie_code, movie_begin_date, movie_finish_date, movie_status);
		System.out.println(result);
	}
	
	// 상영관 스케줄 상태 변경
	@Test
	public void updateRoomTimelineStatusTest() {
		int timeline_no = 1;
		boolean movie_status = true;
		boolean result = roomTimelineDao.updateRoomTimelineStatus(timeline_no, movie_status);
		System.out.println(result);
	}
}
