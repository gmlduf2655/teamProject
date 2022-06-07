package com.kh.team.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

public interface TicketService {

	// 예매하기
	public boolean createTicket();
	
	// 예매 현황 리스트 조회
	public List<Map<String, Object>> getTicketList();
	
	// 티켓 정보 조회
//	public TicketVo select
	
	// 티켓 예약 수정
	
}
