package com.kh.team;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.RoomSeatDao;
import com.kh.team.vo.RoomSeatVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestRoomSeatDao {
	
	@Autowired
	private RoomSeatDao roomSeatDao;
	
	// 좌석 만들기
	@Test
	public void insertRoomSeatTest() {
		
		int seat_no			= 1;
		int room_no			= 1;
		int seat_x			= 1;
		String seat_y		= "A";
		boolean seat_status	= true;
		String ticket_no		= null;
		
		RoomSeatVo roomSeatVo = new RoomSeatVo(
					seat_no, 
					room_no, 
					seat_x, 
					seat_y, 
					seat_status, 
					ticket_no
				);
		
		boolean result = roomSeatDao.insertRoomSeat(roomSeatVo);
		System.out.println(result);
	}
	
//	// 상영관 좌석 리스트 조회
//	@Test
//	public void selectRoomSeatListTest() {
//		roomSeatDao.selectRoomSeatList(room_no);
//	}

}
