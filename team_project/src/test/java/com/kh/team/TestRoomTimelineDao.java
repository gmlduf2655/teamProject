package com.kh.team;

import java.util.List;

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
	
	// 상영관 스케줄 생성
	@Test
	public void insertRoomTimelineTest() {
		
		int cinema_no				= 1;
		int room_no					= 3;
		String movie_code			= "20204548";
		String movie_begin_date		= "12:20";
		String movie_finish_date	= "13:50";
		boolean movie_status		= true;
		
		RoomTimelineVo roomTimelineVo = new RoomTimelineVo(cinema_no, room_no, movie_code, movie_begin_date, movie_finish_date, movie_status);
		
		boolean result = roomTimelineDao.insertRoomTimeline(roomTimelineVo);
		System.out.println("result : " + result);
	}
	
	// 상영관별 스케줄 리스트 조회
	@Test
	public void selectRoomTimelineListTest() {
		
		int room_no				= 1;
//		int cinema_no			= 1;
//		String search_column	= "movie_code";
//		String search_data		= "20225365";
		String order_column		= "room_no";
		String order_type		= "desc";
		
		List<RoomTimelineVo> roomTimelineList = roomTimelineDao.selectRoomTimelineList(room_no, order_column, order_type);
//		List<RoomTimelineVo> roomTimelineList = roomTimelineDao.selectRoomTimelineList(cinema_no, search_column, search_data, order_column, order_type);
		
		for (RoomTimelineVo roomTimelineVo : roomTimelineList) {
			System.out.println("roomTimelineList : " + roomTimelineVo);
		}
	}
	
	// 스케줄 정보 조회
	@Test
	public void selectRoomTimelineTest() {
		int timeline_no = 1;
		RoomTimelineVo roomTimelineVo = roomTimelineDao.selectRoomTimeline(timeline_no);
		System.out.println(roomTimelineVo);
	}
	
	// 상영 스케줄 정보 변경
	@Test
	public void updateRoomTimelineInfo() {
		
		int timeline_no				= 1;
		int room_no					= 1;
		String movie_code			= "20225365";
		String movie_begin_date		= "00:00";
		String movie_finish_date	= "00:15";
		boolean movie_status		= false;
		
		boolean result = roomTimelineDao.updateRoomTimelineInfo(timeline_no, room_no, movie_code, movie_begin_date, movie_finish_date, movie_status);
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
