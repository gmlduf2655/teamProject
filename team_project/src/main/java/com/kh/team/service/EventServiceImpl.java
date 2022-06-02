package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.EventDao;
import com.kh.team.vo.EventVo;

@Service
public class EventServiceImpl implements EventService {
	
	@Autowired
	private EventDao eventDao;

	@Override
	public List<EventVo> list() {
		List<EventVo> eventList = eventDao.list();
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

}
