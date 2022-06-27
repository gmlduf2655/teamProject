package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.FaqVo;
import com.kh.team.vo.PagingDto;

@Repository
public class FaqDaoImpl implements FaqDao {
	private final String NAMESPACE = "com.kh.team.mappers.faq.";

	@Autowired
	SqlSession sqlSession;
	
	// FAQ 추가
	@Override
	public boolean insertFAQ(FaqVo faqVo) {
		int count = sqlSession.insert(NAMESPACE + "insertFAQ", faqVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// FAQ 목록 조회
	@Override
	public List<FaqVo> selectFAQList(PagingDto pagingDto) {
		List<FaqVo> faqList = sqlSession.selectList(NAMESPACE + "selectFAQList", pagingDto);
		return faqList;
	}
	
	// FAQ 목록 수 조회
	@Override
	public int getCountFAQList(PagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCountFAQList", pagingDto);
		return count;
	}
	
	// 모든 FAQ 목록 조회
	@Override
	public List<FaqVo> selectAllFAQList(PagingDto pagingDto) {
		List<FaqVo> faqList = sqlSession.selectList(NAMESPACE + "selectAllFAQList", pagingDto);
		return faqList;
	}
	
	// 모든 FAQ 목록 수 조회
	@Override
	public int getCountAllFAQList(PagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCountAllFAQList", pagingDto);
		return count;
	}

	// FAQ 번호로 FAQ 내용 조회
	@Override
	public FaqVo selectFAQListByFaqno(int faqno) {
		FaqVo faqVo = sqlSession.selectOne(NAMESPACE + "selectFAQListByFaqno", faqno);
		return faqVo;
	}

	// FAQ 수정
	@Override
	public boolean updateFAQ(FaqVo faqVo) {
		int count = sqlSession.update(NAMESPACE + "updateFAQ", faqVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// FAQ 삭제 
	@Override
	public boolean deleteFAQ(int faqno) {
		int count = sqlSession.delete(NAMESPACE + "deleteFAQ", faqno);
		if(count > 0) {
			return true;
		}
		return false;
	}

}
