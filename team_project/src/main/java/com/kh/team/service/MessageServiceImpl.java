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
	public List<MessageVo> getSenderMessageList(String sender) {
		List<MessageVo> senderMessageList = messageDao.selectSenderMessageList(sender);
		return senderMessageList;
	}

	// 받는 메세지 조회
	@Override
	public List<MessageVo> getReceiverMessageList(String receiver) {
		List<MessageVo> receiverMessageList = messageDao.selectReceiverMessageList(receiver);
		return receiverMessageList;
	}

	// 메세지 번호로 메세지 조회
	@Override
	public MessageVo getMessageByMessageno(int messageno) {
		MessageVo messageVo = messageDao.selectMessageByMessageno(messageno);
		return messageVo;
	}

	// 메세지 번호 얻기
	@Override
	public int getMessageno() {
		int messageno = messageDao.selectMessageno();
		return messageno;
	}
	
	// 메세지 내역 삭제
	@Override
	public boolean deleteMessage(String sender, String receiver) {
		boolean result = messageDao.deleteMessage(sender, receiver);
		return result;
	}

}
