package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.team.dao.MessageDao;
import com.kh.team.vo.MessageVo;
import com.kh.team.vo.PagingDto;

@Service
public class MessageServiceImpl implements MessageService {
	@Autowired
	MessageDao messageDao;
	
	// 메세지 내역 추가
	@Override
	@Transactional
	public boolean addMessage(MessageVo messageVo) {
		boolean result = messageDao.insertMessage(messageVo);
		List<String> filenames = messageVo.getMessage_files();
		if(filenames != null) {
			for(String filename : filenames) {
				result = result & messageDao.insertMessageAttach(messageVo.getMessageno(), filename);
			}
		}
		return result;
	}

	// 메세지 답장
	@Override
	@Transactional
	public boolean replyMessage(MessageVo messageVo) {
		messageDao.updateReSeq(messageVo.getGroupno(), messageVo.getRe_seq());
		boolean result = messageDao.insertReplyMessage(messageVo);
		List<String> filenames = messageVo.getMessage_files();
		if(filenames != null) {
			for(String filename : filenames) {
				result = result & messageDao.insertMessageAttach(messageVo.getMessageno(), filename);
			}
		}
		return result;
	}	
	
	// 보내는 메세지 조회
	@Override
	public List<MessageVo> getSenderMessageList(String sender, PagingDto pagingDto) {
		List<MessageVo> senderMessageList = messageDao.selectSenderMessageList(sender, pagingDto);
		return senderMessageList;
	}

	// 받는 메세지 조회
	@Override
	public List<MessageVo> getReceiverMessageList(String receiver, PagingDto pagingDto) {
		List<MessageVo> receiverMessageList = messageDao.selectReceiverMessageList(receiver, pagingDto);
		return receiverMessageList;
	}
	
	// 모든 메세지 조회
	public List<MessageVo> getTotalMessageList(PagingDto pagingDto){
		List<MessageVo> messageList = messageDao.selectTotalMessageList(pagingDto);
		return messageList;
	}
	
	// 모든 메세지 수 조회 테스트
	public int getCountTotalMessage(PagingDto pagingDto) {
		int count = messageDao.getCountTotalMessage(pagingDto);
		return count;
	}	
	
	// 메세지 첨부 파일 조회
	public List<String> getFilenames(int messageno){
		List<String> filenames = messageDao.selectFilenameList(messageno);
		return filenames;
	}
	
	// 보내는 메세지 수 조회
	@Override
	public int getSenderMessageCount(String sender, PagingDto pagingDto) {
		int count = messageDao.selectSenderMessageCount(sender, pagingDto);
		return count;
	}
	
	// 받는 메세지 수 조회
	@Override
	public int getReceiverMessageCount(String receiver, PagingDto pagingDto) {
		int count = messageDao.selectReceiverMessageCount(receiver, pagingDto);
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

	// 메세지 다중 삭제
	@Override
	public boolean deleteMultiMessage(List<Integer> messagenos, String type) {
		boolean result = false;
		if(type.equals("send")) {
			result = messageDao.deleteMultiMessageBySender(messagenos);
		}else if(type.equals("receive")) {
			result = messageDao.deleteMultiMessageByReceiver(messagenos);
		}else {}
		return result;
	}


}
