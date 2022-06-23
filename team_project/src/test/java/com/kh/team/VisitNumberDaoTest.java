
package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.UserDao;
import com.kh.team.dao.VisitNumberDao;
import com.kh.team.vo.UserVo;
import com.kh.team.vo.VisitnumberVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class VisitNumberDaoTest {
	@Autowired
	VisitNumberDao visitNumberDao;
	
	// 방문자수 내역 추가 테스트
	@Test
	public void testInsertVisitNumber() {
		VisitnumberVo visitnumberVo = new VisitnumberVo(0, 2022, 06, 22, null, 1);
		boolean result = visitNumberDao.insertVisitNumber(visitnumberVo);
		System.out.println("VisitNumberDaoTest, testInsertVisitNumber, result : " + result);
	}
	
	// 이번 달 방문 유저 수 조회 테스트
	@Test
	public void testSelectMonthVisitNumber() {
		VisitnumberVo visitnumberVo = new VisitnumberVo();
		visitnumberVo.setYear(2022);
		visitnumberVo.setMonth(6);
		int visit_number = visitNumberDao.selectMonthVisitNumber(2022, 6);
		System.out.println("VisitNumberDaoTest, testSelectMonthVisitNumber, visit_number : " + visit_number);
	}
	
	// 오늘 방문 유저 수 조회
	@Test 
	public void testSelectTodayVisitNumber() {
		VisitnumberVo visitnumberVo = new VisitnumberVo();
		visitnumberVo.setYear(2022);
		visitnumberVo.setMonth(6);
		visitnumberVo.setDay(22);
		int visit_number = visitNumberDao.selectTodayVisitNumber(2022, 6, 22);
		System.out.println("VisitNumberDaoTest, testSelectTodayVisitNumber, visit_number : " + visit_number);
	}
	
	// 당일 방문 유저 수 정보 생성 여부 확인 테스트
	@Test
	public void testIsTodayVisitNumberCreated() {
		boolean result = visitNumberDao.isTodayVisitNumberCreated(2022, 6, 22);
		System.out.println("VisitNumberDaoTest, testIsTodayVisitNumberCreated, result : " + result);
	}
	
	// 방문자수 증가
	@Test
	public void testUpdateVisitNumber() {
		boolean result = visitNumberDao.updateVisitNumber(2022, 06, 22);
		System.out.println("VisitNumberDaoTest, testUpdateVisitNumber, result : " + result);
	}
	
}