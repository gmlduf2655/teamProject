package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.MessageVo;
import com.kh.team.vo.PagingDto;

public interface MessageDao {
	// 메세지 내역 추가
	public boolean insertMessage(MessageVo messageVo);
	// 답장 메세지 추가
	public boolean insertReplyMessage(MessageVo messageVo);
	// 보내는 메세지 조회
	public List<MessageVo> selectSenderMessageList(String sender, PagingDto pagingDto);
	// 받는 메세지 조회
	public List<MessageVo> selectReceiverMessageList(String receiver, PagingDto pagingDto);
	// 보내는 메세지 수 조회
	public int selectSenderMessageCount(String sender);
	// 받는 메세지 수 조회
	public int selectReceiverMessageCount(String receiver);
	// 메세지 번호로 메세지 조회
	public MessageVo selectMessageByMessageno(int messageno);
	// 메세지 번호 얻기
	public int selectMessageno();
	// 답장 메세지 보낼 시 메세지 순서 변경
	public void updateReSeq(int groupno, int re_seq);
	// 메세지를 처음 읽었을 떄 읽은 날짜 설정
	public boolean updateReadDate(int messageno);
	// 보내는 이가 메세지 내역 삭제
	public boolean deleteMessageBySender(int messageno);
	// 보내는 이 메세지 다중 삭제
	public boolean deleteMultiMessageBySender(List<Integer> messagenos);
	// 받는 이가 메세지 내역 삭제
	public boolean deleteMessageByReceiver(int messageno);
	// 받는 이 메세지 다중 삭제
	public boolean deleteMultiMessageByReceiver(List<Integer> messagenos);
}
