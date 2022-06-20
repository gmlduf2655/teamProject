package com.kh.team;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.CinemaRoomDao;
import com.kh.team.vo.CinemaRoomVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestCinemaRoomDao {
	
	@Autowired
	private CinemaRoomDao cinemaRoomDao;
	
	@Test
	public void insertCinemaRoomTest() {
		
		int cinema_no			= 4;
		String room_name		= "상영관 4";
		String room_floor		= "5층";
		String room_begin_time	= "00:00";
		String room_finish_time	= "12:50";
		boolean room_status		= false;
		
		CinemaRoomVo cinemaRoomVo = new CinemaRoomVo(cinema_no, room_name, room_floor, room_begin_time, room_finish_time, room_status); 
		boolean result = cinemaRoomDao.insertCinemaRoom(cinemaRoomVo);
		System.out.println(result);
	}
	
	// 해당 영화 상영중인 상영관 리스트 / 상영관 이름, 위치로 상영관 리스트 조회
	@Test
	public void selectCinemaRoomListTest() {
		
		int cinema_no			= 1;
//		String search_column	= "movie_code";
//		String search_data		= "20204548";
		String order_column		= "room_no";
		String order_type		= "asc";
		
		List<Map<String, Object>> cinemaRoomList = cinemaRoomDao.selectCinemaRoomList(cinema_no, order_column, order_type);
//		List<Map<String, Object>> cinemaRoomList = cinemaRoomDao.selectCinemaRoomList(cinema_no, search_column, search_data, order_column, order_type);
		
//		for (CinemaRoomVo vo : cinemaRoomList) {
//			System.out.println("cinemaList : " + vo);
//		}
		System.out.println("cinemaList : " + cinemaRoomList);
	}
	
	// 상영관 정보 조회
	@Test
	public void selectCinemaRoomTest() {
		
		int room_no = 1;
		
		Map<String, Object> cinemaRoomVo = cinemaRoomDao.selectCinemaRoom(room_no);
		System.out.println(cinemaRoomVo);
	}
	
	// 상영관 정보 수정
	@Test
	public void updateCinemaRoomInfoTest() {
		
		int room_no				= 1;
		String room_type_code	= "01";
		String room_name		= "상영관 수정 1";
		String room_floor		= "22층";
		String room_begin_time	= "20:50";
		String room_finish_time	= "00:50";
		boolean room_status		= true;
		
		boolean result = cinemaRoomDao.updateCinemaRoomInfo(room_no, room_name, room_floor, room_begin_time, room_finish_time, room_status);
		System.err.println("updateCinemaRoomInfo, result : " + result);
		
	}
	
	// 상영관 상태 변경
	@Test
	public void updateCinemaRoomStatusTest() {
		
		int room_no			= 4;
		boolean room_status	= true;
		
		boolean result = cinemaRoomDao.updateCinemaRoomStatus(room_no, room_status);
		System.out.println(result);
	}
	
	// 상영관 삭제
	@Test
	public void deleteCinemaRoom() {
		int room_no = 130;
		boolean result = cinemaRoomDao.deleteCinemaRoom(room_no);
		System.out.println(result);
	}
}
