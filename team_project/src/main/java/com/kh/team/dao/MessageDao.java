package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.MessageVo;

public interface MessageDao {
	// 메세지 내역 추가
	public boolean insertMessage(MessageVo messageVo);
	
	// 보내는 메세지 조회
	public List<MessageVo> selectSenderMessageList(String sender);
	
	// 받는 메세지 조회
	public List<MessageVo> selectReceiverMessageList(String receiver);
	
	// 메세지 번호로 메세지 조회
	public MessageVo selectMessageByMessageno(int messageno);
	
	// 메세지 번호 얻기
	public int selectMessageno();
	
	// 메세지 내역 삭제
	public boolean deleteMessage(String sender, String receiver);
}
