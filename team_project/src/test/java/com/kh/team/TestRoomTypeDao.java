package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.RoomTypeDao;
import com.kh.team.vo.RoomTypeVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestRoomTypeDao {
	
	@Autowired
	private RoomTypeDao roomTypeDao;
	
	// 상영관 타입 만들기
	@Test
	public void insertRoomTypeTest() {
		
		String room_type_code = "";
		String room_type = "영화";
		int room_price = 5000;
		
		RoomTypeVo roomTypeVo = new RoomTypeVo(room_type_code, room_type, room_price);
		
		boolean result = roomTypeDao.insertRoomType(roomTypeVo);
		System.out.println(result);
	}
	
	// 상영관 타입 리스트 조회
	@Test
	public void selectRoomTypeListTest() {
		List<RoomTypeVo> roomTypeList = roomTypeDao.selectRoomTypeList();
		for (RoomTypeVo roomTypeVo : roomTypeList) {
			System.out.println(roomTypeVo);
		}
	}
	
	// 상영관 타입 정보 수정
	@Test
	public void updateTest() {
		
		int room_type_no = 7;
		String room_type_code = "01";
		String room_type = "영화 가격 수정";
		int room_price = 1000;
		
		boolean result = roomTypeDao.updateRoomTypeInfo(room_type_no, room_type_code, room_type, room_price);
		System.out.println(result);
	}
	
	// 상영관 타입 삭제
	@Test
	public void deleteTest() {
		boolean result = roomTypeDao.deleteRoomType(7);
		System.err.println(result);
		
	}
	
}
