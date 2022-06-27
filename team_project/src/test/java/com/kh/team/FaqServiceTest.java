
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
import com.kh.team.service.FaqService;
import com.kh.team.vo.FaqVo;
import com.kh.team.vo.UserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class FaqServiceTest {
	@Autowired
	FaqService faqService;
	
	// FAQ 추가 테스트
	@Test
	public void testAddFAQ() {
		FaqVo faqVo = new FaqVo(223456, "테스트3", "테스트3", null, null, "T");
		boolean result = faqService.addFAQ(faqVo);
		System.out.println("FaqServiceTest, testAddFAQ, result : " + result);
	}
	
	// FAQ 목록 조회 테스트
	@Test
	public void testGetFAQList() {
		List<FaqVo> faqList = faqService.getFAQList(null);
		for(FaqVo faqVo : faqList) {
			System.out.println("FaqServiceTest, testGetFAQList, faqVo : " + faqVo);
		}
	}
	
	// FAQ 목록 수 조회 테스트
	@Test
	public void testGetCountFAQList() {
		int count = faqService.getCountFAQList(null);
		System.out.println("FaqServiceTest, testGetCountFAQList, count : " + count);
	}
	
	// 모든 FAQ 목록 조회 테스트
	@Test
	public void testGetAllFAQList() {
		List<FaqVo> faqList = faqService.getAllFAQList(null);
		for(FaqVo faqVo : faqList) {
			System.out.println("FaqServiceTest, testGetAllFAQList, faqVo : " + faqVo);
		}
	}
	
	// 모든 FAQ 목록 수 조회 테스트
	@Test
	public void testGetCountAllFAQList() {
		int count = faqService.getCountAllFAQList(null);
		System.out.println("FaqServiceTest, testGetCountAllFAQList, count : " + count);
	}
	
	// FAQ 번호 존재 확인 테스트
	@Test
	public void testIsFaqnoExist() {
		boolean result = faqService.isFaqnoExist(123456);
		System.out.println("FaqServiceTest, testIsFaqnoExist, result : " + result);
	}
	
	// FAQ 수정 테스트
	@Test
	public void testModifyFAQ() {
		FaqVo faqVo = new FaqVo(223456, "테스트4", "테스트4", null, null, "T");
		boolean result = faqService.modifyFAQ(faqVo);
		System.out.println("FaqServiceTest, testModifyFAQ, result : " + result);
	}
	
	// FAQ 삭제 테스트
	@Test
	public void testDeleteFAQ() {
		boolean result = faqService.deleteFAQ(223456);
		System.out.println("FaqServiceTest, testDeleteFAQ, result : " + result);
	}
	
	
}