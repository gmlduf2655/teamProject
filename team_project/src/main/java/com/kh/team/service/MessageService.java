package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MessageVo;
import com.kh.team.vo.PagingDto;

public interface MessageService {
	// 메세지 내역 추가
	public boolean addMessage(MessageVo messageVo);
	// 메세지 답장
	public boolean replyMessage(MessageVo messageVo);
	// 보내는 메세지 조회
	public List<MessageVo> getSenderMessageList(String sender, PagingDto pagingDto);
	// 받는 메세지 조회
	public List<MessageVo> getReceiverMessageList(String receiver, PagingDto pagingDto);
	// 메세지 첨부 파일 조회
	public List<String> getFilenames(int messageno);
	// 보내는 메세지 수 조회
	public int getSenderMessageCount(String sender);
	// 받는 메세지 수 조회
	public int getReceiverMessageCount(String receiver);
	// 메세지 번호로 메세지 조회
	public MessageVo getMessageByMessageno(int messageno);
	// 메세지 번호 얻기
	public int getMessageno();
	// 메세지를 처음 읽었을 떄 읽은 날짜 설정
	public boolean updateReadDate(int messageno);
	// 메세지 내역 삭제
	public boolean deleteMessage(int messageno, String type);
	// 메세지 다중 삭제
	public boolean deleteMultiMessage(List<Integer> messagenos, String type);
}
