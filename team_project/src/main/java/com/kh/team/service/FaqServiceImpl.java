package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.FaqDao;
import com.kh.team.vo.FaqVo;
import com.kh.team.vo.PagingDto;

@Service
public class FaqServiceImpl implements FaqService {

	@Autowired
	FaqDao faqDao;
	
	// FAQ 추가
	@Override
	public boolean addFAQ(FaqVo faqVo) {
		boolean result = faqDao.insertFAQ(faqVo);
		return result;
	}

	// FAQ 목록 조회
	@Override
	public List<FaqVo> getFAQList(PagingDto pagingDto) {
		List<FaqVo> faqList = faqDao.selectFAQList(pagingDto);
		return faqList;
	}
	
	// FAQ 목록 수 조회
	@Override
	public int getCountFAQList(PagingDto pagingDto) {
		int count = faqDao.getCountFAQList(pagingDto);
		return count;
	}
	
	// 모든 FAQ 목록 조회
	@Override
	public List<FaqVo> getAllFAQList(PagingDto pagingDto) {
		List<FaqVo> faqList = faqDao.selectAllFAQList(pagingDto);
		return faqList;
	}
	
	// 모든 FAQ 목록 수 조회
	@Override
	public int getCountAllFAQList(PagingDto pagingDto) {
		int count = faqDao.getCountAllFAQList(pagingDto);
		return count;
	}
	
	// FAQ 번호 존재 확인
	@Override
	public boolean isFaqnoExist(int faqno) {
		FaqVo faqVo = faqDao.selectFAQListByFaqno(faqno);
		if(faqVo != null) {
			return true;
		}
		return false;
	}

	// FAQ 수정
	@Override
	public boolean modifyFAQ(FaqVo faqVo) {
		boolean result = faqDao.updateFAQ(faqVo);
		return result;
	}

	// FAQ 삭제
	@Override
	public boolean deleteFAQ(int faqno) {
		boolean result = faqDao.deleteFAQ(faqno);
		return result;
	}

	// FAQ 다중 삭제
	@Override
	public boolean multiDeleteFAQ(List<Integer> list) {
		boolean result = faqDao.multiDeleteFAQ(list);
		return result;
	}
	
	// FAQ 다중 비공개
	@Override
	public boolean multiCloseFAQ(List<Integer> list) {
		boolean result = faqDao.multiCloseFAQ(list);
		return result;
	}

}
