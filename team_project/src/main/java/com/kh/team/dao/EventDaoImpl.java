package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.EventVo;

@Repository
public class EventDaoImpl implements EventDao {
	private final String NAMESPACE = "com.kh.team.mappers.event.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<EventVo> list() {
		List<EventVo> eventList = sqlSession.selectList(NAMESPACE + "list");
		return eventList;
	}

	@Override
	public boolean insert(EventVo eventVo) {
		int count = sqlSession.insert(NAMESPACE + "insert", eventVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean modify(EventVo eventVo) {
		int count = sqlSession.update(NAMESPACE + "modify", eventVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(int event_no) {
		int count = sqlSession.delete(NAMESPACE + "delete", event_no);
		if (count > 0) {
			return true;
		}
		return false;
	}

}
