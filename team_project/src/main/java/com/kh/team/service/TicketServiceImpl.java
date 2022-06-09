package com.kh.team.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.kh.team.dao.RoomSeatDao;
import com.kh.team.dao.TicketDao;
import com.kh.team.vo.TicketVo;

public class TicketServiceImpl implements TicketService {

	@Autowired
	private TicketDao ticketDao;

	@Autowired
	private RoomSeatDao roomSeatDao;

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

	@Override
	public boolean modifyRoomSeatTicket(int seat_no, String ticket_no) {
		boolean result = roomSeatDao.updateRoomSeatTicket(seat_no, ticket_no);
		return result;
	}

}