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
	public boolean delete(int participate_no) {
		boolean result = dao.delete(participate_no);
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

	@Override
	public List<ParticipateEventVo> adminList(PagingDto pagingDto) {
		List<ParticipateEventVo> adminList = dao.adminList(pagingDto);
		return adminList;
	}

	@Override
	public boolean winnerUpdate(ParticipateEventVo vo) {
		boolean result = dao.winnerUpdate(vo);
		return result;
	}

	@Override
	public List<ParticipateEventVo> myList(int userno, PagingDto pagingDto) {
		List<ParticipateEventVo> myList = dao.myList(userno, pagingDto);
		return myList;
	}

}
