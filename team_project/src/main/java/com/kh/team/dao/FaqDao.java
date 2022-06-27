package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.FaqVo;
import com.kh.team.vo.PagingDto;

public interface FaqDao {
	// FAQ 추가
	public boolean insertFAQ(FaqVo faqVo);
	// FAQ 목록 조회
	public List<FaqVo> selectFAQList(PagingDto pagingDto);
	// FAQ 목록 수 조회
	public int getCountFAQList(PagingDto pagingDto);
	// 모든 FAQ 목록 조회
	public List<FaqVo> selectAllFAQList(PagingDto pagingDto);
	// 모든 FAQ 목록 수 조회
	public int getCountAllFAQList(PagingDto pagingDto);
	// FAQ 번호로 FAQ 내용 조회
	public FaqVo selectFAQListByFaqno(int faqno);
	// FAQ 수정
	public boolean updateFAQ(FaqVo faqVo);
	// FAQ 삭제
	public boolean deleteFAQ(int faqno);
}
