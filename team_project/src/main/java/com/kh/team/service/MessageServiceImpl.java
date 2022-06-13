package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	// 메세지 답장
	@Override
	@Transactional
	public boolean replyMessage(MessageVo messageVo) {
		messageDao.updateReSeq(messageVo.getGroupno(), messageVo.getRe_seq());
		boolean result = messageDao.insertReplyMessage(messageVo);
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
	
	// 보내는 메세지 수 조회
	@Override
	public int getSenderMessageCount(String sender) {
		int count = messageDao.selectSenderMessageCount(sender);
		return count;
	}
	
	// 받는 메세지 수 조회
	@Override
	public int getReceiverMessageCount(String receiver) {
		int count = messageDao.selectReceiverMessageCount(receiver);
		return count;
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
	
	// 메세지를 처음 읽었을 떄 읽은 날짜 설정
	@Override
	public boolean updateReadDate(int messageno) {
		boolean result = messageDao.updateReadDate(messageno);
		return result;
	}
	
	// 메세지 내역 삭제
	@Override
	public boolean deleteMessage(int messageno, String type) {
		boolean result = false;
		if(type.equals("send")) {
			result = messageDao.deleteMessageBySender(messageno);
		}else if(type.equals("receive")){
			result = messageDao.deleteMessageByReceiver(messageno);
		}
		return result;
	}


}
