package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.MessageDao;
import com.kh.team.vo.MessageVo;

@Service
public class MessageServiceImpl implements MessageService {
	@Autowired
	MessageDao messageDao;
	
	// 메세지 내역 추가
	@Override
	public boolean addMessage(MessageVo messageVo) {
		boolean result = messageDao.insertMessage(messageVo);
		return result;
	}

	// 보내는 메세지 조회
	@Override
	public List<MessageVo> getSenderMessageList(int sender) {
		List<MessageVo> senderMessageList = messageDao.selectSenderMessageList(sender);
		return senderMessageList;
	}

	// 받는 메세지 조회
	@Override
	public List<MessageVo> getReceiverMessageList(int receiver) {
		List<MessageVo> receiverMessageList = messageDao.selectReceiverMessageList(receiver);
		return receiverMessageList;
	}

	// 메세지 내역 삭제
	@Override
	public boolean deleteMessage(int sender, int receiver) {
		boolean result = messageDao.deleteMessage(sender, receiver);
		return result;
	}

}
