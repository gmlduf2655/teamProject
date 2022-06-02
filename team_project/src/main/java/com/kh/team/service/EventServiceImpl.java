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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(EventVo eventVo) {
		boolean result = eventDao.insert(eventVo);
		return result;
	}

	@Override
	public boolean update(EventVo eventVo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int eventno) {
		// TODO Auto-generated method stub
		return false;
	}

}
