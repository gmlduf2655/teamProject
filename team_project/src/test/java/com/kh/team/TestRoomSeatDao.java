package com.kh.team;

import java.util.List;

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
	
	// 상영관 좌석 리스트 조회
	@Test
	public void selectRoomSeatListTest() {
		int room_no = 1;
		List<RoomSeatVo> roomSeatList = roomSeatDao.selectRoomSeatList(room_no);
		System.out.println("roomSeatList :" + roomSeatList);
	}
	
	// 좌석 정보 조회
	@Test
	public void selectRoomSeatTest() {
		
		int seat_no = 1;
		
		RoomSeatVo roomSeatVo = roomSeatDao.selectRoomSeat(seat_no);
		System.out.println("roomSeatVo" + roomSeatVo);
	}
	
	// 좌석 정보 수정
	@Test
	public void updateRoomSeatInfo() {
		
		int seat_no			= 1;
		int seat_x			= 1;
		String seat_y		= "A";
		boolean seat_status	= false;
		
		boolean result = roomSeatDao.updateRoomSeatInfo(seat_no, seat_x, seat_y, seat_status);
		System.out.println("updateRoomSeatInfo, result : " + result);
	}
	
	// 좌석 예약 상태 변경
	@Test
	public void updateRoomSeatTicketTest() {
		
		int seat_no			= 1;
		String ticket_no	= null;
		
		boolean result = roomSeatDao.updateRoomSeatTicket(seat_no, ticket_no);
		System.out.println("updateRoomSeatTicket, result : "+ result);
	}

}
