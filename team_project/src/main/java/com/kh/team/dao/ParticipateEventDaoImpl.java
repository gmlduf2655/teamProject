package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ParticipateEventVo;

@Repository
public class ParticipateEventDaoImpl implements ParticipateEventDao {
	private final String NAMESPACE = "com.kh.team.mappers.participateEvent.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public boolean insert(ParticipateEventVo vo) {
		int count = sqlSession.insert(NAMESPACE + "insert", vo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(int participate_no) {
		int count = sqlSession.delete(NAMESPACE + "delete", participate_no);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<ParticipateEventVo> list(PagingDto pagingDto) {
		List<ParticipateEventVo> participateEventList = sqlSession.selectList(NAMESPACE + "list", pagingDto);
		return participateEventList;
	}

	@Override
	public int getCount(PagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCount", pagingDto);
		return count;
	}

	@Override
	public List<ParticipateEventVo> adminList(PagingDto pagingDto) {
		List<ParticipateEventVo> adminList = sqlSession.selectList(NAMESPACE + "adminList", pagingDto);
		return adminList;
	}

	@Override
	public boolean winnerUpdate(ParticipateEventVo vo) {
		int count = sqlSession.update(NAMESPACE + "winnerUpdate", vo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<ParticipateEventVo> myList(int userno, PagingDto pagingDto) {
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("userno", userno);
		parameter.put("pagingDto", pagingDto);
		System.out.println("parameter:"+parameter);
		List<ParticipateEventVo> myList = sqlSession.selectList(NAMESPACE + "myList", parameter);
		return myList;
	}

}
