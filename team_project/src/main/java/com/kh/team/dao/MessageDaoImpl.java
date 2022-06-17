package com.kh.team.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.MessageVo;
import com.kh.team.vo.PagingDto;

@Repository
public class MessageDaoImpl implements MessageDao {
	private final String NAMESPACE = "com.kh.team.mappers.message.";

	@Autowired
	SqlSession sqlSession;
	
	// 메세지 내역 추가
	@Override
	public boolean insertMessage(MessageVo messageVo) {
		int count = sqlSession.insert(NAMESPACE + "insertMessage", messageVo);
		if(count > 0) {
			return true;
		}
		return false;
	}
	
	// 메세지 파일 첨부
	@Override
	public boolean insertMessageAttach(int messageno, String filename) {
		Map<String, Object> map = new HashMap<>();
		map.put("messageno", messageno);
		map.put("filename", filename);
		int count = sqlSession.insert(NAMESPACE + "insertMessageAttach", map);
		if(count > 0) {
			return true;
		}
		return false;		
	}

	// 메세지 답장 추가
	@Override
	public boolean insertReplyMessage(MessageVo messageVo) {
		int count = sqlSession.insert(NAMESPACE + "insertReplyMessage", messageVo);
		if(count > 0) {
			return true;
		}
		return false;
	}	
	
	// 보내는 메세지 조회
	@Override
	public List<MessageVo> selectSenderMessageList(String sender, PagingDto pagingDto) {
		Map<String, Object> map = new HashMap<>();
		map.put("sender", sender);
		map.put("pagingDto", pagingDto);
		List<MessageVo> senderMessageList = sqlSession.selectList(NAMESPACE + "selectSenderMessageList", map);
		return senderMessageList;
	}

	// 받는 메세지 조회
	@Override
	public List<MessageVo> selectReceiverMessageList(String receiver, PagingDto pagingDto) {
		Map<String, Object> map = new HashMap<>();
		map.put("receiver", receiver);
		map.put("pagingDto", pagingDto);
		List<MessageVo> receiverMessageList = sqlSession.selectList(NAMESPACE + "selectReceiverMessageList", map);
		return receiverMessageList;
	}
	
	// 메세지 첨부 파일 조회
	public List<String> selectFilenameList(int messageno){
		List<String> filenameList = sqlSession.selectList(NAMESPACE + "selectFilenameList", messageno);
		return filenameList;
	}
	
	
	// 보내는 메세지 수 조회
	@Override
	public int selectSenderMessageCount(String sender) {
		int count = sqlSession.selectOne(NAMESPACE + "selectSenderMessageCount", sender);
		return count;
	}

	// 받는 메세지 수 조회
	@Override
	public int selectReceiverMessageCount(String receiver) {
		int count = sqlSession.selectOne(NAMESPACE + "selectReceiverMessageCount", receiver);
		return count;
	}
	// 메세지 번호로 메세지 조회
	@Override
	public MessageVo selectMessageByMessageno(int messageno) {
		MessageVo messageVo = sqlSession.selectOne(NAMESPACE + "selectMessageByMessageno", messageno);
		return messageVo;
	}	
	
	// 메세지 번호 얻기
	@Override
	public int selectMessageno() {
		int messageno = sqlSession.selectOne(NAMESPACE + "selectMessageno");
		return messageno;
	}
	
	// 답장 메세지 보낼 시 메세지 순서 변경
	@Override
	public void updateReSeq(int groupno, int re_seq) {
		Map<String, Object> map = new HashMap<>();
		map.put("groupno", groupno);
		map.put("re_seq", re_seq);
		int count = sqlSession.update(NAMESPACE + "updateReSeq", map);
	}
	
	// 메세지를 처음 읽었을 떄 읽은 날짜 설정
	@Override
	public boolean updateReadDate(int messageno) {
		int count = sqlSession.update(NAMESPACE + "updateReadDate", messageno);
		if(count > 0) {
			return true;
		}
		return false;
	};	
	
	// 보내는 이가 메세지 내역 삭제
	@Override
	public boolean deleteMessageBySender(int messageno) {
		int count = sqlSession.update(NAMESPACE + "deleteMessageBySender", messageno);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 보내는 이 이미지 다중 삭제
	@Override
	public boolean deleteMultiMessageBySender(List<Integer> messagenos) {
		int count = sqlSession.update(NAMESPACE + "deleteMultiMessageBySender", messagenos);
		if(count > 0) {
			return true;
		}
		return false;
	}
	
	// 받는 이가 메세지 내역 삭제
	@Override
	public boolean deleteMessageByReceiver(int messageno) {
		int count = sqlSession.update(NAMESPACE + "deleteMessageByReceiver", messageno);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 받는 이 이미지 다중 삭제
	@Override
	public boolean deleteMultiMessageByReceiver(List<Integer> messagenos) {
		int count = sqlSession.update(NAMESPACE + "deleteMultiMessageByReceiver", messagenos);
		if(count > 0) {
			return true;
		}
		return false;
	}

}
