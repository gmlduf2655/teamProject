package com.kh.team.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.RoomSeatDao;
import com.kh.team.dao.TicketDao;
import com.kh.team.vo.TicketUserVo;
import com.kh.team.vo.TicketVo;

@Service
public class TicketServiceImpl implements TicketService {

	@Autowired
	private TicketDao ticketDao;

	@Override
	public boolean createTicket(TicketVo ticketVo) {
		boolean result = ticketDao.insertTicket(ticketVo);
		return result;
	}

	@Override
	public List<Map<String, Object>> getTicketList(String search_column, Object search_data, String order_column,
			String order_type) {
		List<Map<String, Object>> ticketList = ticketDao.selectTicketList(search_column, search_data, order_column,
				order_type);
		return ticketList;
	}

	@Override
	public Map<String, Object> getTicket(String ticket_no) {
		Map<String, Object> TicketInfo = ticketDao.selectTicket(ticket_no);
		return TicketInfo;
	}

	@Override
	public boolean modifyTicketStatus(String ticket_no, boolean ticket_status) {
		boolean result = ticketDao.updateTicketStatus(ticket_no, ticket_status);
		return result;
	}

	// 임희열 : 유저 영화 예매 정보 조회
	@Override
	public List<TicketUserVo> getTicketUserList(int userno) {
		List<TicketUserVo> ticketUserList = ticketDao.selectTicketUserList(userno);
		return ticketUserList;
	}

	// 임희열 : 티켓번호로 유저 영화 예매 정보 조회
	@Override
	public TicketUserVo getTicketUserVoByTicketno(int userno, String ticket_no) {
		TicketUserVo ticketUserVo = ticketDao.selectTicketUserVoByTicketno(userno, ticket_no);
		return ticketUserVo;
	}

}