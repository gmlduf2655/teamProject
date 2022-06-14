package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.EventDao;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.PagingDto;

@Service
public class EventServiceImpl implements EventService {
	
	@Autowired
	private EventDao eventDao;

	@Override
	public List<EventVo> list(PagingDto pagingDto) {
		List<EventVo> eventList = eventDao.list(pagingDto);
		return eventList;
	}

	@Override
	public boolean insert(EventVo eventVo) {
		boolean result = eventDao.insert(eventVo);
		return result;
	}

	@Override
	public boolean modify(EventVo eventVo) {
		boolean result = eventDao.modify(eventVo);
		return result;
	}

	@Override
	public boolean delete(int event_no) {
		boolean result = eventDao.delete(event_no);
		return result;
	}

	@Override
	public EventVo readContent(int event_no) {
		eventDao.viewConuntUpdate(event_no);
		EventVo eventVo = eventDao.readContent(event_no);
		return eventVo;
	}

	@Override
	public List<EventVo> nowEventlist(PagingDto pagingDto) {
		List<EventVo> nowEventlist = eventDao.nowEventlist(pagingDto);
		return nowEventlist;
	}

	@Override
	public List<EventVo> lastEventlist(PagingDto pagingDto) {
		List<EventVo> lastEventlist = eventDao.lastEventlist(pagingDto);
		return lastEventlist;
	}

	@Override
	public int getCount(PagingDto pagingDto) {
		int count = eventDao.getCount(pagingDto);
		return count;
	}
}
