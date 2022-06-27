package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.FaqVo;
import com.kh.team.vo.PagingDto;

public interface FaqService {
	// FAQ 추가
	public boolean addFAQ(FaqVo faqVo);
	// FAQ 목록 조회
	public List<FaqVo> getFAQList(PagingDto pagingDto);
	// FAQ 목록 수 조회
	public int getCountFAQList(PagingDto pagingDto);
	// 모든 FAQ 목록 조회
	public List<FaqVo> getAllFAQList(PagingDto pagingDto);
	// 모든 FAQ 목록 수 조회
	public int getCountAllFAQList(PagingDto pagingDto);
	// FAQ 번호 존재 확인
	public boolean isFaqnoExist(int faqno);
	// FAQ 수정
	public boolean modifyFAQ(FaqVo faqVo);
	// FAQ 삭제
	public boolean deleteFAQ(int faqno);
}
