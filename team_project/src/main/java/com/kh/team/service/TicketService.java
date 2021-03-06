package com.kh.team.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.kh.team.vo.TicketUserVo;
import com.kh.team.vo.TicketVo;

public interface TicketService {
	
	// 예매하기
	public boolean createTicket(TicketVo ticketVo);
	
	// 예매 현황 리스트 조회
	public List<Map<String, Object>> getTicketList(String search_column, Object search_data, String order_column, String order_type);
	
	// 티켓 정보 조회
	public Map<String, Object> getTicket(String ticket_no);
	
	// 티켓 예약 수정
	public boolean modifyTicketStatus(String ticket_no, boolean ticket_status);
	
	// 임희열 : 총 예매 비용 조회
	public int getTotalTicketPrice();
	
	// 임희열 : 유저 영화 예매 정보 조회
	public List<TicketUserVo> getTicketUserList(int userno);
	
	// 임희열 : 티켓번호로 유저 영화 예매 정보 조회
	public TicketUserVo getTicketUserVoByTicketno(int userno, String ticket_no);
}
