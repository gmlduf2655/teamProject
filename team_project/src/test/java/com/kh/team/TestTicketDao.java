package com.kh.team;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.TicketDao;
import com.kh.team.vo.TicketVo;

/**
 * @author KH302
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestTicketDao {

	@Autowired
	private TicketDao ticketDao;
	
	// 티켓 예약하기 테스트
	@Test
	public void insertTicketTest() {
		
		String ticket_no		= ticketDao.getTicketUUID();
		int user_no				= 1;
		int timeline_no			= 2;
		int seat_no				= 1;
		boolean ticket_status	= false;
		
		TicketVo ticketVo = new TicketVo(ticket_no, user_no, timeline_no, seat_no, ticket_status);
		
		boolean result = ticketDao.insertTicket(ticketVo);
		System.out.println("insertTicketTest, result : " + result);
	}
	
	// 발급된 (유저별, 상영관 스케줄 별) 티켓 리스트 조회
	@Test
	public void selectTicketListTest() {
		
		String search_column	= "room_no";
		String search_data		= "1";
		String order_column		= "ticket_regdate";
		String order_type		= "asc";
		
		List<Map<String, Object>> ticketList = ticketDao.selectTicketList(search_column, search_data, order_column, order_type);
		for (Map<String, Object> map : ticketList) {
			System.out.println("ticketList" + map);
		}
	}
	
	// 티켓 정보 조회
	@Test
	public void selectTicketTest() {
		String ticket_no = "19A584CE82DB4F5C82792D4F07D154B7";
		Map<String, Object> ticketInfo = ticketDao.selectTicket(ticket_no);
		System.out.println(ticketInfo);
	}
	
	// 티켓 예약 수정
	@Test
	public void updateTicketStatusTest() {
		
		String ticket_no		= "1234";
		boolean ticket_status	= false;
		
		boolean result = ticketDao.updateTicketStatus(ticket_no, ticket_status);
		System.out.println(result);
	}
}
