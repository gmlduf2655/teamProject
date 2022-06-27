package com.kh.team.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.team.vo.TicketUserVo;
import com.kh.team.vo.TicketVo;

@Repository
public class TicketDaoImpl implements TicketDao {
	private final String NAMESPACE = "com.kh.team.mappers.ticket.";

	@Autowired
	private SqlSession sqlSession;

	// 티켓 예약 번호 얻기
	public String selectTicketCode() {
		String uuid = sqlSession.selectOne(NAMESPACE + "getTicketUUID");
		return uuid;
	}

	// 티켓 예약하기
	@Override
	public boolean insertTicket(TicketVo ticketVo) {
		int count = sqlSession.insert(NAMESPACE + "insertTicket", ticketVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	// 발급된 (유저별, 상영관 스케줄 별) 티켓 리스트 조회
	@Override
	public List<Map<String, Object>> selectTicketList(String search_column, Object search_data, String order_column,
			String order_type) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("search_column", search_column);
		parameter.put("search_data", search_data);
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);
		// 값을 조회해서 임시로 받아놓음
		List<Map<String, Object>> tempList = sqlSession.selectList(NAMESPACE + "selectTicketList", parameter);
		// column 값을 소문자로 바꿔서 다시 넣을 ArrayList객체 생성
		List<Map<String, Object>> ticketList = new ArrayList<>();
		// key, value 값을 다 꺼내서 key값은 소문자로 변경 후 다시 리스트로 담기
		for (Map<String, Object> map : tempList) {
			Map<String, Object> addList = new HashMap<>();
			for (Map.Entry<String, Object> entry : map.entrySet()) {
				String keys = entry.getKey().toLowerCase();
				Object values = entry.getValue();
				addList.put(keys, values);
			}
			ticketList.add(addList);
		}
		return ticketList;
	}

	// 티켓 정보 조회
	@Override
	public Map<String, Object> selectTicket(String ticket_no) {
//		ObjectMapper objectMapper = new ObjectMapper();
//		@SuppressWarnings("unchecked")
//		Map<String, Object> ticketInfo = objectMapper.convertValue(sqlSession.selectOne(NAMESPACE + "selectTicket", ticket_no), Map.class);
//		return ticketInfo;

		Map<String, Object> tempList = sqlSession.selectOne(NAMESPACE + "selectTicket", ticket_no);
		Map<String, Object> ticketInfo = new HashMap<>();
		for (Map.Entry<String, Object> entry : tempList.entrySet()) {
			String keys = entry.getKey().toLowerCase();
			Object values = entry.getValue();
			ticketInfo.put(keys, values);
		}
		return ticketInfo;
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
	
	// 임희열 : 총 예매 비용 조회
	@Override
	public int getTotalTicketPrice() {
		String moneyStr = sqlSession.selectOne(NAMESPACE + "getTotalTicketPrice");
		int money = 0;
		if(moneyStr != null) {
			money = Integer.parseInt(moneyStr);
		}
		return money;
	}

	// 임희열 : 유저 영화 예매 정보 목록 조회
	@Override
	public List<TicketUserVo> selectTicketUserList(int userno) {
		List<TicketUserVo> ticketUserList = sqlSession.selectList(NAMESPACE + "selectTicketUserList", userno);
		return ticketUserList;
	}

	// 임희열 : 티켓번호로 유저 영화 예매 정보 조회
	@Override
	public TicketUserVo selectTicketUserVoByTicketno(int user_no, String ticket_no) {
		Map<String, Object> map = new HashMap<>();
		map.put("user_no", user_no);
		map.put("ticket_no", ticket_no);
		TicketUserVo ticketUserVo = sqlSession.selectOne(NAMESPACE + "selectTicketUserListByTicketno", map);
		return ticketUserVo;
	}

}
