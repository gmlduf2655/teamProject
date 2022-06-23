package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.EventPagingDto;
import com.kh.team.vo.EventVo;

@Repository
public class EventDaoImpl implements EventDao {
	private final String NAMESPACE = "com.kh.team.mappers.event.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<EventVo> list(EventPagingDto pagingDto) {
		System.out.println("EventDao, pagingDto:"+pagingDto);
		List<EventVo> eventList = sqlSession.selectList(NAMESPACE + "list", pagingDto);
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

	@Override
	public EventVo readContent(int event_no) {
		EventVo eventVo = sqlSession.selectOne(NAMESPACE + "readContent", event_no);
		return eventVo;
	}

	@Override
	public void viewConuntUpdate(int event_no) {
		sqlSession.update(NAMESPACE + "viewConuntUpdate", event_no);
		
	}

	@Override
	public List<EventVo> nowEventlist(EventPagingDto pagingDto) {
		List<EventVo> nowEventList = sqlSession.selectList(NAMESPACE + "nowEventlist", pagingDto);
		return nowEventList;
	}

	@Override
	public List<EventVo> lastEventlist(EventPagingDto pagingDto) {
		List<EventVo> lastEventlist = sqlSession.selectList(NAMESPACE + "lastEventlist", pagingDto);
		return lastEventlist;
	}

	@Override
	public int getCount(EventPagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCount", pagingDto);
		return count;
	}

}
