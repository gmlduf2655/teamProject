package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.FollowDao;
import com.kh.team.dao.MessageDao;
import com.kh.team.service.MessageService;
import com.kh.team.vo.FollowVo;
import com.kh.team.vo.MessageVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class MessageServiceTest {
	@Autowired
	MessageService messageService;
	
	// 메세지 내역 추가 테스트
	@Test
	public void testAddMessage() {
		MessageVo messageVo = new MessageVo(0, "user01", "gmlduf2655", null, null, 0, 0, 0, "제목 1", "내용 1");
		boolean result = messageService.addMessage(messageVo);
		System.out.println("MessageServiceTest, testAddMessage, result : " + result);
	}
	
	// 받는 메세지 조회 테스트
	@Test
	public void testGetSenderMessageList() {
		List<MessageVo> senderMessageList = messageService.getSenderMessageList("user01");
		for(MessageVo messageVo : senderMessageList) {
			System.out.println("MessageServiceTest, testSelectSenderMessageList, messageVo : " + messageVo);
		}
	}
	
	// 보내는 메세지 조회 테스트
	@Test
	public void testGetReceiverMessageList() {
		List<MessageVo> receiverMessageList = messageService.getReceiverMessageList("gmlduf2655");
		for(MessageVo messageVo : receiverMessageList) {
			System.out.println("MessageServiceTest, testSelectReceiverMessageList, messageVo : " + messageVo);
		}
	}
	
	// 메세지 번호로 메세지 조회 테스트
	@Test
	public void testGetMessageByMessageno() {
		MessageVo messageVo = messageService.getMessageByMessageno(5);
		System.out.println("MessageServiceTest, testGetMessageByMessageno, messageVo" + messageVo);
	}
	
	// 메세지 내역 삭제
	@Test
	public void testDeleteMessage() {
		boolean result = messageService.deleteMessage("user01", "gmlduf2655");
		System.out.println("MessageServiceTest, testDeleteMessage, result : " + result);
	}
}
