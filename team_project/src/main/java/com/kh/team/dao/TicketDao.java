package com.kh.team.dao;

import java.util.List;
import java.util.Map;

import com.kh.team.vo.TicketVo;

public interface TicketDao {

	// 티켓 예약 번호 얻어내기
	public String getTicketUUID();
	
	// 티켓 예약 하기
	public boolean insertTicket(TicketVo ticketVo);
	
	// 발급된 (유저별, 상영관 스케줄별) 티켓 리스트 조회
	public List<Map<String, Object>> selectTicketList(String search_column, Object search_data, String order_column, String order_type);
	
	// 티켓 정보 조회
	public TicketVo selectTicket(String ticket_no);
	
	// 티켓 예약 수정
	public boolean updateTicketStatus(String ticket_no, boolean ticket_status);
	
}
