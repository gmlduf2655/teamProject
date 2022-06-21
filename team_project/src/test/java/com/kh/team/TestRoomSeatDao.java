package com.kh.team;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		int seat_x			= 2;
		String seat_y		= "B";
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
	
	// x줄 추가하기
	@Test
	public void insertRoomSeatXTest() {
		int room_no = 2;
		int seat_x = 4;
		List<String> YNum = new ArrayList<>();
		YNum.add("A");
		YNum.add("B");
		YNum.add("C");
		boolean result = roomSeatDao.insertRoomSeatX(room_no, seat_x, YNum);
		System.out.println(result);
	}
	
	// y줄 추가하기
	@Test
	public void insertRoomSeatYTest() {
		int room_no	= 2;
		String seat_y = "D";
		List<Integer> xNum = new ArrayList<>();
		xNum.add(1);
		xNum.add(2);
		xNum.add(3);
		xNum.add(4);
		boolean result = roomSeatDao.insertRoomSeatY(room_no, xNum, seat_y);
		System.out.println(result);
	}
	
	// 상영관 좌석 리스트 조회
	@Test
	public void selectRoomSeatListTest() {
		int room_no = 1;
		List<RoomSeatVo> roomSeatList = roomSeatDao.selectRoomSeatList(room_no);
		for (RoomSeatVo vo : roomSeatList) {
			System.out.println("roomSeatList :" + vo);
		}
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
	
	// 좌석 삭제
	@Test
	public void deleteRoomSeatTest() {
		boolean result = roomSeatDao.deleteRoomSeat(130);
		System.out.println(result);
	}
	
	// x줄 삭제
	@Test
	public void deleteRoomSeatXTest() {
		int room_no = 2;
		int seat_x = 25; 
		List<String> yNum = new ArrayList<>();
		yNum.add("A");
		yNum.add("B");
		yNum.add("C");
		yNum.add("D");
		yNum.add("E");
		yNum.add("F");
		
		boolean result = roomSeatDao.deleteRoomSeatX(room_no, seat_x, yNum);
		System.out.println(result);
	}
	
	// Y줄 삭제
	@Test
	public void deleteRoomSeatYText() {
		int room_no = 122;
		List<Integer> xNum = new ArrayList<>();
		xNum.add(1);
		xNum.add(2);
		String seat_y = "B";
		boolean result = roomSeatDao.deleteRoomSeatY(room_no, xNum, seat_y);
		System.out.println(result);
	}
	
	// 좌석 사용 여부 상태 변경
	@Test
	public void updateRoomSeatStatus() {
		int seat_no = 122;
		boolean seat_status = false;
		boolean result = roomSeatDao.updateRoomSeatStatus(seat_no, seat_status);
		System.out.println(result);
	}

}
