package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.ParticipateEventDao;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ParticipateEventVo;

@Service
public class ParticipateEventServiceImpl implements ParticipateEventService {
	
	@Autowired
	private ParticipateEventDao dao;

	@Override
	public boolean insert(ParticipateEventVo vo) {
		boolean result = dao.insert(vo);
		return result;
	}

	@Override
	public boolean delete(ParticipateEventVo vo) {
		boolean result = dao.delete(vo);
		return result;
	}

	@Override
	public List<ParticipateEventVo> list(PagingDto pagingDto) {
		List<ParticipateEventVo> list = dao.list(pagingDto);
		return list;
	}

	@Override
	public int getCount(PagingDto pagingDto) {
		int count = dao.getCount(pagingDto);
		return count;
	}

}
