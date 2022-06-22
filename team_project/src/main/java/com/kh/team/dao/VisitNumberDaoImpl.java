package com.kh.team.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.VisitnumberVo;

@Repository
public class VisitNumberDaoImpl implements VisitNumberDao {
	private final String NAMESPACE = "com.kh.team.mappers.visitNumber.";
	
	@Autowired
	SqlSession sqlSession;
	
	// 방문자수 내역 추가
	@Override
	public boolean insertVisitNumber(VisitnumberVo visitnumberVo) {
		int count = sqlSession.insert(NAMESPACE + "insertVisitNumber", visitnumberVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 이번 달 방문 유저 수 조회
	@Override
	public int selectMonthVisitNumber(int year, int month) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("year", year);
		map.put("month", month);
		int count = sqlSession.selectOne(NAMESPACE + "selectMonthVisitNumber", map);
		return count;
	}
	
	// 오늘 방문 유저 수 조회
	@Override
	public int selectTodayVisitNumber(int year, int month, int day) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("year", year);
		map.put("month", month);
		map.put("day", day);
		int count = sqlSession.selectOne(NAMESPACE + "selectTodayVisitNumber", map);
		return count;		
	}
	
	// 당일 방문 유저 수 정보 생성 여부 확인 
	@Override
	public boolean isTodayVisitNumberCreated(int year, int month, int day) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("year", year);
		map.put("month", month);
		map.put("day", day);		
		int count = sqlSession.selectOne(NAMESPACE + "isTodayVisitNumberCreated", map);
		if(count > 0) {
			return true;
		}		
		return false;
	}	

	// 방문자수 증가
	@Override
	public boolean updateVisitNumber(int year, int month, int day) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("year", year);
		map.put("month", month);
		map.put("day", day);
		int count = sqlSession.update(NAMESPACE + "updateVisitNumber", map);
		if(count > 0) {
			return true;
		}
		return false;		
	}

}
