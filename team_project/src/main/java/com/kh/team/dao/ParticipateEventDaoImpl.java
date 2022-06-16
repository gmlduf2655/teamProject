package com.kh.team.dao;

import java.util.List;

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
	public boolean delete(ParticipateEventVo vo) {
		int count = sqlSession.delete(NAMESPACE + "delete", vo);
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

}
