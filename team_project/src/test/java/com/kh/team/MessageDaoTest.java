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
		MessageVo messageVo = new MessageVo(1, "user01", "gmlduf2655", null, null, 0, 0, 0, "제목 1", "내용 1");
		boolean result = messageDao.insertMessage(messageVo);
		System.out.println("MessageDaoTest, testInsertMessage, result : " + result);
	}
	
	// 테스트 데이터 추가
	@Test
	public void addTestData() {
		for(int i=1 ; i <=10 ; i++) {
			MessageVo messageVo = new MessageVo(i, "gmlduf2655", "user01", null, null, 0, 0, 0, "제목 " + i, "내용 " + i);
			boolean result = messageDao.insertMessage(messageVo);
			System.out.println("MessageDaoTest, testInsertMessage, result : " + result);		
		}
	}
	
	// 메세지 파일 첨부 테스트
	@Test
	public void testInsertMessageAttach() {
		boolean result = messageDao.insertMessageAttach(103, "ㅎㅎ");
		System.out.println("MessageDaoTest, testInsertMessageAttach, result : " + result);
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
		List<MessageVo> senderMessageList = messageDao.selectSenderMessageList("user01", null);
		for(MessageVo messageVo : senderMessageList) {
			System.out.println("MessageDaoTest, testSelectSenderMessageList, messageVo : " + messageVo);
		}
	}
	
	// 받는 메세지 조회 테스트
	@Test
	public void testSelectReceiverMessageList() {
		List<MessageVo> receiverMessageList = messageDao.selectReceiverMessageList("gmlduf2655", null);
		for(MessageVo messageVo : receiverMessageList) {
			System.out.println("MessageDaoTest, testSelectReceiverMessageList, messageVo : " + messageVo);
		}
	}
	
	// 메세지 첨부 파일 조회 테스트
	@Test
	public void testSelectFilenameList() {
		List<String> filenameList = messageDao.selectFilenameList(100);
		for(String filename : filenameList) {
			System.out.println("MessageDaoTest, testSelectFilenameList, filename : " + filename);
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

	// 보내는 이 메세지 다중삭제 테스트
	@Test
	public void testDeleteMultiMessageBySender() {
		List<Integer> messagenos = new ArrayList<Integer>();
		for(int i=1 ; i<=10 ; i++) {
			messagenos.add(i);
		}
		boolean result = messageDao.deleteMultiMessageBySender(messagenos);
	}
	
	// 받는 이에 의한 메세지 내역 삭제 테스트
	@Test
	public void testDeleteMessageByReceiver() {
		boolean result = messageDao.deleteMessageByReceiver(72);
		System.out.println("MessageDaoTest, testDeleteMessageByReceiver, result : " + result);
	}
	// 받는 이 메세지 다중삭제 테스트
	@Test
	public void testDeleteMultiMessageByReceiver() {
		List<Integer> messagenos = new ArrayList<Integer>();
		for(int i=1 ; i<=10 ; i++) {
			messagenos.add(i);
		}
		boolean result = messageDao.deleteMultiMessageByReceiver(messagenos);
	}
}
