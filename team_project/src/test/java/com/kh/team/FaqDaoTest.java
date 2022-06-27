
package com.kh.team;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.FaqDao;
import com.kh.team.dao.UserDao;
import com.kh.team.vo.FaqVo;
import com.kh.team.vo.UserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class FaqDaoTest {
	@Autowired
	FaqDao faqDao;
	
	// FAQ 추가 테스트
	@Test
	public void testInsertFAQ() {
		FaqVo faqVo = new FaqVo(123456, "테스트", "테스트", null, null, "T");
		boolean result = faqDao.insertFAQ(faqVo);
		System.out.println("FaqDaoTest, testInsertFAQ, result : " + result);
	}
	
	// FAQ 목록 조회 테스트
	@Test
	public void testSelectFAQList() {
		List<FaqVo> faqList = faqDao.selectFAQList(null);
		for(FaqVo faqVo : faqList) {
			System.out.println("FaqDaoTest, testSelectFAQList, faqVo : " + faqVo);
		}
	}
	
	// FAQ 목록 수 테스트
	@Test
	public void testGetCountFAQList() {
		int count = faqDao.getCountFAQList(null);
		System.out.println("FaqDaoTest, testGetCountFAQList, count : " + count);
	}
	
	// 모든 FAQ 목록 조회 테스트
	@Test
	public void testSelectAllFAQList() {
		List<FaqVo> faqList = faqDao.selectAllFAQList(null);
		for(FaqVo faqVo : faqList) {
			System.out.println("FaqDaoTest, testAllSelectFAQList, faqVo : " + faqVo);
		}
	}
	
	// 모든 FAQ 목록 수 테스트
	@Test
	public void testGetCountAllFAQList() {
		int count = faqDao.getCountAllFAQList(null);
		System.out.println("FaqDaoTest, testGetCountAllFAQList, count : " + count);
	}
	
	// FAQ 번호로 FAQ 내용 조회 테스트
	@Test
	public void testSelectFAQListByFaqno() {
		FaqVo faqVo = faqDao.selectFAQListByFaqno(123456);
		System.out.println("FaqDaoTest, testSelectFAQListByFaqno, faqVo : " + faqVo);
	}
	
	// FAQ 수정 테스트
	@Test
	public void testUpdateFAQ() {
		FaqVo faqVo = new FaqVo(123456, "테스트2", "테스트2", null, null, "T");
		boolean result = faqDao.updateFAQ(faqVo);
		System.out.println("FaqDaoTest, testUpdateFAQ, result : " + result);
	}
	
	// FAQ 삭제 테스트
	@Test
	public void testDeleteFAQ() {
		boolean result = faqDao.deleteFAQ(123456);
		System.out.println("FaqDaoTest, testDeleteFAQ, result : " + result);
	}
	
	
}