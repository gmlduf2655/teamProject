package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.MessageVo;

@Repository
public class MessageDaoImpl implements MessageDao {
	private final String NAMESPACE = "com.kh.team.mappers.message.";

	@Autowired
	SqlSession sqlSession;
	
	// 메세지 내역 추가
	@Override
	public boolean insertMessage(MessageVo messageVo) {
		int count = sqlSession.insert(NAMESPACE + "insertMessage", messageVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 보내는 메세지 조회
	@Override
	public List<MessageVo> selectSenderMessageList(int sender) {
		List<MessageVo> senderMessageList = sqlSession.selectList(NAMESPACE + "selectSenderMessageList", sender);
		return senderMessageList;
	}

	// 받는 메세지 조회
	@Override
	public List<MessageVo> selectReceiverMessageList(int receiver) {
		List<MessageVo> receiverMessageList = sqlSession.selectList(NAMESPACE + "selectReceiverMessageList", receiver);
		return receiverMessageList;
	}

	// 메세지 내역 삭제
	@Override
	public boolean deleteMessage(int sender, int receiver) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("sender", sender);
		map.put("receiver", receiver);
		int count = sqlSession.insert(NAMESPACE + "deleteMessage", map);
		if(count > 0) {
			return true;
		}
		return false;
	}

}
