package com.kh.team.service;

import com.kh.team.vo.VisitnumberVo;

public interface VisitNumberService {
	// 방문자수 내역 추가
	public boolean addVisitNumberHistory(VisitnumberVo visitnumberVo);
	// 이번 달 방문 유저 수 조회
	public int getMonthVisitNumber(int year, int month);
	// 오늘 방문 유저 수 조회
	public int getTodayVisitNumber(int year, int month, int day);
	// 당일 방문 유저 수 정보 생성 여부 확인 
	public boolean isTodayVisitNumberCreated(int year, int month, int day);	
	// 방문자수 증가
	public boolean plusVisitNumber(int year, int month, int day);
}
