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
		MessageVo messageVo = new MessageVo(0, 1, 19, null, null, 0, 0, 0, "제목 1", "내용 1");
		boolean result = messageDao.insertMessage(messageVo);
		System.out.println("MessageDaoTest, testInsertMessage, result : " + result);
	}
	
	// 받는 메세지 조회 테스트
	@Test
	public void testSelectSenderMessageList() {
		List<MessageVo> senderMessageList = messageDao.selectSenderMessageList(1);
		for(MessageVo messageVo : senderMessageList) {
			System.out.println("MessageDaoTest, testSelectSenderMessageList, messageVo : " + messageVo);
		}
	}
	
	// 보내는 메세지 조회 테스트
	@Test
	public void testSelectReceiverMessageList() {
		List<MessageVo> receiverMessageList = messageDao.selectReceiverMessageList(19);
		for(MessageVo messageVo : receiverMessageList) {
			System.out.println("MessageDaoTest, testSelectReceiverMessageList, messageVo : " + messageVo);
		}
	}
	
	// 메세지 내역 삭제
	@Test
	public void testDeleteMessage() {
		boolean result = messageDao.deleteMessage(1, 19);
		System.out.println("MessageDaoTest, testDeleteMessage, result : " + result);
	}
}
