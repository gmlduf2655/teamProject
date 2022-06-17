package com.kh.team;

import java.util.ArrayList;
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
	
	// 메세지 답장 테스트
	@Test
	public void testReplyMessage() {
		MessageVo messageVo = new MessageVo(3, "user01", "gmlduf2655", null, null, 1, 2, 1, "[re]:[re]:답장", "답장의답장입니다");
		boolean result = messageService.replyMessage(messageVo);
		System.out.println("MessageServiceTest, testReplyMessage, result : " + result);
	}
	
	// 보내는 메세지 조회 테스트
	@Test
	public void testGetSenderMessageList() {
		List<MessageVo> senderMessageList = messageService.getSenderMessageList("user01", null);
		for(MessageVo messageVo : senderMessageList) {
			System.out.println("MessageServiceTest, testSelectSenderMessageList, messageVo : " + messageVo);
		}
	}
	
	// 받는 메세지 조회 테스트
	@Test
	public void testGetReceiverMessageList() {
		List<MessageVo> receiverMessageList = messageService.getReceiverMessageList("gmlduf2655", null);
		for(MessageVo messageVo : receiverMessageList) {
			System.out.println("MessageServiceTest, testSelectReceiverMessageList, messageVo : " + messageVo);
		}
	}
	
	// 보내는 메세지 수 조회 테스트
	@Test
	public void testGetSenderMessageCount() {
		int count = messageService.getSenderMessageCount("user01");
		System.out.println("MessageServiceTest, testGetSenderMessageCount, count : " + count);
	}
	
	// 받는 메세지 수 조회 테스트
	@Test
	public void testGetReceiverMessageCount() {
		int count = messageService.getReceiverMessageCount("user01");
		System.out.println("MessageServiceTest, testGetReceiverMessageCount, count : " + count);
	}
	
	// 메세지 첨부 파일 저회
	@Test
	public void testGetFilenames() {
		List<String> filenames = messageService.getFilenames(100);
		for(String filename : filenames) {
			System.out.println("MessageServiceTest, testGetFilenames, filename : " + filename);
		}
	}
	
	// 메세지 번호로 메세지 조회 테스트
	@Test
	public void testGetMessageByMessageno() {
		MessageVo messageVo = messageService.getMessageByMessageno(5);
		System.out.println("MessageServiceTest, testGetMessageByMessageno, messageVo : " + messageVo);
	}
	
	// 메세지를 처음 읽었을 떄 읽은 날짜 설정 테스트
	@Test
	public void testUpdateReadDate() {
		boolean result = messageService.updateReadDate(73);
		System.out.println("MessageServiceTest, testUpdateReadDate, result : " + result);
	}
	
	// 메세지 내역 삭제 테스트
	@Test
	public void testDeleteMessage() {
		boolean result = messageService.deleteMessage(72, "send");
		System.out.println("MessageServiceTest, testDeleteMessage, result : " + result);
	}
	
	// 메세지 다중 삭제 테스트
	@Test
	public void testDeleteMultiMessage() {
		List<Integer> messagenos = new ArrayList<Integer>();
		for(int i=1 ; i<=10 ; i++) {
			messagenos.add(i);
		}
		boolean result = messageService.deleteMultiMessage(messagenos, "receive");
		System.out.println("MessageServiceTest, testDeleteMultiMessage, result : " + result);
	}
}
