package com.kh.team.dao;

import com.kh.team.vo.VisitnumberVo;

public interface VisitNumberDao {
	
	// 방문자수 내역 추가
	public boolean insertVisitNumber(VisitnumberVo visitnumberVo);
	// 이번 달 방문 유저 수 조회
	public int selectMonthVisitNumber(int year, int month);
	// 오늘 방문 유저 수 조회
	public int selectTodayVisitNumber(int year, int month, int day);
	// 당일 방문 유저 수 정보 생성 여부 확인 
	public boolean isTodayVisitNumberCreated(int year, int month, int day);
	// 방문자수 증가
	public boolean updateVisitNumber(int year, int month, int day);
}
