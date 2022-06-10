package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.WinnerDao;
import com.kh.team.vo.WinnerPagingDto;
import com.kh.team.vo.WinnerVo;

@Service
public class WinnerServiceImpl implements WinnerService {
	
	@Autowired
	private WinnerDao winnerDao;

	@Override
	public List<WinnerVo> list() {
		List<WinnerVo> winnerList = winnerDao.list();
		return winnerList;
	}

	@Override
	public boolean insert(WinnerVo winnerVo) {
		boolean result = winnerDao.insert(winnerVo);
		return result;
	}

	@Override
	public boolean modify(WinnerVo winnerVo) {
		boolean result = winnerDao.modify(winnerVo);
		return result;
	}

	@Override
	public boolean delete(int winner_no) {
		boolean result = winnerDao.delete(winner_no);
		return result;
	}

	@Override
	public WinnerVo readContent(int winner_no) {
		winnerDao.viewConuntUpdate(winner_no);
		WinnerVo winnerVo = winnerDao.readContent(winner_no);
		return winnerVo;
	}

	@Override
	public int getCount(WinnerPagingDto pagingDto) {
		int count = winnerDao.getCount(pagingDto);
		return count;
	}

}
