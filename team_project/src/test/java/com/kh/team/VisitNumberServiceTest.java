
package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.UserDao;
import com.kh.team.dao.VisitNumberDao;
import com.kh.team.service.VisitNumberService;
import com.kh.team.vo.UserVo;
import com.kh.team.vo.VisitnumberVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class VisitNumberServiceTest {
	@Autowired
	VisitNumberService visitNumberService;
	
	// 방문자수 내역 추가 테스트
	@Test
	public void testAddVisitNumberHistory() {
		VisitnumberVo visitnumberVo = new VisitnumberVo(0, 2022, 06, 22, null, 1);
		boolean result = visitNumberService.addVisitNumberHistory(visitnumberVo);
		System.out.println("VisitNumberServiceTest, testInsertVisitNumber, result : " + result);
	}
	
	// 이번 달 방문 유저 수 조회 테스트
	@Test
	public void testGetMonthVisitNumbe() {
		int visit_number = visitNumberService.getMonthVisitNumber(2022, 6);
		System.out.println("VisitNumberServiceTest, testGetMonthVisitNumber, visit_number : " + visit_number);
	}
	
	// 오늘 방문 유저 수 조회
	@Test 
	public void testGetTodayVisitNumber() {
		int visit_number = visitNumberService.getTodayVisitNumber(2022, 6, 23);
		System.out.println("VisitNumberServiceTest, testGetTodayVisitNumber, visit_number : " + visit_number);
	}

	// 당일 방문 유저 수 정보 생성 여부 확인 테스트
	@Test
	public void testIsTodayVisitNumberCreated() {
		boolean result = visitNumberService.isTodayVisitNumberCreated(2022, 6, 22);
		System.out.println("VisitNumberServiceTest, testIsTodayVisitNumberCreated, result : " + result);
	}	
	
	// 방문자수 증가
	@Test
	public void testPlusVisitNumber() {
		boolean result = visitNumberService.plusVisitNumber(2022, 6, 22);
		System.out.println("VisitNumberServiceTest, testPlusVisitNumber, result : " + result);
	}
	
}