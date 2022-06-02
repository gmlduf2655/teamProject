package com.kh.team.dao;

import java.sql.Date;
import java.util.List;

import com.kh.team.vo.TicketingVo;

public interface TicketingDao {
	
	// 영화 예매
	public boolean createTicket(TicketingVo ticketingVo);
	
	// 예매 취소
	public boolean cancelTicketing(int ticketingno, Boolean ticketstatus, Date canceldate);
	
	// 예매 내역 조회
	public List<TicketingVo> getTicketingList();
	
	// 티켓 조회
	public TicketingVo getTicket(int ticketingno);
}
