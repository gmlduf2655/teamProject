package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.TicketVo;

@Repository
public class TicketDaoImpl implements TicketDao {
	private final String NAMESPACE = "com.kh.team.mappers.ticket.";
	
	@Autowired
	private SqlSession sqlSession;
	
	// 티켓 예약하기
	@Override
	public boolean insertTicket(
				TicketVo ticketVo
			) {
		int count = sqlSession.insert(NAMESPACE + "insertTicket", ticketVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 발급된 (유저별, 상영관 스케줄 별) 티켓 리스트 조회
	@Override
	public List<Map<String, Object>> selectTicketList(
				String search_column, 
				Object search_data, 
				String order_column,
				String order_type
			) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("search_column", search_column);
		parameter.put("search_data", search_data);
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);
		List<Map<String, Object>> ticketList = sqlSession.selectList(NAMESPACE + "selectTicketList", parameter);
		return ticketList;
	}

	// 티켓 정보 조회
	@Override
	public TicketVo selectTicket(String ticket_no) {
		TicketVo ticketVo = sqlSession.selectOne(NAMESPACE + "selectTicket", ticket_no);
		return ticketVo;
	}

	// 티켓 예약 수정
	@Override
	public boolean updateTicketStatus(String ticket_no, boolean ticket_status) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("ticket_no", ticket_no);
		parameter.put("ticket_status", ticket_status);
		int count = sqlSession.update(NAMESPACE + "updateTicketStatus", parameter);
		if (count > 0) {
			return true;
		}
		return false;
	}

}
