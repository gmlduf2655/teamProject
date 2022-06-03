package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.WinnerDao;
import com.kh.team.vo.WinnerVo;

@Service	
public class WinnerServiceImpl implements WinnerService{
	
	@Autowired
	private WinnerDao winnerDao;

	@Override
	public List<WinnerVo> list() {
		
		return null;
	}

	@Override
	public boolean insert(WinnerVo winnerVo) {
		boolean result = winnerDao.insert(winnerVo);
		return result;
	}

	@Override
	public boolean modify(WinnerVo winnerVo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int winner_no) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public WinnerVo readContent(int winner_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void viewConuntUpdate(int winner_no) {
		// TODO Auto-generated method stub
		
	}

}
