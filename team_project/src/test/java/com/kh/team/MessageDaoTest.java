package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.FollowDao;
import com.kh.team.dao.MessageDao;
import com.kh.team.vo.FollowVo;
import com.kh.team.vo.MessageVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class MessageDaoTest {
	@Autowired
	MessageDao messageDao;
	
	// 메세지 내역 추가 테스트
	@Test
	public void testInsertMessage() {
		MessageVo messageVo = new MessageVo(0, "user01", "gmlduf2655", null, null, 0, 0, 0, "제목 1", "내용 1");
		boolean result = messageDao.insertMessage(messageVo);
		System.out.println("MessageDaoTest, testInsertMessage, result : " + result);
	}
	
	// 메세지 답장 추가 테스트
	@Test
	public void testInsertReplyMessage() {
		MessageVo messageVo = new MessageVo(2, "user01", "gmlduf2655", null, null, 1, 0, 0, "[re]:답장", "답장입니다");
		boolean result = messageDao.insertReplyMessage(messageVo);
		System.out.println("MessageDaoTest, testInsertReplyMessage, result : " + result);
	}
	
	// 보내는 메세지 조회 테스트
	@Test
	public void testSelectSenderMessageList() {
		List<MessageVo> senderMessageList = messageDao.selectSenderMessageList("user01");
		for(MessageVo messageVo : senderMessageList) {
			System.out.println("MessageDaoTest, testSelectSenderMessageList, messageVo : " + messageVo);
		}
	}
	
	// 받는 메세지 조회 테스트
	@Test
	public void testSelectReceiverMessageList() {
		List<MessageVo> receiverMessageList = messageDao.selectReceiverMessageList("gmlduf2655");
		for(MessageVo messageVo : receiverMessageList) {
			System.out.println("MessageDaoTest, testSelectReceiverMessageList, messageVo : " + messageVo);
		}
	}
	
	// 보내는 메세지 수 조회 테스트
	@Test
	public void testSelectSenderMessageCount() {
		int count = messageDao.selectSenderMessageCount("user01");
		System.out.println("MessageDaoTest, testSelectSenderMessageCount, count : " + count);
	}
	
	// 받는 메세지 수 조회 테스트
	@Test
	public void testSelectReceiverMessageCount() {
		int count = messageDao.selectReceiverMessageCount("user01");
		System.out.println("MessageDaoTest, testSelectReceiverMessageCount, count : " + count);
	}
	
	// 메세지 번호로 메세지 조회 테스트
	@Test
	public void testSelectMessageByMessageno() {
		MessageVo messageVo = messageDao.selectMessageByMessageno(5);
		System.out.println("MessageDaoTest, testSelectMessageByMessageno, messageVo : " + messageVo);
	}
	
	// 답장 메세지 보낼 시 메세지 순서 변경 테스트
	@Test
	public void testUpdateReSeq() {
		messageDao.updateReSeq(1, 0);
		System.out.println("MessageDaoTest, testUpdateReSeq, result : " + true);
	}
	
	// 메세지를 처음 읽었을 떄 읽은 날짜 설정 테스트
	@Test
	public void testUpdateReadDate() {
		boolean result = messageDao.updateReadDate(72);
		System.out.println("MessageDaoTest, testUpdateReadDate, result : " + true);
	}
	
	// 보내는 이에 의한 메세지 내역 삭제 테스트
	@Test
	public void testDeleteMessageBySender() {
		boolean result = messageDao.deleteMessageBySender(72);
		System.out.println("MessageDaoTest, testDeleteMessage, result : " + result);
	}
	
	// 받는 이에 의한 메세지 내역 삭제 테스트
	@Test
	public void testDeleteMessageByReceiver() {
		boolean result = messageDao.deleteMessageByReceiver(72);
		System.out.println("MessageDaoTest, testDeleteMessageByReceiver, result : " + result);
	}
}
