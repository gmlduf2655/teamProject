package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MessageVo;

public interface MessageService {
	// 메세지 내역 추가
	public boolean addMessage(MessageVo messageVo);
	
	// 보내는 메세지 조회
	public List<MessageVo> getSenderMessageList(String sender);
	
	// 받는 메세지 조회
	public List<MessageVo> getReceiverMessageList(String receiver);
	
	// 메세지 번호로 메세지 조회
	public MessageVo getMessageByMessageno(int messageno);
	
	// 메세지 번호 얻기
	public int getMessageno();
	
	// 메세지 내역 삭제
	public boolean deleteMessage(String sender, String receiver);	
}
