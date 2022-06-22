package com.kh.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.VisitNumberDao;
import com.kh.team.vo.VisitnumberVo;

@Service
public class VisitNumberServiceImpl implements VisitNumberService {

	@Autowired
	VisitNumberDao visitNumberDao;
	
	// 방문자수 내역 추가
	@Override
	public boolean addVisitNumberHistory(VisitnumberVo visitnumberVo) {
		boolean result = visitNumberDao.insertVisitNumber(visitnumberVo);
		return result;
	}

	// 이번 달 방문 유저 수 조회
	@Override
	public int getMonthVisitNumber(int year, int month) {
		int visit_number = visitNumberDao.selectMonthVisitNumber(year, month);
		return visit_number;
	}

	// 오늘 방문 유저 수 조회
	@Override
	public int getTodayVisitNumber(int year, int month, int day) {
		int visit_number = visitNumberDao.selectTodayVisitNumber(year, month, day);
		return visit_number;
	}
	
	// 당일 방문 유저 수 정보 생성 여부 확인 
	public boolean isTodayVisitNumberCreated(int year, int month, int day) {
		boolean result = visitNumberDao.isTodayVisitNumberCreated(year, month, day);
		return result;
	}
	
	// 방문자수 증가
	@Override
	public boolean plusVisitNumber(int year, int month, int day) {
		boolean result = visitNumberDao.updateVisitNumber(year, month, day);
		return result;
	}

}
